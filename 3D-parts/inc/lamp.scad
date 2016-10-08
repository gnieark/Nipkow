lamp();

module lamp(){

   linear_extrude (height=10)
       import (file="motor-dc-m15n.dxf", layer="lamp", $fn=100);
	translate([0,0,9.99])
	   linear_extrude (height=2)
       import (file="motor-dc-m15n.dxf", layer="lamp-back", $fn=100);
}