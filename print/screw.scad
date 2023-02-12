//linear_extrude(height = 10, center = false, convexity = 10, twist = 360, $fn = 100)
//translate([2, 0, 0])
//circle(r = 1);
difference(){
    translate([0,0,0]) screw(h=75,n=3,k=360*1.8,hh=10);
    //translate([-45/2,0,100]) color([.9,.3,.1]) cube([45,95,200], center = true);
}

module screw(h=70,d1=10,d2=26,n=3,k=360,hh=15){
    translate([0,0,hh])
    difference(){
        union(){
            translate([0,0,-hh]) cylinder(h=h+hh, d=d1, $fn=50);
            for(i=[0:n]){
                linear_extrude(height = h, center = false, twist = k, $fn = 700)
                    rotate([0,0,(360/n)*i])
                    translate([0,d2/4])
                        square([2,d2/2], center = true);
            }
            //translate([0,0,h]) cylinder(h=2, d=50, $fn=5);
        }
        translate([0,0,-0.01-hh]) cylinder(h=20, d=7, $fn=6);
        translate([0,0,h-3.99]) cylinder(h=4, d1=0,d2=8, $fn=200);
    }
}