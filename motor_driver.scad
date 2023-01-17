
module motor_driver() {
    $fn=50;
    difference() {
        color([.20,.30,.40]) cube([39.3, 34.7, 1.6], center = true);
        translate([-32.9/2,-28.56/2,-0.1]) cylinder(h=2, d = 3, center = true);
        translate([32.9/2,-28.56/2,-0.1]) cylinder(h=2, d = 3, center = true);
        translate([-32.9/2,28.56/2,-0.1]) cylinder(h=2, d = 3, center = true);
        translate([32.9/2,28.56/2,-0.1]) cylinder(h=2, d = 3, center = true);
    }

    color([.00,.70,.25]) translate([-13,0,5.3])
        cube([6.72, 20.83, 9], center = true);
    color([.40,.40,.40]) translate([5, 0, 4.8])
        cube([18, 32, 8], center = true);
}