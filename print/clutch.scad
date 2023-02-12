$fn=100;

clutch();

module clutch(){
    // муфта
    difference(){
        union(){
            cylinder(h=36-17.5, d=14.0);
            translate([0,0,-20]) cylinder(h=30, d=7, $fn=6);
        }
        translate([0, 0, 36-17.5-6])
        difference() {
            cylinder(h=7,d1=5.1,d2=5.3);
            translate([0, (2.05 + 10), 3-0.01]) cube(20, center = true);
            translate([0, -(2.05 + 10), 3-0.01]) cube(20, center = true);
        }
    };
}