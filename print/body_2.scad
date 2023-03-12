body_2();

// Square hole
// Sx=Square X position | Sy=Square Y position | Sl= Square Length | Sw=Square Width | Filet = Round corner
module SquareHole(Sx, Sy, Sl, Sw, Filet) {
    minkowski() {
        translate([Sx+Filet/2, Sy+Filet/2, -1])
            cube([Sl-Filet, Sw-Filet, 10]);
            cylinder(d=Filet, h=10, $fn=100);
    }
}

module body_2() {
    $fn=50;
    difference() {
        union(){
            
            // Rails
            translate([0, 0, 0]) mirror([0,0,1]) union() {
                translate([-28, -16.5, 14.2]) cube([56, 5, 1]);
                translate([-28, -16.5, 13.2]) cube([56, 1.6, 1.6]);
                translate([-28, -13.1, 13.2]) cube([56, 1.6, 1.6]);
                translate([-29, -16.5, 12.2]) cube([8.5, 5, 3]);
                translate([-29, -16.5, 12.2]) cube([11, 1.5, 3]);
                translate([-29, -13.0, 12.2]) cube([11, 1.5, 3]);
                translate([ 18, -16.5, 12.2]) cube([10, 1.5, 3]);
                translate([ 18, -13.0, 12.2]) cube([10, 1.5, 3]);
            }
            

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

        //отверстие под разъем питания
        translate([20, -13.6, -5]) rotate([90, 0, 90])
            SquareHole(0, 0, 12.5, 10, 1);


        //debug
        //translate([45/2,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);
        //translate([45/2 + 24,0,0]) color([.9,.3,.1]) cube([45,95,55], center = true);

        //отверстия под винты крепления половинок корпуса
        translate([24,21,12]) cylinder(h = 52, d = 2, center = true);
        translate([-24,21,12]) cylinder(h = 52, d = 2, center = true);
        translate([24,-21,12]) cylinder(h = 52, d = 2, center = true);
        translate([-24,-21,12]) cylinder(h = 52, d = 2, center = true);

        //щели для вентиляции
if(0) {
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
