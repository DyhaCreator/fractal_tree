float e = 0;
float l = 1.4;
void setup(){
  size(500,500);
  stroke(255);
  frameRate(30);
}
void draw(){
  background(0);
  tree(width/2,height-50,100,0);
  e+=0.0005;
}
void tree(float x, float y,float leng,float engle){
  PVector a = new PVector(leng*cos(engle-HALF_PI)+x,leng*sin(engle-HALF_PI)+y);
  strokeWeight(leng/10);
  line(x,y,a.x,a.y);
  if(leng>1){
    tree(a.x,a.y,leng/l,engle-e);
    tree(a.x,a.y,leng/l,engle+e);
  }
}
