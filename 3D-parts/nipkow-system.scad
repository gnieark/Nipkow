use <inc/motor-dc-m15n.scad>
m15n3();
use <inc/motor-suport.scad>
motorSupport();
use <inc/disque.scad>
translate([0,0,-17]) disque();
use <inc/fix-disque.scad>
translate([0,0,-10.5])fixAxis();
