class pantalla
{
  PImage pantalla;
  
  pantalla()
  {
  
  }
  
  void display(int d)
  {
    switch (d)
    {
      case 1:
    pantalla = loadImage("pantallaUno.png");
    break;
    
    case 2:
    pantalla = loadImage("pantallaDos.png");
    break;
    
    case 3:
    pantalla = loadImage("pantallaTres.png");
    break;
    }
  image (pantalla,0,0,width,height);
  }
}

void keyPressed()
{
  if (pantalla==1)
  {
    println ("pantalla1");
    p.display(1);
    if (key=='h')
    {
      pantalla=2;
    }
  }
  
  if (pantalla==2)
  {
   println ("pantalla2");
   
    p.display(2);
    if (key=='d')
    {
      pantalla=3;
    }
  }
  
   if (pantalla==3)
  {
     println ("pantalla3");
     
    p.display(3);
    
    if (key=='t')
    {
      pantalla=4;
    }
  }
  
  if (pantalla==4)
  {
  println ("pantalla4");
  
  camara();
     
  if (key=='f')
  {
  saveFrame ("data/foto.jpg");
  }
  
  if (key=='s')
  {
  exit();
  }
  }
  
  
}
