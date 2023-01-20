$fn=200;
//проставка
union(){
    difference(){
        cylinder(h=54, d=12);
        translate([0,0,-0.01]) cylinder(h=4, d1=8,d2=0);
        translate([0,0,42.01]) cylinder( h=12, d1=0, d2=7.5);
    };
    difference(){
        cylinder(h=2,d=28);
        cylinder(h=10,d=11, center = true);
    };
};

//крышка
translate([0,0,-21])
difference(){
    union(){
        cylinder(h=20, d=32);
        difference(){
            translate([0,0,19]) cylinder(h=20, d=8);
            translate([0,0,21]) difference(){
                cylinder(h=60, d=12);
                translate([0,0,-0.01]) cylinder(h=4, d1=8,d2=0);
            };
        };
        translate([0,0,-3]) cylinder(h=4, d=40);
    };
    translate([0,0,-3.1]) cylinder(h=20, d1=35, d2=0);
};

