use <motor-dc-m15n.scad>
//m15n3();

motorSupport();
module motorSupport(){
	difference(){
		union(){
			//support
			linear_extrude (height=19)
                  import (file="motor-dc-m15n.dxf", layer="support", $fn=100);

			//façade
			translate([0,0,-2.99])
				linear_extrude (height=3)
                  import (file="motor-dc-m15n.dxf", layer="support-front", $fn=100);

			//barre pour accrocher capteur
			translate([0,0,-2.99])
				linear_extrude (height=3)
                  import (file="motor-dc-m15n.dxf", layer="support-capteur", $fn=100);

/*
	*No, won't be printable easily. Make two parts
			translate([0,0,-16.9])
				linear_extrude (height=15)
                  import (file="motor-dc-m15n.dxf", layer="support-capteur2", $fn=100);
*/


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