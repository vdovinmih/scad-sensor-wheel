module flange() {
    difference(){
        union(){
            difference(){
                translate([0, 0, 6]) cylinder(h = 12, d = 36, center = true, $fn=200);
                translate([0, 0, 6]) cylinder(h = 22, d = 32, center = true, $fn=200);
            }
            minkowski()
            {
                minkowski()
                {
                    translate([0, -3, 1]) cube([30,36,1.15], center = true);
                    cylinder(h=1,r=2, $fn=200);
                }
                sphere(0.5);
            }
        }

        translate([0,1,-25])
        union(){
            translate([0,-24,50])
                translate([0,13,-24.5])
                    rotate([180,0,-90])
            union(){
                translate([-9.88 -8.8, -9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
                translate([-9.88 -8.8, 9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
                translate([-9.88 -8.8 +28, 9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
                translate([-9.88 -8.8 +28, -9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
                //фаски
                translate([-9.88 -8.8, -9.5,-3])  cylinder(d1=6, d2=0,h=3, $fn=100);
                translate([-9.88 -8.8, 9.5,-3])  cylinder(d1=6, d2=0,h=3, $fn=100);
                translate([-9.88 -8.8 +28, 9.5,-3])  cylinder(d1=6, d2=0,h=3, $fn=100);
                translate([-9.88 -8.8 +28, -9.5,-3])  cylinder(d1=6, d2=0,h=3, $fn=100);
                
            };
            translate([0,-1,25]) cylinder(h = 10, d = 19, center = true, $fn=200);
            
            //отверстие для проводов датчика
            translate([0, 13, -10]) cylinder(h=70, d=4, $fn=100);
            
            //фаски
        };
        translate([0,0,-0.99]) cube([40,40,2], center = true);
    };
};

flange();