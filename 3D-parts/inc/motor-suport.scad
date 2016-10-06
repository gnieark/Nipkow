use <motor-dc-m15n.scad>
//m15n3();

motorSupport();
module motorSupport(){
	difference(){
		union(){
			linear_extrude (height=19)
                  import (file="motor-dc-m15n.dxf", layer="support", $fn=100);
			translate([0,0,-2.99])
				linear_extrude (height=3)
                  import (file="motor-dc-m15n.dxf", layer="support-front", $fn=100);
		}
		union(){
			translate([-14.8472,0,0])
				rotate([90,0,0])
					cylinder(h = 8, r = 1.5, $fn=100);

			translate([14.8472,0,0])
				rotate([90,0,0])
					cylinder(h = 8, r = 1.5, $fn=100);

			translate([-14.8472,0,16])
				rotate([90,0,0])
					cylinder(h = 8, r = 1.5, $fn=100);

			translate([14.8472,0,16])
				rotate([90,0,0])
					cylinder(h = 8, r = 1.5, $fn=100);
			
		}
	}
}