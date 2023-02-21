module bunker(){
    $fn=100;
    difference(){
        union(){
            translate([0,0,10]) cylinder(h=20,d=27.5+3+4,center=true);
            hull(){
                translate([0,0,20]) cylinder(h=20,d=27.5+3+3,center=true);
                minkowski(){
                    translate([0,0,100]) cube([120,120,40],center=true);
                    cylinder(d=20);
                };
            }
            translate([60,60,20]) cylinder(h=140,d=10,center=true);
            translate([60,-60,20]) cylinder(h=140,d=10,center=true);
            translate([-60,60,20]) cylinder(h=140,d=10,center=true);
            translate([-60,-60,20]) cylinder(h=140,d=10,center=true);
        }

        union(){
            translate([0,0,10]) cylinder(h=30,d=27.5+3,center=true);
            hull(){
                translate([0,0,21]) cylinder(h=20,d=27.5+3,center=true);
                minkowski(){
                    translate([0,0,100+1]) cube([120-4,120-4,40],center=true);
                    cylinder(d=20);
                };
            }
        
        }
        
        //translate([0,150,0]) color("red") cube(300, center=true);
    }
}

bunker();