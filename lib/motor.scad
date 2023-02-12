module motor() {
    $fn=50;
    translate([0, 8, -25.5])
    union() {
        cylinder(d=32.5, h=25.5);
        translate([0, -8, 0.01]) cylinder(d=10, h=34.2-7.33-0.8);
        color(c=[.7,.7,.7]) translate([0, -8, 0.01]) cylinder(d=5, h=34.2);
        color(c=[.7,.7,.7]) translate([0, -8, 0.01]) cylinder(d=8, h=34.2-7.33);
        translate([0, 0, 23.2])
        difference(){
            hull(){
                translate([38.2/2, 0, 0]) cylinder(d=8.2,h=2.3);
                translate([-38.2/2, 0, 0]) cylinder(d=8.2,h=2.3);
            }
            translate([38.2/2, 0, 0]) cylinder(d=3,h=5, center=true);
            translate([-38.2/2, 0, 0]) cylinder(d=3,h=5, center=true);
        };
    };
};

module motor_mount_holes() {
    $fn=50;
    translate([0, 8, -25.5])
    union() {
        translate([0, -8, 0.01]) cylinder(d=10.1, h=34.3);
        translate([0, 0, 23.2])
        union() {
            //отверстия
            translate([38.2/2, 0, 0])  cylinder(d=3,h=10, center=true);
            translate([-38.2/2, 0, 0]) cylinder(d=3,h=10, center=true);
            //фаски            
            translate([38.2/2, 0,2])  cylinder(d1=0, d2=6,h=3, $fn=100);
            translate([-38.2/2, 0,2])  cylinder(d1=0, d2=6,h=3, $fn=100);
        };
    };
};

motor();
#motor_mount_holes();