dh = 10;
width = 10;
height = 10;
cheight = 20;
thickness = 2;

//1st Base
difference() {
translate([0,0,dh+cheight/2])
difference() {
    cube([width,height,cheight], true);
    translate([0,0,-thickness]) cube([width-thickness*2,height-thickness*2,cheight], true);
}
//Holes
translate([0,0,cheight+dh-thickness*1.5]) cylinder(thickness*2,2,2);
}

bwidth = 20;
bheight = 20;

//2nd Base
difference() {
    cube([bwidth,bheight,thickness], true);
    cube([bwidth-thickness*2,bheight-thickness*2,thickness*2], true);
}

//Rods
x11 = bheight/2;
x12 = bheight/2-thickness;
y11 = bwidth/2;
y12 = bwidth/2-thickness;


x21 = height/2;
x22 = height/2-thickness;
y21 = width/2;
y22 = width/2-thickness;

polyhedron (points = [
                        [x11,y11,thickness/2],
                        [x12,y11,thickness/2],
                        [x12,y12,thickness/2],
                        [x11,y12,thickness/2],
                        [x21,y21,dh],
                        [x22,y21,dh],
                        [x22,y22,dh],
                        [x21,y22,dh]
                      ],
             faces = [
                        [0,1,2,3],[0,4,5,1],[1,5,6,2],[2,6,7,3],[3,7,4,0],[4,5,6,7]
                     ]
            );

polyhedron (points = [
                        [-x11,y11,thickness/2],
                        [-x12,y11,thickness/2],
                        [-x12,y12,thickness/2],
                        [-x11,y12,thickness/2],
                        [-x21,y21,dh],
                        [-x22,y21,dh],
                        [-x22,y22,dh],
                        [-x21,y22,dh]
                      ],
             faces = [
                        [0,1,2,3],[0,4,5,1],[1,5,6,2],[2,6,7,3],[3,7,4,0],[4,5,6,7]
                     ]
            );

polyhedron (points = [
                        [x11,-y11,thickness/2],
                        [x12,-y11,thickness/2],
                        [x12,-y12,thickness/2],
                        [x11,-y12,thickness/2],
                        [x21,-y21,dh],
                        [x22,-y21,dh],
                        [x22,-y22,dh],
                        [x21,-y22,dh]
                      ],
             faces = [
                        [0,1,2,3],[0,4,5,1],[1,5,6,2],[2,6,7,3],[3,7,4,0],[4,5,6,7]
                     ]
            );
            
polyhedron (points = [
                        [-x11,-y11,thickness/2],
                        [-x12,-y11,thickness/2],
                        [-x12,-y12,thickness/2],
                        [-x11,-y12,thickness/2],
                        [-x21,-y21,dh],
                        [-x22,-y21,dh],
                        [-x22,-y22,dh],
                        [-x21,-y22,dh]
                      ],
             faces = [
                        [0,1,2,3],[0,4,5,1],[1,5,6,2],[2,6,7,3],[3,7,4,0],[4,5,6,7]
                     ]
            );
 