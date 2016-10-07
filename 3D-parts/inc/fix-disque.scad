fixAxis();

module fixAxis(){
		difference(){
			union(){
				translate([0,0,-2.99])
          		linear_extrude (height=3)
                  import (file="motor-dc-m15n.dxf", layer="fixation-axe2", $fn=100);
			
          linear_extrude (height=10)
                  import (file="motor-dc-m15n.dxf", layer="fixation-axe", $fn=100);
			}
			union(){
				
				translate([0,-11,5])
					rotate([270,0,0])
					cylinder(r=1.5,h=22,$fn=100);
			}
	}
}