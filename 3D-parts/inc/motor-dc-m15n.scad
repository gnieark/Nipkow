m15n3();
module m15n3(){
    difference(){
        union(){
            linear_extrude (height=19)
                  import (file="motor-dc-m15n.dxf", layer="0", $fn=100);
            translate([0,0,-1.5])
                linear_extrude (height=21)
                  import (file="motor-dc-m15n.dxf", layer="1", $fn=100); 
             translate([0,0,-7.6])
                linear_extrude (height=41)
                  import (file="motor-dc-m15n.dxf", layer="2-axis", $fn=100);
              translate([0,0,18.9])
                linear_extrude (height=3.1)
                  import (file="motor-dc-m15n.dxf", layer="back-elec", $fn=100);  
        } 
        translate([0,0,-0.1])
                linear_extrude (height=5)
                  import (file="motor-dc-m15n.dxf", layer="screws-holes", $fn=100); 
    }
}