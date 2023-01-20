$fn=200;

// муфта
 difference(){
    rotate([0,0,0]) difference() {
    translate([0,0,0.01]) cylinder(h=25, d=14.0);
        difference() {
            cylinder(h=5.5,d=5.5);
            translate([0, (1.83 + 2.5), 2.49]) cube(5, center = true);
            translate([0, -(1.83 + 2.5), 2.49]) cube(5, center = true);
        }
    }
    translate([0,0,5]) cylinder(h=40, d=10.4, $fn=6);
};
