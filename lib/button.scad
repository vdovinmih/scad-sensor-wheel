module button(x=6.2,y=6.2,h1=3.5,h2=13,d=3.5, center = false) {
    $fn=25;
    color([.4,.4,.4])
    if (center) {
        translate([-x/2,-y/2,0])
        union(){
            cube([x,y,h1]);
            translate([x/2,y/2,0.01 ]) cylinder(h=h2,d=d);
        };
    } else {
        union(){
            cube([x,y,h1]);
            translate([x/2,y/2,0.01 ]) cylinder(h=h2,d=d);
        };
    };
};

button(h2 =9.5,center=true);