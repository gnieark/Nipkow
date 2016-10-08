use <inc/motor-dc-m15n.scad>
m15n3();
use <inc/motor-suport.scad>
motorSupport();
use <inc/disque.scad>
translate([0,0,-17]) disque();
use <inc/fix-disque.scad>
translate([0,0,-10.5])fixAxis();

use <inc/lamp.scad>
translate([0,0,-14])lamp();

//bolitier alim atx 85 x 140 x 150 mm
	translate ([-70,-158,-3])
	cube(size = [140,150,85], center = false);
