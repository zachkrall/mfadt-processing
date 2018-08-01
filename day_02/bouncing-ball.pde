int x = 0;
int y = 0;
int d = 40;
int speed = 5;
int yspeed = speed;
int xspeed = speed;
color ballColor = color(255);

void setup() {
  
  size(400, 270);
  background(0);
  colorMode(HSB);
  stroke(0);
  
}

void draw() {

  fill(x, 255, 255);
  ellipse(x, y, d, d);
  
  x+=xspeed;
  y+=yspeed;
  
  if( x > width || x < 0 ){
    xspeed*=-1;
  } else if ( y > height || y < 0 ){
    yspeed*=-1;
  }
  
}
