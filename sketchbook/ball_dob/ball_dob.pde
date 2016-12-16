float x=50;
float y=130;
float deltax=5, deltay = 5;
int r=15;
boolean stop=false;
boolean [] keys = new boolean[128];
float x1=width/2;
float[] v = new float[9];
int[][] pK = {{100,300}, {390,100}};


void setup() {
   frameRate(70);
   size(800,590); 
   background(125,125,255);
}

void draw() {
  background(125,125,255);
  stroke(255);
  ellipse(x,y,r,r);
  
  //for(int z=0; z<10; z++)
   // ellipse(x+100,y,30,30);
    
  if (!stop) {
    x+=deltax;
    y+=deltay;
  } else {
    text("STOP",width/2,height/2);
    //mouseX=width/2;
    if(key=='x') { stop=false; x=50; y=130; key=' ';}
  }
   
  klawisze();
  rect(x1,550,70,7);
  
  if (x > width -7.5 || x < 7.5) deltax = -deltax;
  if ((y > 550 -7.5 || y < 7.5) && abs(x - x1-50) < 50 || y < 7.5) {deltay = -deltay;}
   
  //if ((y > 550 -7.5 || y < 7.5) && (dist(x1,550,x,y)< 30 || dist(x1+70,550+7,x,y)<30 || y < 7.5)) {deltay = -deltay;}
  
  if (y > 570) stop=true;
  for(int z=0; z<=1; z++) {
    v[z]=klocek(pK[z][0] ,pK[z][1],x,y); 
    if (v[z]<59.9) {
      deltay = -deltay;
      deltax = -deltax;
    }
    else
      deltax = -deltax;
    
  }
 
 
   //if (dist(x1,550,x,y)<=20 || dist(x1+70,550+7,x,y)<= 20) {
   //  print(dist(x1,550,x,y)+" "+dist(x1+70,550+7,x,y)+"\n");
   //  print(abs(dist(x1,550,x,y)) - abs(dist(x1+70,550+7,x,y))+"\n");
   //}
}

void klawisze() {
  if (keys['a']  && !stop) 
    x1-=10;
  else if (keys['d'] && !stop)
    x1+=10;   
}

void keyPressed() {
  keys[key] = true;
}

void keyReleased() {
  keys[key] = false; 

}
float klocek(float x, float y, float xK, float yK) {
  float vR;
  rect(x,y,55,15);
  vR=dist(x,y,xK,yK)+ dist(x+55,y+15,xK,yK);
  return vR;
}

float revX(float x, float y, float xK, float yK) {
  float z;
  z=dist(x,y,xK,yK);
 if(z>25) deltax = -deltax;
  print(z+"\n");
  return deltax;
  
}