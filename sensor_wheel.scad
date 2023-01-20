$fn=50;
hole_sections=24; // количество дыр
hole_coverage=50; // % заполнения дырами
inner_r = (14 / 2) + 0.1;     // внутренний r
inner_b = 2;      // внутренний обод
outer_r = 28 / 2;     // наружний r 
outer_b = 1.2;      // наружний обод
thickness = 2;    // толщина

module holes(o_rad,i_rad,sections,coverage)
{
    a=(360*coverage/100)/sections;
    o_y=2*sin(a/2)*o_rad;
    i_y=2*sin(a/2)*i_rad;
    for (i=[1:sections]) { 
        rotate([0,0,i*360/sections]) 
            intersection() {
                hull() {
                    translate([i_rad+i_y/2,0,0]) circle(i_y/2);
                    translate([o_rad-o_y/2,0,0]) circle(o_y/2);
            };
        }
    }
}

// ротор
difference() {
    union()
    {
        cylinder(h=thickness,r=outer_r,$fn=250);
        cylinder(h=thickness*3,r=inner_r+1.2,$fn=250);
    }    
    translate ([0,0, -thickness])
        linear_extrude(height=thickness*3,convexity=10)
            holes( 
                o_rad=outer_r-outer_b,
                i_rad=inner_r+inner_b,
                sections=hole_sections,
                coverage=hole_coverage);
    translate ([0,0, -thickness])
        cylinder(h=thickness*6,r=inner_r);
};
