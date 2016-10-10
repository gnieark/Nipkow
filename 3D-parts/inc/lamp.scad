lamp();

lampFoot();
module lamp(){

   linear_extrude (height=12)
       import (file="motor-dc-m15n.dxf", layer="lamp", $fn=100);
	translate([0,0,9.99])
	   linear_extrude (height=2)
       import (file="motor-dc-m15n.dxf", layer="lamp-back", $fn=100);
}

module lampFoot(){
    difference(){
        linear_extrude (height=10)
               import (file="motor-dc-m15n.dxf", layer="lamp-foot", $fn=100);
        union(){
            translate([22.5,-9,5])
            rotate ([0,90,90])
             cylinder(r=1.5,h=5,$fn=100);
            
            translate([-22.5,-9,5])
            rotate ([0,90,90])
             cylinder(r=1.5,h=5,$fn=100);
        }
        
    }

}
