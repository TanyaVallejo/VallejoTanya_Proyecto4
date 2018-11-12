void camara()
{
  println (j);
  
  scale(2);
  opencv.loadImage(video);

  image(opencv.getInput(), 0, 0);
  
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);
  
  switch(j)
  {
    case 1:
    println ("alheli");
    for (int i = 0; i < faces.length; i++) 
    {
    println(faces[i].x + "," + faces[i].y);
    image (uno,faces[i].x+60, faces[i].y+25, faces[i].width*0.3, faces[i].height*0.3);
    image (uno,faces[i].x+20, faces[i].y+25, faces[i].width*0.3, faces[i].height*0.3);
    image (uno,faces[i].x+35, faces[i].y+60, faces[i].width*0.4, faces[i].height*0.4);

    }
    break;
    
    case 2:
    println ("margarita");
    
    for (int i = 0; i < faces.length; i++) 
    {
    println(faces[i].x + "," + faces[i].y);
    image (dos,faces[i].x+60, faces[i].y+25, faces[i].width*0.3, faces[i].height*0.3);
    image (dos,faces[i].x+20, faces[i].y+25, faces[i].width*0.3, faces[i].height*0.3);
    image (dos,faces[i].x+35, faces[i].y+60, faces[i].width*0.4, faces[i].height*0.4);
    
    }
    break;
    
    case 3:
    println ("rosa");
    
    for (int i = 0; i < faces.length; i++) 
    {
    println(faces[i].x + "," + faces[i].y);
    image (tres,faces[i].x+60, faces[i].y+25, faces[i].width*0.3, faces[i].height*0.3);
    image (tres,faces[i].x+20, faces[i].y+25, faces[i].width*0.3, faces[i].height*0.3);
    image (tres,faces[i].x+35, faces[i].y+60, faces[i].width*0.4, faces[i].height*0.4);
    
    }
    break;
  }

   noFill();
   noStroke();
   point(width/2 + cos(n) * 100, height/2 + sin(n) * 100);
   n=n+0.05;
}

void captureEvent(Capture c) {
  c.read();
}
