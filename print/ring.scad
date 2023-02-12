$fn=200;
ring();
module ring(){
    difference(){
        cylinder(h=2,d=27);
        cylinder(h=5,d=10.1, center=true);
    };
}
