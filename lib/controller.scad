use <connector.scad>
use <button.scad>

module controller() {
    cube([47.9, 28, 1.6]); // PCB
    
    translate([-7, 6, 2]) color(c=[.40,.40,.40]) cube([24.45,15.9,3]);
    translate([48-14.5+3.5, 10, 2]) color(c=[.40,.40,.40]) cube([14.5,9,11]);
    
    translate([15, 1.4, 0]) rotate([180,0,0]) connector(n=2, pins = false); //flash
    
    translate([5, 1.4, 2]) connector(n=3, pins = false); //sensor
    translate([5, 28-1.4, 2]) connector(n=3, pins = false); //uart
    translate([15+2.52*3, 28-1.4, 2]) connector(n=3, pins = true); //drive
    
    translate([-6.2/2 + 47.9 - 10.5, 28/2 + 6.2/2, 0]) rotate([180]) button(x=6.2, h2=13);
    translate([-6.2/2 + 47.9 - 18.7, 28/2 + 6.2/2, 0]) rotate([180]) button(x=6.2, h2=13);
};
controller();
