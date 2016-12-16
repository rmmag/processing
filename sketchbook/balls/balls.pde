float x=300,y=150, p1,p2,tmp;
float x1=150,y1=70;
int z=2;
float deltax = z, deltay=z;

float deltax1 = z, deltay1=z;

void setup() {
  frameRate(70);
  size(800,300);
  background(125,125,255);
  fill(125,0,255);
  //ellipseMode(CENTER);
  
  //ellipseMode(RADIUS);
  
}

void draw() {
    background(125,125,255);
    //fill(125,0,255);
    //translate(50,0);
    
    //rotate(y+=0.3);
    stroke(255);
    //strokeWeight(abs(x));
    ellipse(x,y,50,50);
    x+=deltax;
    y+=deltay;
     
    if (x > width-25 || x < 25)  deltax = -deltax; //fill(random(0,255),random(0,255),random(0,255)); }
    if (y > height-25 || y < 25)  deltay = -deltay; //fill(random(255),random(255),random(255)); }
    
    ellipse(x1,y1,50,50);
    x1+=deltax1;
    y1+=deltay1;
    
    p1=PI*25*25;

    p2=PI*25*25;
    //if (x1 > width-25 || x1 < 25)  deltax1 = -deltax1; //fill(random(255),random(255),random(255)); }
    //if (y1 > height-25 || y1 < 25)  deltay1 = -deltay1; //fill(random(255),random(255),random(255)); }

    //if ((x-x1) <= 50 && (x-x1) >0) { deltax = -deltax; deltax1 = -deltax1;}
    if (abs(y-y1) <= 25 && abs(y-y1) >0) { deltay = -deltay; deltay1 = -deltay1;}
    
    
    print(abs(y-y1)+", "+(x-x1)+"\n");
    ellipse(0,0,10,10);
 // print(mouseButton); 
}