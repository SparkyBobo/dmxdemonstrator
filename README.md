# DMX Demonstrator

A collection of hardware projects for exploring, demonstrating, and understanding DMX512 through both programmable and discrete-logic implementations.

## Background

The DMX Demonstrator began in 1994 as a graduate-school project. My technical theater professor, Frank Silberstein, challenged me to create a device that could demonstrate how DMX works.

The original device was built entirely from discrete logic. It consisted of a transmitter and receiver connected by a three-wire cable. The transmitter had four controls, and the receiver had four dimmers. It could run at a normal operating speed or use an adjustable, much slower clock—down to 0.5 Hz—so that individual bits could be observed on the wire.

By switching between the two speeds, the device could demonstrate how data is digitized, serialized, transmitted, deserialized, and converted back into analog signals to control lighting.

My roommate Tobin and I developed the original teaching materials and lecture together, and we co-presented the project at the 1994 USITT conference in Las Vegas. The device worked, although an EPROM failure during the conference left the hardware unable to demonstrate its operation. The original device has since been lost, but the teaching materials and circuit description survived. The schematics have also been recreated in KiCad.

### The 30th Anniversary

In 2024, I revived the project with a new Arduino-based implementation. The next-generation DMX Demonstrator was presented at USITT in Seattle, marking 30 years since the original project's presentation in Las Vegas.

Tobin and I co-presented again. His contributions to the original teaching materials and lecture were an essential part of the project, and his participation made the 2024 session possible.

The revival was also an opportunity to pay tribute to Frank Silberstein, my graduate-school professor. His challenge started the original project, but his influence went far beyond that. His mentorship, teaching, and thoughtful feedback helped shape the work and the engineer I became. Frank has since passed away, and this project remains a way to recognize and thank him for the lasting impact he had on me.

Tobin's partnership was equally important to the project's history. From creating the original teaching materials and lecture to co-presenting both the 1994 and 2024 sessions, he helped make the educational vision a reality across both generations of the project.

### DMX Pro

DMX Pro began during the COVID period as a separate effort to preserve the original design and recreate it using modern components and contemporary engineering practices.

Rather than simply reproducing the original hardware, DMX Pro retains its defining philosophy: implementing the DMX transmitter and receiver using discrete logic, without relying on microprocessors or microcontrollers.

It is an opportunity to revisit the original electronics, improve the design, and build a modern interpretation of the hardware that started the project.

## Projects in This Repository

### DMX Demonstrator

The Arduino-based educational implementation. Version 1.0 has shipped and provides a practical way to demonstrate DMX transmission, reception, and the underlying data concepts.

### DMX Pro

A discrete-logic recreation of the original 1994 design. It uses modern components and updated engineering practices while retaining the original approach to implementing the protocol in hardware.

The transmitter and receiver are separate design efforts.

## Shared Ecosystem

DMX Demonstrator and DMX Pro are independent implementations within the same project ecosystem. They share components and supporting design work where practical, while pursuing different approaches to the same educational goal.

The repository preserves the history of the original project as well as the modern implementations.

## Monitoring and Visualization

A central goal of the Demonstrator concept is to make DMX operation observable. Clock and data signals can be displayed directly on hardware indicators, while serial output provides additional information for monitoring and debugging from a computer.

The intention is not just to produce DMX signals, but to make the underlying operation understandable.
