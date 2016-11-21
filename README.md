# collimating-filter

Improve the resolution of photoresist PCBs using collimated (parallel) light rays. This filter fits cheap UV nail lamps available on eBay.

The standard design of the filter is named filter.stl (filter module in the OpenSCAD file).

r1dfilter.stl is the part optimised for printing on a Replicator (fitting the build spaced and using only one pass with the nozzle for the honeycomb walls).

*fillerfilter.stl is the recommended part to use*. It's simply a cube with the mounting grooves cut out; the honeycomb structure should be created using the slicing software.

In slic3r this is done by choosing 10% honeycomb infill, and setting the number of horizontal shells to 0. This massively reduces print time and complexity of the gcode. It results in a slightly worse quality print but will work exactly the same.
