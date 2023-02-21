module tube(){
    $fn=100;
    difference(){
        union(){
            cylinder(h=125,d=32.3);
            translate([0,0,27.2+32.3/2])
                //rotate([90,0,0]) cylinder(h=30,d=26);
                rotate([90,0,0]) cylinder(h=30,d=27.5+3);
            translate([0,0,27.2+32.3/2+62])
                rotate([-90,0,0]) cylinder(h=20,d=27.5+3);
        }
        translate([0,0,-10]) cylinder(h=200,d=32.3-4);
        translate([0,0,27.2+32.3/2])
                //rotate([90,0,0]) cylinder(h=40+1,d=26-4);
                rotate([90,0,0]) cylinder(h=40+1,d=27.5);
            translate([0,0,27.2+32.3/2+62])
                rotate([-90,0,0]) cylinder(h=40+1,d=27.5);
        //translate([20,0,0]) color("red") cube([40,80,400], center=true);
    }
}

tube();
difference(){
    translate([0,0,125]) cylinder(h=2,d=36, $fn=100);
    translate([0,0,-10]) cylinder(h=200,d=32.3-4,$fn=100);
}
