use <flange.scad>
use <../lib/motor.scad>
use <../lib/controller.scad>

//#translate([0,0,15.5]) motor();
//#translate([-20.5,-15,14]) rotate([90,180,180]) controller();
//rotate([0,0,180]) translate([0, 0, 17.5+0.01]) flange(print=false);

difference(){
    body_1();
    translate([0,0,15.5]) motor();
}

//cylinder(h=32,d=10,center=true);

module body_1() {
    $fn=50;
    difference() {
        
        union(){
            difference() {
                minkowski(){ 
                    cube([56,50,31.4], center = true);
                    sphere(2, $fn=8);
                };
                minkowski(){
                    cube([54,48,29.4], center = true);
                    sphere(1, $fn=8);
                };
            };
            translate([24,21,0]) cylinder(h = 32, d = 10, center = true);
            translate([24,-21,0]) cylinder(h = 32, d = 10, center = true);
            translate([-24,21,0]) cylinder(h = 32, d = 10, center = true);
            translate([-24,-21,0]) cylinder(h = 32, d = 10, center = true);

            translate([27,24,0]) cylinder(h = 32, d = 4, center = true, $fn=10);
            translate([27,-24,0]) cylinder(h = 32, d = 4, center = true, $fn=10);
            translate([-27,24,0]) cylinder(h = 32, d = 4, center = true, $fn=10);
            translate([-27,-24,0]) cylinder(h = 32, d = 4, center = true, $fn=10);

        };
        //половиним корпус
        translate([0,0,-55/2]) color([.9,.3,.1]) cube([90,95,55], center = true);

        //отверстие под вал мотор-редуктора
        //translate([0,-1,25]) cylinder(h = 10, d = 9, center = true);


        //отверстия под головки винтов крепления половинок корпуса
        translate([24,21,48/2 + 4.749]) cylinder(h = 48, d = 7, center = true);
        translate([-24,21,48/2 + 4.749]) cylinder(h = 48, d = 7, center = true);
        translate([24,-21,48/2 + 4.749]) cylinder(h = 48, d = 7, center = true);
        translate([-24,-21,48/2 + 4.749]) cylinder(h = 48, d = 7, center = true);

        //фаски 45 под головки винтов
        translate([24,21,3]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);
        translate([-24,21,3]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);
        translate([24,-21,3]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);
        translate([-24,-21,3]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true);


        //отверстия под винты крепления половинок корпуса
        translate([24,21,0]) cylinder(h = 52, d = 3, center = true);
        translate([-24,21,0]) cylinder(h = 52, d = 3, center = true);
        translate([24,-21,0]) cylinder(h = 52, d = 3, center = true);
        translate([-24,-21,0]) cylinder(h = 52, d = 3, center = true);

        //отверстия под винты крепления мотор-редуктора
        rotate([0,0,0]) translate([0,0,20]) motor_mount_holes();
        translate([0,0,20]) rotate([0,0,180]) flange_holes();

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
        translate([0,0,-27.4/2]) 
            minkowski(){ 
                cube([56,50,27.4], center = true);
                sphere(1, $fn=8);
            };


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
        //translate([45/2,0,0]) color([.2,.3,.1]) cube([45,95,55], center = true);
        //translate([0,-95/2,0]) color([.9,.3,.1]) cube([95,95,55], center = true);
        //translate([45/2 +14,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
        //translate([24,0,0]) translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
          
    };
    
};

