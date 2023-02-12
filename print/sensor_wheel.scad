$fn=100;
hole_sections=24; // количество дыр
hole_coverage=50; // % заполнения дырами
sensor_wheel();

module holes(o_rad,i_rad,sections,coverage)
{
    a=(360*coverage/100)/sections;
    o_y=2*sin(a/2)*o_rad;
    i_y=2*sin(a/2)*i_rad;
    $fn=20;
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
module sensor_wheel(
    inner_r = (14 / 2) +0.01,   // внутренний r
    inner_b = 1,                // внутренний обод
    outer_r = 28 / 2,           // наружний r 
    outer_b = 1.0,              // наружний обод
    thickness = 2)              // толщина

        
    difference() {
        cylinder(h=thickness,r=outer_r,$fn=250);
        translate ([0,0, -0.01]) cylinder(h=36-17.5, d=14.0);
        translate ([0,0, -thickness])
            linear_extrude(height=thickness*3,convexity=10)
                holes( 
                    o_rad=outer_r-outer_b,
                    i_rad=inner_r+inner_b,
                    sections=hole_sections,
                    coverage=hole_coverage);

    };
