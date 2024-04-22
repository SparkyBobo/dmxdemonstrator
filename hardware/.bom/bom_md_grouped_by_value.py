#
# Example python script to generate a BOM from a KiCad generic netlist
#
# Example: Sorted and Grouped bomContent BOM
#
"""
    @package
    Generate a bomContent BOM list.
    Components are sorted by ref and grouped by value
    Fields are (if exist)
    Ref, Quantity, Value, Part, Datasheet, Description, Vendor

    Command line:
    python "pathToFile/bom_html_grouped_by_value.py" "%I" "%O"
"""

from __future__ import print_function

# Import the KiCad python helper module
import kicad_netlist_reader
import sys
import json

# Start with a basic md template
bomContent = """
# Bill Of Materials (BOM)

## Schematic

**Filename:** <!--SOURCE-->

**Date Modified:** <!--DATE-->

**Kicad Version:** <!--TOOL-->

**Component Count:** <!--COMPCOUNT-->

## Components

Item#|Quantity|Reference|Description|Manufacturer|Part Number|Datasheet|Notes
-----|--------|---------|-----------|------------|-----------|---------|-----
<!--BOMROW-->
"""

# Start with a basic md template
partsContent = """
# Parts List

## Schematic

**Filename:** <!--SOURCE-->

**Date Modified:** <!--DATE-->

**Kicad Version:** <!--TOOL-->

**Component Count:** <!--COMPCOUNT-->

## Parts

<!--VENDORLIST-->
"""

vendorContent = """
### <!--VENDOR-->

Reference|Description|Supplier|Part Number|Quantity|Link|Notes
---------|-----------|--------|-----------|--------|----|-----
<!--PARTROW-->
"""

# Read the parts file
partsPath = sys.path[0] + '\\parts.json'
with open(partsPath) as partsFile:
  partsLibrary = json.load(partsFile)
partDefinitions = dict((p['id'], p) for p in partsLibrary['parts'])
partReferencesOrdered = []
partReferencesById = dict((p['id'], '') for p in partsLibrary['parts'])
partVendorsOrdered = []
partsListByVendor = {}

# Generate an instance of a generic netlist, and load the netlist tree from
# the command line option. If the file doesn't exist, execution will stop
net = kicad_netlist_reader.netlist(sys.argv[1])
components = net.getInterestingComponents()

# Output a set of bomRows for a header providing general information
bomContent = bomContent.replace('<!--SOURCE-->', net.getSource())
bomContent = bomContent.replace('<!--DATE-->', net.getDate())
bomContent = bomContent.replace('<!--TOOL-->', net.getTool())
bomContent = bomContent.replace('<!--COMPCOUNT-->', str(len(components)))

partsContent = partsContent.replace('<!--SOURCE-->', net.getSource())
partsContent = partsContent.replace('<!--DATE-->', net.getDate())
partsContent = partsContent.replace('<!--TOOL-->', net.getTool())
partsContent = partsContent.replace('<!--COMPCOUNT-->', str(len(components)))

# Now see if we can find the PCB info from the title block
title = net.getTitle()
titleParts = title.split('DMX-')
boardName = str(titleParts[len(titleParts)-1])[:-1]
revision = net.getRev()
boardId = 'PCB_' + boardName + '_' + revision.replace('.','_')
pcbDefinition = partDefinitions[boardId]
partReferencesOrdered.append(boardId)
partReferencesById[boardId] = 'PCB'
vendorInfo = pcbDefinition['vendors'][0]

# Add a bom row for the board
bomRow = '1|1|PCB'
bomRow += '|' + pcbDefinition['description']
bomRow += '|' + pcbDefinition['mfg']
bomRow += '|' + pcbDefinition['mfgNumber']
bomRow += '||[Order](' + pcbDefinition['vendors'][0]['link'] + ')|'
bomContent = bomContent.replace('<!--BOMROW-->', bomRow + '\n<!--BOMROW-->')

# Save a reference for the board manufacturer
#partRow = 'PCB'
#partRow += '|' + pcbDefinition['description']
#partRow += '|' + pcbDefinition['mfg']
#partRow += '|' + pcbDefinition['mfgNumber']
#partRow += '|1|[Order](' + pcbDefinition['vendors'][0]['link'] + ')|'
#partsListByVendor[vendorInfo['vendor']] = vendorContent.replace('<!--VENDOR-->',vendorInfo['vendor'])
#partsListByVendor[vendorInfo['vendor']] = partsListByVendor[vendorInfo['vendor']].replace('<!--PARTROW-->', partRow + '\n<!--PARTROW-->')

# Get all of the components in groups of matching parts + values
# (see kicad_netlist_reader.py)
grouped = net.groupComponents(components)

# Output all of the component information
itemNumber = 2 # PCB is 1
for group in grouped:
    refs = ''

    # Add the reference of every component in the group and keep a reference
    # to the component so that the other data can be filled in once per group
    partIds = ""
    partRefs = ""
    partCount = 0
    component = None
    for c in group:
        if len(refs) > 0:
            refs += ', '
        refs += c.getRef()
        if (len(c.getField('PartId')) > 0):
            component = c
            partIds = c.getField('PartId')
            partCount += 1
            if len(partRefs) > 0:
                partRefs += ', '
            partRefs += c.getRef()

    # Lookup the part in parts.json
    if (len(partIds) >= 1):

        # Loop over part ids
        for partId in partIds.split(','):

            # Add to list of ordered part ids
            if (partId not in partReferencesOrdered):
                partReferencesOrdered.append(partId)

            # Add to list of parts by id.  Some parts may share the same id but not
            # the same value (like LEDs) so grouped = net.groupComponents(components)
            # does not group them.
            if (len(partReferencesById[partId]) > 0):
                partReferencesById[partId] += ', ' + partRefs
            else:
                partReferencesById[partId] = partRefs

            # Start the bomRow with an item number, quantity, and list of references.
            quantity = str(partCount)
            bomRow = str(itemNumber) + '|' + quantity +'|' + partRefs      

            # Get the value and description from the schematic
            partDefinition = partDefinitions[partId]
            bomRow += '|' + partDefinition['description']
            bomRow += '|' + partDefinition['mfg']
            bomRow += '|' + partDefinition['mfgNumber']

            # Include a datasheet link of there is one.
            # Sometime datasheet has '~' instead of an empty string.
            datasheet = component.getDatasheet()
            if ('datasheet' in partDefinition) and (len(partDefinition['datasheet']) > 1): 
                datasheet= partDefinition['datasheet']
                
            if (len(datasheet) > 1):
                datasheet = '[Data Sheet](' + datasheet + ')'
            else:
                datasheet = ''

            bomRow += '|' + datasheet

            # Notes?
            notes = ''
            if 'notes' in partDefinition:
                notes = partDefinition['notes']
            else:
                notes = ''

            bomRow += '|' + notes

            # Add BOM content
            bomContent = bomContent.replace('<!--BOMROW-->', bomRow + '\n<!--BOMROW-->')

            # Next
            itemNumber += 1

    # Skip mounting holes
    elif (refs[:2] != 'MH'):

        # Start the bomRow with an item number, quantity, and list of references.
        quantity = str(len(group))
        bomRow = str(itemNumber) + '|' + quantity +'|' + refs

        # Get the value and description from the schematic
        partValue = component.getValue()
        partDescription = component.getField('Description')
        bomRow += '|' + (partDescription if len(partDescription) > 0 else partValue)
        bomRow += '|' # + partDefinition['mfg']
        bomRow += '|' # + partDefinition['mfgNumber']

        # Include a datasheet link of there is one.
        # Sometime datasheet has '~' instead of an empty string.
        datasheet = component.getDatasheet()
        if (len(datasheet) > 1):
            datasheet = '[Data Sheet](' + datasheet + ')'
        else:
            datasheet = ''

        bomRow += '|' + datasheet

        # Add Digikey info
        vender = '|'
        dkPart = component.getField('Digi-Key_PN')
        if (len(dkPart)):
            vender += '[Digikey ' + dkPart + '](https://www.digikey.com/' + component.getField('DK_Detail_Page')+ '), '

        # Add Mouser info
        moPart = component.getField('MO_PN')
        if (len(moPart)):
            vender += '[Mouser ' + moPart + '](' + component.getField('MO_Detail_Page')+ '), '

        # Add Newark info
        nwPart = component.getField('NW_PN')
        if (len(nwPart)):
            vender += '[Newark ' + nwPart + '](' + component.getField('NW_Detail_Page')+ '), '

        # Add Sparkfun info
        spPart = component.getField('SP_PN')
        if (len(spPart)):
            vender += '[Sparkfun ' + spPart + '](' + component.getField('SP_Detail_Page')+ '), '

        # Add Adafruit info
        afPart = component.getField('AF_PN')
        if (len(afPart)):
            vender += '[Adafruit ' + afPart + '](' + component.getField('AF_Detail_Page')+ '), '

        # Notes?
        bomRow += '|' + component.getField('notes')

        # Remove trailing ', '
        #if (len(vender) > 1):
        #    bomRow += vender[:-2]

        # Add BOM content
        bomContent = bomContent.replace('<!--BOMROW-->', bomRow + '\n<!--BOMROW-->')

# Format parts list. Some parts may share the same id but not the same value (like LEDs) so
# grouped = net.groupComponents(components) does not group them. Use partReferencesById as
# a grouping by partId but use partReferencesOrdered to print them in order they were grouped.
for partId in partReferencesOrdered:
    if (len(partReferencesById[partId]) > 0):
        #print(partId + ":" + partReferencesById[partId] + '(' + str(len(partReferencesById[partId].split(','))) +')')
        totalPartCount = len(partReferencesById[partId].split(','))

        # Get the part and loop over vendors
        partDefinition = partDefinitions[partId]
        if 'vendors' in partDefinition:
            for vendor in partDefinition['vendors']:

                # Determine quantity needed, remaining
                vendorPartCount = vendor['quantity']
                vendorQuantity = totalPartCount // vendorPartCount # // is int divide, i.e., floor
                vendorQuantity += (totalPartCount % vendorPartCount > 0)
                vendorRemaining = (vendorQuantity * vendorPartCount) - totalPartCount

                partRow = partReferencesById[partId]
                partRow += '|' + partDefinition['description']
                partRow += '|' + vendor['vendor']
                partRow += '|' + vendor['vendorNumber']
                partRow += '|' + str(vendorQuantity)
                partRow += '|[Order](' + vendor['link'] + ')|'

                # Notes?
                notes = ''
                if 'notes' in vendor:
                    partRow += vendor['notes']

                # Add a note when parts of peft over
                if (vendorRemaining > 0):
                    if (vendorQuantity > 1):
                        partRow += str(vendorQuantity) + 'x '
                    partRow += 'pack of ' + str(vendorPartCount) + ', ' + str(vendorRemaining) + ' not used'

                # Track the order vendors were added.
                if (vendor['vendor']not in partVendorsOrdered):
                    partVendorsOrdered.append(vendor['vendor'])

                # Add a row for the part by vendor
                if (vendor['vendor'] not in partsListByVendor):
                    partsListByVendor[vendor['vendor']] = vendorContent.replace('<!--VENDOR-->',vendor['vendor'])
                partsListByVendor[vendor['vendor']] = partsListByVendor[vendor['vendor']].replace('<!--PARTROW-->', partRow + '\n<!--PARTROW-->')

# Now, add the parts to the parts content groups by vendor
# ordered by when they were added.
for vendor in partVendorsOrdered:
    #print(vendor + ':' + partsListByVendor[vendor])
    partsContent = partsContent.replace('<!--VENDORLIST-->', partsListByVendor[vendor] + '<!--VENDORLIST-->')

# Open a file to write to, if the file cannot be opened output to stdout instead
try:
    bomFile = open(sys.argv[2], 'w')
except IOError:
    e = 'Can''t open output file for writing: ' + sys.argv[2]
    print(__file__, ':', e, file=sys.stderr)
    bomFile = sys.stdout

# Print the formatted bomContent to the file
print(bomContent, file=bomFile)
print('BOM content written to' + sys.argv[2])

# Open a parts file to write to,
try:
    partsFile = open(sys.argv[3], 'w')
except IOError:
    e = 'Can''t open output file for writing: ' + sys.argv[3]
    print(__file__, ':', e, file=sys.stderr)
    partsFile = sys.stdout

print(partsContent, file=partsFile)
print('Parts content written to' + sys.argv[3])
