# DMX Demonstrator

## Background

When I was in grad school, I was challenged by my technical theater professor to create a device to demonstrate DMX. What we devised was a transmitter receiver pair with 4 controls and 4 dimmers and the pair was linked by a three-wire cable. The transmitter had a fixed clock that could run at reasonable fast, xxkHz, and a variable clock that could be adjusted down to 0.5 hZ. By switching back and forth, you could toggle between "real-time" updates and a slow pace that can be used to see each bit on the wire. We then built a lecture around how the data was digitized, serialized, de-serialized, and converted back to analog to control the dimmers.

The device was built and did function even though it failed to follow a number of best engineering practices. At that time, we didn't have GitHub and Tindie so sharing the project was by word-of-mouth and email; yes, we did have email. Only one other group considered building a replica but alas they never did. The device was built only once and transported to a USITT conference in Las Vegas, where the EPROM failed and we had nothing to show except a presentation. Only a handful of students at my school ever got to see it function.

That was 25 years ago. For it's anniversary, I've decided to revive the project and build 2 new implementations. The first is based on Arduino for a cheap but functional version of the project that is unlikely to fail or break the bank. The second is an updated recreation of the original using today's available hardware but without deviating from the original TTL-based design, i.e. no microprocessors or microcontrollers. I'll admit this last one is really just for me because I love designing electronics, drawing schematics, laying out PCBs, and assembling electronics.

## Artifacts

These are the original digital artifacts we created in 1994 for the DMX Demonstrator. The are preserved here for posterity.

The schematics were original drawn in Autocad but the files have been lost. The paper copy was not lost, the PDFs are a scan of those documents.