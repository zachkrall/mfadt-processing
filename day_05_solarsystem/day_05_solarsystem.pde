color bg = color(0,0,0);

int planets = 3;

int planetSize = 20;

color[] planetColor = {
  color(0,255,0),
  color(255,0,255),
  color(255,0,0)
};

int[] planetSpeed = {
  7,
  5,
  2
}; 

int planetTrail = 5;

int counter = 0;


void setup () {

  size(300,300);  
  
}

void draw () {

  background( bg );
  noStroke();
  
  translate(width/2,height/2);
  
  ellipse( 0, 0, planetSize*2, planetSize*2 );
  
  for ( int i = 0; i < planets; i++ ){
    
    for ( int b = 0; b < planetTrail; b++ ){
      pushMatrix();
      rotate( radians( counter * planetSpeed[i] + b ) );
      pushStyle();
      float hello = map(b, planetTrail, 0, 0, 255);
      fill(255,255,255, hello);
      ellipse(0, 50+ planetSize*i*2, planetSize, planetSize);
      popStyle();
      popMatrix();
    }
   
  }
  
  counter ++;
  
}
