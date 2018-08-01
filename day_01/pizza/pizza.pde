float pizzaDiam; 
boolean showGuides;

void setup () {
  
  size( 600, 600 );
  frameRate(1);
  noStroke();
  
  showGuides = false;
  pizzaDiam = width/1.5;
  
}

void guides () {
  
  pushStyle();
    stroke(0, 255, 255);
    strokeWeight(1);
    line(0, -height, 0, height);
    line(-width, 0, width, 0);
  popStyle();
  
}

void prepareTable () {

  for( int squareX = 0; squareX<width; squareX+=100 ){
    for( int squareY = 0; squareY < height; squareY+=100){
    pushStyle();
      fill(255,0,0);
      noStroke();
      rect(squareX, squareY, 50, 50);
      rect(squareX+50, squareY+50, 50, 50);
      popStyle();
    }
  }
  
}

void makeDough () {

  fill( 255, 200, 0);
  ellipse( 0, 0, pizzaDiam, pizzaDiam );
  
}

void addSauce() {

  fill( 255, 0, 0);
  ellipse( 0, 0, pizzaDiam*0.9, pizzaDiam*0.9 );
  
}

void addCheese () {
  
  for ( int b=0; b < 40000; b++){
  
     float diam = random(30, 50);
  
     fill(255,random(40,100),random(40,100));
    
     pushMatrix();
       rotate( random(0,100) );
       translate( 0, random((-pizzaDiam/2)*0.9, (pizzaDiam/2)*0.9 ) );
       fill( 255, 255, 0);
       rect( 0, 0, 3, 3);
     popMatrix();
  
  }
  
}

void addPepperoni () {

  for ( int b=0; b < 25; b++){
    
     float diam = random(30, 50);
    
     fill(255,random(40,100),random(40,100));
     
     pushMatrix();
       rotate( random(0,100) );
       translate( 0, random((-pizzaDiam/2)*0.8, (pizzaDiam/2)*0.8 ) );
       ellipse( 0, 0, diam, diam );
     popMatrix();
    
  }
    
}

void draw () {
  
  background( 255 );
  
  // Tablecloth pattern
  prepareTable();
  
  // Center pizza
  translate( width/2, height/2 );
  
  // Dough
  makeDough();
  
  // Add sauce
  addSauce();

  // Add cheese
  addCheese();
  
  // Add pepperonis
  addPepperoni();

  if( showGuides ){
    guides();
  }
  
}
