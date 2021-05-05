PFont tip, albus;
PImage fondo, de, iz, top, rabbit, Boom, hat;
int movX = -100;
int movZ = 100;
int tr = 0;
int p = 1 ;
int t = 410;
int t2 = 610;
int t3 = 0;

void setup(){
  size(350,545);
  fondo = loadImage ("fondo.png");
  albus = loadFont("Constantia-Bold-15.vlw");
  tip = loadFont("SegoeUI-Semilight-40.vlw");
  p = 1;
  t = 410;
  t2 = 610;
  t3 = 0;
    
  hat = loadImage ("hat.png");
  Boom = loadImage ("Boom.png");
  rabbit = loadImage ("Rabbit.png");
  de = loadImage ("cabezaDerecha.png");
  iz = loadImage ("cabezaIzquierda.png");
  top = loadImage ("cabezaTop.png");
  textFont(tip, 40);
  
}

void draw(){
  
  frameRate(15);
  
  tr = tr + 2;
  movX++;
  movZ--;
 
  image(fondo,0,0);
  textFont(tip,40);
  
  if(p < 2){
    image(hat,0,0);
    
  }
  
  if(mouseX > 265){
    if(mouseY < 80){
      if(mousePressed){
        p = p + 2;  
      }
    }
  }
  
  
  if(movX<1){
   image(top,0,movX);
   image(iz,movX,0);
   }else{
    image(top,0,0);
    image(iz,0,0);
  }
  
  if(movZ>1){
  image(de,movZ,0);
  }else{
  image(de,0,0);
  
  }
  

  strokeWeight(15);
  textSize(50);
 // stroke(153,162,193);
  fill(23,69,56,tr);
  text("CUENTOS",67,190);
  textSize(63);
  text("BEEDLE",71,273);
  text("BARDO",77,354);
  textSize(13.3);
  fill(23,69,56);
  textFont(albus,12);
  
  if (p > 2){
    image (rabbit,0,0);
    if (mouseX > 135){
      if (mouseX < 200){
        if (mouseY > 360){
          if (mousePressed){
            t++;
            t2--;
            t3 = t3 + 60;
          }
        }
      }
    }
  }
  if(t>508){
     text("A  B  S  D   M  U   D  R ",180,510);
     text("  L  U      U   B   L   O  E",180,510);
    
  }
  
  
  
  
  if (t>410){
    t++;
    t2--;
    t3++;
  }
  
  if (t>410){
    if (t2<610){
      if (t<510){
        if (t2>510){
              fill(23,69,56,t3);
              text("A  B  S  D   M  U   D  R ",180,t);
              text("  L  U      U   B   L   O  E",180,t2);
        }
      }
    }
  }
  if (t>410){
    if (t2<610){
      fill(0);
      stroke(0);
      triangle(350,545,350,527,334,545);
      if(mouseX>325){
        if(mouseY>520){
          if(mousePressed){
              p = 1;
              t = 410;
              t2 = 610;
              t3 = 0;
          }
        }
      }
    }
  }
}
