module motor() {
    $fn=200;
    union()
    {
        minkowski()
        {
            translate([0, 0, 13.8/2]) cube([40, 21.4, 13.8], center=true);
            cylinder(h=1,r=1);
        }
        translate([12.4, 0, 0])
            union()
            {
                difference()
                {
                    translate([0, 0, 13.8+16]) cylinder(h=32, d=22, center=true);
                    translate([17.2/2 + 11, 0, 13.8+16 - 0.05]) cube([22,22,33], center=true);
                    translate([-17.2/2 - 11, 0, 13.8+16 - 0.05]) cube([22,22,33], center=true);
                };
                translate([11.1, 0, 13.8+16]) cube([5,7,32], center=true);
                translate([-11.1, 0, 13.8+16]) cube([5,7,32], center=true);
            };
        translate([-21 +13.8 - (5.36/2), 0, -4])
            color([.60,.60,.60]) cylinder(h=8, d=5.36, center=true);
    }
}