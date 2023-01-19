module body_2() {
    difference() {
        union(){ 
            difference() {
                minkowski(){ 
                    cube([35,80,50], center = true);
                    sphere(2);
                };
                minkowski(){ 
                    cube([31,77,47], center = true);
                    sphere(2);
                };
                translate([0,0,27.5]) color([.9,.3,.1]) cube([45,95,55], center = true);

            };

            intersection()
            {
                translate([0,0,-23]) 
                    minkowski()
                    { 
                        cube([31,77,47], center = true);
                        sphere(2);
                    };
                    union()
                    {
                        translate([14,36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
                        translate([14,-36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
                        translate([-14,-36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
                        translate([-14,36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
                    };
            };


        };

        //debug
        //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);

        //отверстия под винты крепления половинок корпуса
        translate([14,36.5,0]) cylinder(h = 45, d = 2.3, center = true, $fn=200);
        translate([14,-36.5,0]) cylinder(h = 45, d = 2.3, center = true, $fn=200);
        translate([-14,-36.5,0]) cylinder(h = 45, d = 2.3, center = true, $fn=200);
        translate([-14,36.5,0]) cylinder(h = 45, d = 2.3, center = true, $fn=200);

        //debug
        //translate([45/2 -14 ,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);


    };

};