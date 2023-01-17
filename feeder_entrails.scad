use <./shimonbox/boards/wemos_esp8266.scad>
use <motor_driver.scad>
use <motor.scad>

translate([0,15,30])
    rotate([90,0,0]) 
        wemos_esp8266();
        
rotate([0,0,90]) motor_driver();

translate([0,-20,50])
    rotate([180,0,-90]) motor();

// sensors
translate([16.8,-35,30]) rotate([90,0,90])
    color([.9,.3,.1]) cube([11,15,1], center = true);

translate([16.8, -15, 30]) rotate([90,0,90])
    color([.9,.3,.1]) cube([11,15,1], center = true);

translate([16.8, 5, 30]) rotate([90,0,90])
    color([.9,.3,.1]) cube([11,15,1], center = true);    