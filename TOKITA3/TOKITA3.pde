//Vallejo Tanya
//A2
import gab.opencv.*;
import java.awt.Rectangle;
import processing.video.*;

OpenCV opencv;
Capture video;
Rectangle[] faces;

pantalla p;

float n=0;
int value=3;
PImage uno,dos,tres,p1,p2,p3;
int j = int (random(3.3));
int pantalla=1;

void setup()
{
  size (640,480);
  background (255);
  
  p = new pantalla();
  
  opencv = new OpenCV(this, "test.jpg");
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = opencv.detect();
  
  p1 = loadImage("pantallaUno.png");
  p2 = loadImage("pantallaDos.png");
  p3 = loadImage("pantallaTres.png");
  
  uno = loadImage("alheli.png");
  dos = loadImage("margarita.png");
  tres = loadImage("rosa.png");
  
  video.start();
}

void draw()
{
    keyPressed();
 
}
