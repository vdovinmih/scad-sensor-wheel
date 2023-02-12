module connector(n=3, step=2.52, pins = true) {
    translate([-step/2, -step/2])
    union(){
        if (pins){
            for(i = [0 : n-1]){
                color([.2,.2,.2])
                translate([i*step,0,2.4]) cube([step-0.1, step-0.1, 14]);
            };
        } else {
            for(i = [0 : n-1]){
                color([1,1,.7])
                translate([step/2,step/2,2.5])
                translate([i*step,0,2.3]) cube([.61, .61, 5.1], center=true);
            };
        };
        color([.2,.2,.2])
        hull(){
            for(i = [0, n-1]){
                translate([i*step,0,0]) cube([step-0.1, step-0.1, 2.3]);
            };
        };
    };
};

connector(7, pins = false);