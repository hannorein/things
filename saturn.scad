fac = 0.0001;
faces = 120;
base = 3;
rings = [[122170   , 136775	],[92000 , 117580], [74658, 92000], [66900, 74510], [140000,140380]];
moons = [396.4, 504.2,1062, 1122, 1527,5149];
difference(){
    union(){
        translate([-15,-15,0]) cube([42,30,base]);
        translate([0,0,base]){
            sphere(fac*58232,$fn=faces);
        };
        union(){
            for (a=rings){
                difference(){
                    cylinder(base+1,a[1]*fac,a[1]*fac,$fn=faces);
                    cylinder(base+1,a[0]*fac,a[0]*fac,$fn=faces);
                }
            };
            {
            shift = 1;
            for (a=[0:5]){
                echo(fac*moons[a]);
                translate([15+a*2,0,base+fac*moons[a]*0.5]){
                sphere(fac*moons[a],$fn=faces);
                };
            };
            }
        };
    };
    union(){
        
    }
};
