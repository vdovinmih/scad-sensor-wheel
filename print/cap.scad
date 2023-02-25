include<../lib/ISOThreadUM2.scad>

$fn=200;
//cylinder(h=25,d=9.5);
//thread_out_pitch(10,16,.5);



if(1) // cap
difference(){
    union(){
        if(1) difference(){
            union(){
                translate([0,0,0]) cylinder(h=2,d=36);
                translate([0,0,2]) cylinder(h=10,d=32.3-4);
            }
            translate([0,0,-1])cylinder(h=14,d=10+0.1, $fn=100);
        }
        translate([0,0,0.1])    thread_in_pitch(10,12,1.5);
    }
    //translate([-10,0,10-0.1]) color("red") cube([20,40,20], center=true);
}

if(1) //nut
translate([0,0,13.5])
difference(){
    union(){
        difference(){
            translate([0,0,0]) cylinder(h=5,d=17.8, $fn=6);
            translate([0,0,-1])cylinder(h=14,d=10+0.1);
        }
        translate([0,0,0.1])    thread_in_pitch(10,5.5,1.5);
    }
    //translate([-10,0,10-0.1]) color("red") cube([20,40,20], center=true);
}


if(1) //axis
difference(){
    union(){
        translate([0,0,-1])cylinder(h=25,d=10-1.5);
        translate([0,0,0.1])    thread_out_pitch(10+0.1,23,1.5);
        translate([0,0,24-0.01]) cylinder(h=4, d1=8,d2=0);
        
    }
    //translate([-10,0,10-0.1]) color("red") cube([20,40,20], center=true);
}

