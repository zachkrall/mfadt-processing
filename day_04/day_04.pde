int scale = 30;

void setup () {

  size(400,400);
  rectMode(CENTER);
  
}

void guides ( ){

  for ( int x = -width; x < width; x+=10 ){
    for ( int y = -height; y < height; y+=10 ){
    
       pushStyle();
       fill(0, 255, 255);
       line(x, -height, x, height);
       popStyle();
      
    }
  }
  
}

void grid (int howmany, int scale, color fill) {

  for ( int x = 0; x < howmany*4 ; x+=scale+10 ){
    for ( int y = 0; y < howmany*4 ; y+=scale+10 ) {
    
      pushStyle();
      fill(fill);
      noStroke();
      rect( x, y, scale, scale);
      rect( x, -y, scale, scale);
      rect( -x, -y, scale, scale); 
      rect( -x, y, scale, scale);
      popStyle();
      
    }
  }
  
}

void randomSquares () {

   rect(0, 0, scale, scale);
  
}

void draw () {
  
  background(255);
  
  translate( width/2, height/2 );
  

  grid(scale, scale/2, color(245) );
  
  //randomSquares();

}

void mousePressed () {
  
}
