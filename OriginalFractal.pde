int z = 50;

public void setup() 
{
  size(800, 800);
}

public void draw() 
{
  background(0);
  fractal(400, 400, z);
  if(z<50) z = 50;
}

public void fractal(float x, float y, float len) {
  strokeWeight(0.6);
  noFill();
  stroke(64,217,164,100);
  if(len > 145) {
    fractal(x, y - len/2, len/2);
    fractal(x, y + len/2, len/2);
    fractal(x + len/2, y, len/2);
    fractal(x - len/2, y, len/2);
    fractal(x - (len/2)/sqrt(2), y - (len/2)/sqrt(2), len/2);
    fractal(x + (len/2)/sqrt(2), y - (len/2)/sqrt(2), len/2);
    fractal(x - (len/2)/sqrt(2), y + (len/2)/sqrt(2), len/2);
    fractal(x + (len/2)/sqrt(2), y + (len/2)/sqrt(2), len/2);
  }
  ellipse(x, y, 2*len, 2*len);
}

public void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      z=z+50;
    }
    else if (keyCode == DOWN){
      z=z-50;
    }
  }
}
