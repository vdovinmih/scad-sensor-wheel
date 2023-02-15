use <../lib/motor.scad>

module flange(print=true) {
    $fn=50;
    union(){
        difference(){
            translate([0, 0, 15+0.1]) cylinder(h = 30-0.3, d = 35, center = true, $fn=200);
            translate([0, 0, 40]) cylinder(h = 80, d = 32, center = true, $fn=200);
            //отверстие в трубе для датчика
            rotate([0,0,75])
            union(){
                x=6.5; y=40; z=14.5;
                difference(){
                    translate([-x/2,0,10]) cube([x,y,z]);
                    if(print){
                        translate([0,0,29])
                            rotate([0,45,0])
                                cube([x,y,z+10], center=true);
                        translate([0,0,29])
                            rotate([0,-45,0])
                                cube([x,y,z+10], center=true);
                    }
                }
                rotate([0,0,-30])
                hull(){
                    translate([0,0,9]) rotate([-90,0,0]) cylinder(h=40,d=3,$fn=25);
                    translate([0,0,12]) rotate([-90,0,0]) cylinder(h=40,d=3,$fn=25);
                }
            }
        };
        difference(){
            union(){
                //плита
                minkowski()
                {
                    minkowski()
                    {
                        //шаблон плиты
                        translate([0, 0, .5])
                        hull() {
                            cylinder(d = 35, h=.5);
                            union() {
                                translate([38.2/2, -8, 0])  cylinder(d=3,h=.5);
                                translate([-38.2/2, -8, 0]) cylinder(d=3,h=.5);
                                translate([0, 21, 0])  cylinder(d=3,h=.5);
                            };
                        };
                        //translate([0, 2.5, 1]) cube([43,36,1.15], center = true);
                        cylinder(h=1,r=2);
                    }
                    sphere(0.5, $fn=8);
                }
            }

            //отверстие для муфты
            translate([0,0,-.01]) cylinder(h = 10, d = 16, center = true);
            //отверстия для мотора
            rotate([0,0,180]) translate([0,0,-.2]) motor_mount_holes();            
            //отверстие для 3 точки крепления
            translate([0,21,0])
            union(){
                cylinder(d=3,h=10, center=true);
                //фаска
                translate([0,0,-.5])  cylinder(d1=0, d2=6,h=3);
            };

            //отверстие для проводов датчика
            translate([-7,9,0])
            union(){
                rotate([0,0,39-90])
                hull(){
                    translate([0, -1, 0]) cylinder(h=70, d=4, center = true);
                    translate([0, 1, 0]) cylinder(h=70, d=4, center = true);
                };
            };
        };
    };
};

module flange_holes() {
    $fn=50;
    //отверстие для 3 точки крепления
    translate([0,21,0]) union(){
        cylinder(d=3,h=10, center=true);
        //фаска
        translate([0,0,-.5])  cylinder(d1=0, d2=6,h=3);
    };
    //отверстие для проводов датчика
    translate([-7,9,0]) union(){
        //отверстие для проводов датчика
        rotate([0,0,39-90])
        hull(){
            translate([0, -1, 0]) cylinder(h=70, d=4, center = true);
            translate([0, 1, 0]) cylinder(h=70, d=4, center = true);
        };
    };


};

flange();
// flange_holes();
//translate([0,30,0]) cylinder(h=2.5,d=10);
//rotate([0,0,75]) translate([0,20,0]) cylinder(h=2.5+7.5,d=10);
//rotate([0,0,180]) motor();