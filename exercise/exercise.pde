int x1 = 255;
int y1 = 26;
void setup(){
  size(480,480);
}
void draw(){
background(255,255,255);//设置背景颜色
for(int i =0;i<10;i++){
x1 = abs(mouseX-48*i);
y1 = abs(mouseX-48*i);
fill(0,(255-x1),(255-y1));//设置填充画笔颜色
//rectMode(CENTER);
noStroke();
rect((48*i), 0, 48, 480);
noFill();
  }
}