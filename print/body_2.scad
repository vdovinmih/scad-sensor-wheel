body_2();

module body_2() {
    $fn=50;
    difference() {
        union(){

            difference() {
                minkowski(){ 
                    cube([56,50,28], center = true);
                    sphere(2, $fn=8);
                };
                minkowski(){
                    cube([52,46,25], center = true);
                    sphere(2, $fn=8);
                };
                //половиним корпус
                translate([0,0,55/2])
                    color([.9,.3,.1]) cube([90,95,55], center = true);
            };

            intersection(){
                translate([0,0,-27.4/2])
                minkowski(){ 
                    //cube([52,46,27.4], center = true);
                    cube([56,50,27.4], center = true);
                    sphere(1, $fn=8);
                };
                union(){
                    translate([24,21,1]) cylinder(h = 32, d = 10, center = true);
                    translate([24,-21,1]) cylinder(h = 32, d = 10, center = true);
                    translate([-24,21,1]) cylinder(h = 32, d = 10, center = true);
                    translate([-24,-21,1]) cylinder(h = 32, d = 10, center = true);
                    difference() {
                        minkowski(){ 
                            cube([56,50,28], center = true);
                            sphere(2, $fn=8);
                        };
                        minkowski(){
                            cube([52,46,25], center = true);
                            sphere(2, $fn=8);
                        };
                    };
                }
            }
        };

        //debug
        //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
        //translate([45/2 + 24,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);

        //отверстия под винты крепления половинок корпуса
        translate([24,21,12]) cylinder(h = 52, d = 2, center = true);
        translate([-24,21,12]) cylinder(h = 52, d = 2, center = true);
        translate([24,-21,12]) cylinder(h = 52, d = 2, center = true);
        translate([-24,-21,12]) cylinder(h = 52, d = 2, center = true);

        //щели для вентиляции

        for(y=[-2:2]){
            for(x=[-2:2]){
                if( (x != -2 || y != -2) &&
                     (x != 2 || y != 2) &&
                     (x != -2 || y != 2) &&
                     (x != 2 || y != -2)
                  )
                {
                    translate([x*10,y*10,-10])
                        rotate([0,0,45]) cube([5,5,30], center=true);
                }
            }
        }

        for(y=[-1:2]){
            for(x=[-1:2]){
                translate([x*10-5,y*10-5,-10])
                    rotate([0,0,45]) cube([5,5,30], center=true);
            }
        }


//        translate([0, -30, -45]) union(){
//            translate([0, 0, 0]) cube([30,2,50], center = true);
//            translate([0, 4, 0]) cube([30,2,50], center = true);
//            translate([0, 8, 0]) cube([30,2,50], center = true);
//            translate([0, 12, 0]) cube([30,2,50], center = true);
//            translate([0, 16, 0]) cube([30,2,50], center = true);
//        }

        //debug
        //translate([45/2 -14 ,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);

    };

};
