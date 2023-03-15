use <bunker.scad>
use <tube.scad>
use <body_1.scad>
use <flange.scad>
$fn = 200;
difference(){
    translate([0,0,-62.4])
    union(){
        difference(){
            translate([0,30,20 + 2.5 ]) cylinder(h=20,d=20,center=true);
            translate([0, -43.5 , -27.2+32.3/2 - 8.3 + 62.4])
                rotate([-90,0,0]) cylinder(h=125,d=32.3); //tube();
        }

        difference(){
            translate([0,-30,20 + 2.5 ]) cylinder(h=20,d=20,center=true);
            translate([0, -46 , -27.2+32.3/2 - 8.3 +62.4])
                rotate([90,0,180])
                    translate([0, 0, 15+0.1])
                        cylinder(h = 30-0.3, d = 35+0.43, center = true, $fn=200); // flange(print=false);
        }


        translate([60,60,20]) cylinder(h=15,d=15,center=true);
        hull(){
            translate([60,60,20 -13/2 ]) cylinder(h=2,d=15,center=true);
            translate([0,30,20 -13/2 ]) cylinder(h=2,d=25,center=true);
        }
        translate([60,60,20]) cylinder(h=15,d=15,center=true);


        translate([-60,60,20]) cylinder(h=15,d=15,center=true);
        hull(){
            translate([-60,60,20 -13/2 ]) cylinder(h=2,d=15,center=true);
            translate([0,30,20 -13/2 ]) cylinder(h=2,d=25,center=true);
        }

        translate([60,-60,20]) cylinder(h=15,d=15,center=true);
        hull(){
            translate([60,-60,20 -13/2 ]) cylinder(h=2,d=15,center=true);
            translate([0,-30,20 -13/2 ]) cylinder(h=2,d=25,center=true);
        }

        translate([-60,-60,20]) cylinder(h=15,d=15,center=true);
        hull(){
            translate([-60,-60,20 -13/2 ]) cylinder(h=2,d=15,center=true);
            translate([0,-30,20 -13/2 ]) cylinder(h=2,d=25,center=true);
        }

        hull(){
            translate([0,30,20 -13/2 ]) cylinder(h=2,d=25,center=true);
            translate([0,-30,20 -13/2 ]) cylinder(h=2,d=25,center=true);
        }

    }
    translate([60,60,20+0.2]) cylinder(h=140,d=10,center=true);
    translate([60,-60,20+0.2]) cylinder(h=140,d=10,center=true);
    translate([-60,60,20+0.2]) cylinder(h=140,d=10,center=true);
    translate([-60,-60,20+0.2]) cylinder(h=140,d=10,center=true);
}
