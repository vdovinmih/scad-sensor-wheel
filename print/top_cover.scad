
$fn = 200;

union(){
    difference(){
        translate([0,0,10])
        minkowski(){
            translate([0,0,100 + 16]) cube([120-1.6*2,120-1.6*2,8],center=true);
            cylinder(d=20);
        };
        translate([0,0,10])
        minkowski(){
            translate([0,0,100 + 15]) cube([120-1.6*4,120-1.6*4,11],center=true);
            cylinder(d=20);
        };
    }
    translate([0,0,10])
    minkowski(){
        translate([0,0,100 + 22 - 0.1]) cube([120-1.6*0,120-1.6*0,2],center=true);
        cylinder(d=20);
    };


}

