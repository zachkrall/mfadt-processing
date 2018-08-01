float x = 0;
float rotation = 0;

float pizzaW, pizzaH; 

void setup () {
  
  size( 600, 600 );
  noLoop();
  
  pizzaW = width/1.5;
  pizzaH = height/1.5;
  
}

void draw () {
  
  background( 255 );
  
  //ellipse( (sin( x * 200)*100)+width/2, x, 100, 100);
  
  //if( x > height){
  //  x = 0;
  //} else {
  //  x+=0.5;
  //}
  
  noStroke();
  
  //rotation++;
  translate( width/2, height/2 );
  //rotate( rotation );
  
  fill( 255, 200, 0);
  ellipse( 0, 0, pizzaW, pizzaH );
  
  fill( 255, 0, 0);
  ellipse( 0, 0, pizzaW*0.9, pizzaH*0.9 );
  
  for( float x = -width; x < width ; x+= 4){
    for( float y = -height; y < height; y+= 4){
      pushMatrix();
        fill( 255, 255, 0);
        translate(x, y);
        rect( 0, 0, 3, 3);
      popMatrix();
    }
  }
  
  for ( int b=0; b < 40; b++){
    
     float diam = random(30, 50);
    
     fill(255,100,100);
     ellipse( random(-200,200), random(-200,200), diam, diam );
    
  }
  
  stroke(0, 255, 255);
  strokeWeight(2);
  line(0, -height, 0, height);
  line(-width, 0, width, 0);
  
  for ( int q=0; q< 200; q+=10){
    noStroke();
    fill(0);
    ellipse( cos(q)+q, sin(q)+q, 10, 10);
  }
  
}
