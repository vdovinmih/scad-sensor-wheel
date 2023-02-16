use <print/flange.scad>
use <lib/motor.scad>
use <lib/controller.scad>
use <print/body_1.scad>
use <print/body_2.scad>
use <print/sensor_wheel.scad>
use <print/clutch.scad>
use <print/screw.scad>
use <print/ring.scad>

if(0) difference(){
    translate([0,0,36+8]) ring();
    translate([-45/2,0,40]) color([.9,.3,.1]) cube([45,95,200], center = true);
}

if(0) difference(){
    translate([0,0,36]) screw();
    translate([-45/2,0,100]) color([.9,.3,.1]) cube([45,95,200], center = true);
}

if(0) difference(){
    translate([0,0,36])
        rotate([0,180,0])
            union(){
                sensor_wheel();
                clutch();
            }
    //translate([-45/2,0,0]) color([.9,.3,.1]) cube([45,95,200], center = true);
}

// #translate([0,0,15.5]) motor();
#translate([-20.1,-15,14]) rotate([90,180,180]) controller();
if(0) difference(){
    rotate([0,0,180]) translate([0, 0, 17.5+0.01]) flange(print=false);
    translate([-45/2,0,0]) color([.9,.3,.1]) cube([45,95,100], center = true);
    //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    //translate([45/2 + 24,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
}


difference(){
    //translate([0,0,4])
        body_1();
    //translate([-45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    //translate([45/2 + 24,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
}


if(0) difference(){
    body_2();
    translate([-45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
//    translate([45/2 + 24,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
}

//translate([40,0,0]) cylinder(h=35,d=10,center=true);