use <./shimonbox/boards/wemos_esp8266.scad>
use <motor_driver.scad>
use <motor.scad>
use <body_1.scad>
use <body_2.scad>
use <flange.scad>


// потрошки для прицеливания и контроля корпуса.
translate([0,13,-24.5])
union(){
    translate([0,15,30])
        rotate([90,0,0]) 
            wemos_esp8266();
            
    translate([0,-2,1]) rotate([0,0,90]) motor_driver();

    translate([0,-24,50])
        rotate([180,0,-90]) motor();

    // sensors
    translate([16.8,-35,30]) rotate([90,0,90])
        color([.9,.3,.1]) cube([11,15,1], center = true);

    translate([16.8, -15, 30]) rotate([90,0,90])
        color([.9,.3,.1]) cube([11,15,1], center = true);

    translate([16.8, 5, 30]) rotate([90,0,90])
        color([.9,.3,.1]) cube([11,15,1], center = true);
};    

//половинка корпуса с мотором
difference() {
    body_1();
    //debug
    // сечение по центру
    //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    // сечение по винтам 1
    //translate([45/2 +14,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    // сечение по винтам 2
    //translate([45/2 -14,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
};



//половинка корпуса с платой драйвера
difference() {
    body_2();
    //debug
    // сечение по центру
    //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    // сечение по винтам 1
    //translate([45/2 +14,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    // сечение по винтам 2
    //translate([45/2 -14,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);

}

//фланец для трубы d32
translate([0,-1,27]) flange();
