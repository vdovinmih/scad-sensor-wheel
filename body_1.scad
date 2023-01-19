module body_1() {
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
            };
            translate([14,36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
            translate([14,-36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
            translate([-14,-36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
            translate([-14,36.5,0]) cylinder(h = 52, d = 10, center = true, $fn=200);
        };
        translate([0,0,-27.5]) color([.9,.3,.1]) cube([45,95,55], center = true);

        //отверстие под вал мотор-редуктора
        translate([0,-1,25]) cylinder(h = 10, d = 9, center = true, $fn=200);


        //отверстия под головки винтов крепления половинок корпуса
        translate([14,36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true, $fn=200);
        translate([14,36.5,30.749]) cylinder(h = 48, d = 7, center = true, $fn=200);
        translate([14,-36.5,30.749]) cylinder(h = 48, d = 7, center = true, $fn=200);
        translate([-14,-36.5,30.749]) cylinder(h = 48, d = 7, center = true, $fn=200);
        translate([-14,36.5,30.749]) cylinder(h = 48, d = 7, center = true, $fn=200);

        //фаски 45 под головки винтов
        translate([14,36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true, $fn=200);
        translate([-14,36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true, $fn=200);
        translate([14,-36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true, $fn=200);
        translate([-14,-36.5,5]) cylinder(h = 3.5, d1 = 0, d2 =7, center = true, $fn=200);


        //отверстия под винты крепления половинок корпуса
        translate([14,36.5,0]) cylinder(h = 52, d = 2.3, center = true, $fn=200);
        translate([14,-36.5,0]) cylinder(h = 52, d = 2.3, center = true, $fn=200);
        translate([-14,-36.5,0]) cylinder(h = 52, d = 2.3, center = true, $fn=200);
        translate([-14,36.5,0]) cylinder(h = 52, d = 2.3, center = true, $fn=200);

        //отверстия под винты крепления мотор-редуктора
        translate([0,-24,50])
            translate([0,13,-24.5])
                rotate([180,0,-90])
        union(){
            translate([-9.88 -8.8, -9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
            translate([-9.88 -8.8, 9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
            translate([-9.88 -8.8, -9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
            translate([-9.88 -8.8 +28, 9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
            translate([-9.88 -8.8 +28, -9.5,-10]) cylinder(d=2.5,h=30, $fn=100);
        };
        translate([0,0,-23]) 
            minkowski(){ 
                cube([31,77,47], center = true);
                sphere(2);
            };

        //debug
        //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
        //translate([45/2 +14,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
    };
};

//debug
//body_1();