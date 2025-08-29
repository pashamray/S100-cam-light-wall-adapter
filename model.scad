include <BOSL2/std.scad>
include <BOSL2/screws.scad>

$fn=50;

diff()
    cyl(l=10, d=140, chamfer2=8, orient=UP)
    attach(TOP)
        union() {
            rot_copies(n=4)
                translate([29.5, 0, 0]) 
                    screw_hole("M3,10", head="flat", counterbore=2, anchor=TOP);

            rot_copies(n=4)
                translate([41.25, 0, 0])
                    tag("remove") cyl(l=11, d=3.5, anchor=TOP);

            rot_copies(n=4, sa=45)
                translate([44, 0, 0])
                    tag("remove") cyl(l=11, d=3.5, anchor=TOP);

            tag("remove") cyl(l=10, d=45, , anchor=TOP);
        }