/* Main file with global settings */
PImage img;
PShape voiture;
float angleY;
float speed = 0.01; // rotation speed
float speedDelta = 0;

void setup(){
    frameRate(20);
    size(1000, 1000, P3D);
    
    img = loadImage("cube.jpeg");
    voiture = loadShape("Car.obj");
    textureMode(NORMAL);

}

void draw(){
    background(190);
    //camera(width/2, height/2, (height/2)/tan(PI*30/180), width/2, height/2, 0, 0, 1, 0);

    camera(width/2, height/2, 0, width/2, height/2, -1,0, 1, 0);
    translate(width/2, height/2, 0);
    scale(300, -300, 300);

    // Afficher la voiture
    pushMatrix();
    translate(0, 0, -0.3);
    scale(0.02);
    shape(voiture);
    popMatrix();

    pushMatrix();
    angleY += speed + speedDelta;
    rotateY(angleY);

    noStroke();
    beginShape(QUADS);
    texture(img);
    
    // Face 1
    vertex(-1, -1, -1, 0, 2.0/3);
    vertex(1, -1, -1, 1.0/4, 2.0/3);
    vertex(1, 1, -1, 1.0/4, 1.0/3);
    vertex(-1, 1, -1, 0, 1.0/3);

    // Face 2
    vertex(-1, 1, 1, 1.0/2, 1.0/3);
    vertex(-1, -1, 1, 1.0/2, 2.0/3);
    vertex(-1, -1, -1, 1.0/4, 2.0/3);
    vertex(-1, 1, -1, 1.0/4, 1.0/3);

    // Face 3 : Sol
    vertex(-1, -1, -1, 1.0/4, 2.0/3);
    vertex(-1, -1, 1, 1.0/2, 2.0/3);
    vertex(1, -1, 1, 1.0/2, 1);
    vertex(1, -1, -1, 1.0/4, 1);

    // Face 4
    vertex(1, -1, -1, 3.0/4, 2.0/3);
    vertex(1, -1, 1, 1, 2.0/3);
    vertex(1, 1, 1, 3.0/4, 1.0/3);
    vertex(1, 1, -1, 1, 1.0/3);

    // Face 5
    vertex(1, 1, 1, 3.0/4, 1.0/3);
    vertex(-1, 1, 1, 1.0/2, 1.0/3);
    vertex(-1, -1, 1, 1.0/2, 2.0/3);
    vertex(1, -1, 1, 3.0/4, 2.0/3);

    // Face 6
    vertex(-1, 1, -1, 1.0/4, 1.0/3);
    vertex(-1, 1, 1, 1.0/2, 1.0/3);
    vertex(1, 1, 1, 1.0/2, 0);
    vertex(1, 1, -1, 1.0/4, 0);

    endShape();
    popMatrix();
}