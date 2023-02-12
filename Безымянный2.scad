use <flange.scad>
use <motor.scad>
use <controller.scad>

#translate([0,0,13.5]) motor();
#translate([-24,-15,14]) rotate([90,180,180]) controller();
#rotate([0,0,180]) translate([0, 0, 50+0.01]) flange();

body_1();

module body_1() {
    $fn=50;
    difference() {
        
        union(){
            difference() {
                minkowski(){ 
                    cube([60,48,27.4], center = true);
                    sphere(2, $fn=8);
                };
                minkowski(){ 
                    cube([56,44,23.4], center = true);
                    sphere(2, $fn=8);
                };
            };
            translate([14,36.5,0]) cylinder(h = 52, d = 10, center = true);
            translate([14,-36.5,0]) cylinder(h = 52, d = 10, center = true);
            translate([-14,-36.5,0]) cylinder(h = 52, d = 10, center = true);
            translate([-14,36.5,0]) cylinder(h = 52, d = 10, center = true);
        };
        //половиним корпус
        translate([0,0,-55/2]) color([.9,.3,.1]) cube([90,95,55], center = true);

        //отверстие под вал мотор-редуктора
        //translate([0,-1,25]) cylinder(h = 10, d = 9, center = true);


        //отверстия под головки винтов крепления половинок корпуса
        translate([14,36.5,30.749]) cylinder(h = 48, d = 7, center = true);
        translate([14,-36.5,30.749]) cylinder(h = 48, d = 7, center = true);
        translate([-14,-36.5,30.749]) cylinder(h = 48, d = 7, center = true);
        translate([-14,36.5,30.749]) cylinder(h = 48, d = 7, center = true);

        //фаски 45 под головки винтов
        translate([14,36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);
        translate([-14,36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);
        translate([14,-36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);
        translate([-14,-36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);


        //отверстия под винты крепления половинок корпуса
        translate([14,36.5,0]) cylinder(h = 52, d = 2.3, center = true);
        translate([14,-36.5,0]) cylinder(h = 52, d = 2.3, center = true);
        translate([-14,-36.5,0]) cylinder(h = 52, d = 2.3, center = true);
        translate([-14,36.5,0]) cylinder(h = 52, d = 2.3, center = true);

        //отверстия под винты крепления мотор-редуктора
/*
        translate([0,-24,50])
            translate([0,13,-24.5])
                rotate([180,0,-90])
        union(){
            translate([-9.88 -8.8, -9.5,-10]) cylinder(d=2.5,h=30);
            translate([-9.88 -8.8, 9.5,-10]) cylinder(d=2.5,h=30);
            translate([-9.88 -8.8 +28, 9.5,-10]) cylinder(d=2.5,h=30);
            translate([-9.88 -8.8 +28, -9.5,-10]) cylinder(d=2.5,h=30);
        };
*/
        //разъёмная вырезка
/*        
        translate([0,0,-23]) 
            minkowski(){ 
                cube([31,77,47], center = true);
                sphere(2, $fn=8);
            };
*/

        //щели для вентиляции
/*
        translate([0, 18.5, 45]) union(){
            translate([0, 0, 0]) cube([30,2,50], center = true);
            translate([0, 4, 0]) cube([30,2,50], center = true);
            translate([0, 8, 0]) cube([30,2,50], center = true);
            translate([0, 12, 0]) cube([30,2,50], center = true);
        }
*/
        
        //отверстие для проводов датчика
/*
        hull(){
            translate([0, 13, -10]) cylinder(h=70, d=4);
            translate([0, 12, -10]) cylinder(h=70, d=4);
        };
*/
        //отверстие для ножки мотора
//        translate([0, -12.5, -10]) cylinder(h=70, d=4);

           
        //debug
        //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
        //translate([45/2 +14,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
          
    };
    
};

