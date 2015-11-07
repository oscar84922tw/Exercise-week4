void setup()
{
  size(480,480);
    background(128);
smooth();
noStroke();
}
float a =0;
float inc = TWO_PI/15;
void draw()
{


float angle = 0; //先定義一個float為angle,值為0

for(int x = 0; x <= width; x += 24){ //for loop內總共會執行81次

  fill(255);
  float y = 100 + (sin(angle) * 30);
  ellipse(x,y,4,4);
  //白色圓點線
  //隨著x的推移,同時讓y座標上下變動
  //因為無論sin或cos一定是1到-1
  //會*30只是為了讓y的增減較明顯

  fill(255,255,0);
  float k = 100 + (cos(angle) * 15);
  rect(x,k,2,0);
  //黃色長方形線
  //道理同上,只是換成用cos,所以我們可以看到兩條線
  //因為只*15,所以我們可以看到波動比較小

  angle += 3.14/10; 
  //本來課本是寫PI/10,我只是改成3.14/10
  //這行是用來定義上面sin與cos的angle一次會遞增多少
}

}