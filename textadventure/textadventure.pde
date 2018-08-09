String scene;

void setup () {

  size( 800, 500 );

  PFont font = createFont("Helvetica-Normal.ttf", 18);
  //smooth(10);
  textFont(font);

  scene = "start";

  //println("You just won a free vacation!");
  //println("Yes, you!");
  //prompt("Press enter to continue");

}

void changeScene ( String thisScene ) {
   scene = thisScene;
}

void lineBreak () {
  println("- - - -");
}

void emptyLine () {
  println(" ");
}

void prompt ( String message ){
  emptyLine();
  lineBreak();
  emptyLine();
  println( message );
  emptyLine();
}

void story ( String phrase ) {

  pushStyle();
  textSize(30);
  text( phrase, 20, 20, width-40, height-200);
  popStyle();
  
}

void option1 ( String letter, String description ){

  pushStyle();
  rect(20, height-20-100, width/2-20, 100);
  String newString = "(" + letter + ") " + description;
  fill(255);
  textAlign(CENTER, CENTER);
  text(
  newString
  , 25, height-110, width/2-20, 80
  );
  popStyle();
  
}
void option2 ( String letter, String description ){

  pushStyle();
  rect(10+width/2, height-20-100, width/2-20, 100);
  String newString = "(" + letter + ") " + description;
  fill(255);
  textAlign(CENTER, CENTER);
  text(
  newString
  , 10+width/2, height-110, width/2-20, 80
  );
  popStyle();
  
}

void startScene () {

  //fill(0);
  //ellipse(10,10,10,10);
  //textSize( 32 );
 
  fill(50);
  //text(s, 10, 10, width, height);
  
  story(
  "Where would you like to go?"
  );
  option1("b", "the beach");
  option2("m", "a mountain");

}

void beach () {
  
  story(
  "You're at the beach. Do you want to go swimming or parasailing?"
  );
  option1("s","swimming");
  option2("p","parasailing");


}

void mountain (){

  story("You're at a mountain. Do you want to go hiking or camping?");
  option1("h","hiking");
  option2("c","camping");

}

void swimming () {
  
  story("You are swimming in the ocean. Do you want to go farther into the ocean?");
  option1("y","yes, I want to swim farther away");
  option2("n","no, I want to wade close to the shore");

}

void parasailing () {

  story("You are parasailing. You have the option to go first or stay in the boat and wait for the next turn. Would you like to go first or pass?");
  option1("f","go first");
  option2("p","pass and wait for the next turn");

}

void hiking () {

  story("You are hiking. There is an unmarked trail, do you take it?");
  option1("y","yes");
  option2("n","no");

}

void camping () {

  story("You have set up camp and now it is getting late. You realized that you left food outside of a container, but you have plenty of food anyway. Should you get out of your sleeping bag and continue to clean?");
  option1("y","yes, clean up camp");
  option2("n","stay in bed, I am tired");

}

// Start over?

void sharks () {

  story("You decided to swim farther away from the shore, but you were unable to hear the lifeguard's whistle. You have been eaten by a shark :(");
  option1("y","yes, start over");
  option2("n","no, I'm done");

}


void jellyfish () {

  story("You decided to stay closer to the shore. A swarm of jellyfish stings your legs and feet and you fall down. Unable to walk, you drown in three inches of water.");
  option1("y","yes, start over");
  option2("n","no, I'm done");

}

void flyaway () {

  story("You selfishly decided to go first. Unfortunately, because you were in a hurry, you did not check to see that your rope was tired properly and have flown away. You are never to be found.");
  option1("y","yes, start over");
  option2("n","no, I'm done");

}

void boatfire () {

  story("You selflessly decide to allow another persont to go first. Unfortunately, the boat spontaneously catches fire due to an engine failure. Start over?");
  
  option1("y","yes, start over");
  option2("n","no, I'm done");

}

void rockslide () {

  story("Good choice in not taking the unmarked trail. Unfortunately, the marked trail is closed due to a possible rockslide warning.");
  option1("y","yes, start over");
  option2("n","no, I'm done");

}

void shotbyhunter (){

  story("Good call! It is so much fun to take the road less traveled and explore. Unfortunately, it is hunting season and you are not wearing bright colors. You are shot by a hunter.");
  option1("y","yes, start over");
  option2("n","no, I'm done");

}


void wolves () {

  story("The food left out attracts wolves looking for a midnight snack. You are next on the menu.");
  option1("y","yes, start over");
  option2("n","no, I'm done");

}

void hypothermia (){

  story("Your deligence in keeping a clean camp is a great attribute. Unfortunately, you are not so dilgent in packing your thermals. The temperatures fall below 20ºF and you die from hypothermia.");
  option1("y","yes, start over");
  option2("n","no, I'm done");

}

void end(){

  story("Press Enter to Play Again");

}

void error () {

  println("oops! something went wrong");
  changeScene("start");

}

void draw () {
  
  background(140);

   if ( scene == "start" ){
  
     startScene();
  
   } else if ( scene == "beach" ){
  
     beach();
  
   } else if ( scene == "mountain" ) {
  
     mountain();
  
   } else if ( scene == "swimming" ) {
  
     swimming();
  
   } else if ( scene == "parasailing" ) {
  
     parasailing();
  
   } else if ( scene == "hiking" ) {
  
     hiking();
  
   } else if ( scene == "camping" ) {
  
     camping();
  
   } else if ( scene == "sharks" ) {
  
     sharks();
  
   } else if ( scene == "jellyfish" ) {
  
     jellyfish();
  
   } else if ( scene == "flyaway" ) {
  
     flyaway();
  
   } else if ( scene == "boatfire" ) {
  
     boatfire();
  
   } else if ( scene == "rockslide" ) {
  
     rockslide();
  
   } else if ( scene == "shotbyhunter" ) {
  
     shotbyhunter();
  
   } else if ( scene == "wolves" ) {
  
     wolves();
  
   } else if ( scene == "hypothermia" ) {
  
     hypothermia();
  
   } else if ( scene == "end" ) {
  
     end();
  
   } else {
  
     changeScene("error");
  
   }

}

void keyPressed () {

  if ( scene == "start" ){

    switch( key ){
      case 'b':
      case 'B':
        changeScene("beach");
        break;
      case 'm':
      case 'M':
        changeScene("mountain");
        break;
    }

  } else if ( scene == "beach" ){

    switch( key ){
      case 's':
      case 'S':
        changeScene("swimming");
        break;
      case 'p':
      case 'P':
        changeScene("parasailing");
        break;
    }

  } else if ( scene == "mountain" ) {

    switch( key ){
      case 'h':
      case 'H':
        changeScene("hiking");
        break;
      case 'c':
      case 'C':
        changeScene("camping");
        break;
    }

  } else if ( scene == "swimming" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("sharks");
        break;
      case 'n':
      case 'N':
        changeScene("jellyfish");
        break;
    }

  } else if ( scene == "parasailing" ) {

    switch( key ){
      case 'f':
      case 'F':
        changeScene("flyaway");
        break;
      case 'p':
      case 'P':
        changeScene("boatfire");
        break;
    }

  } else if ( scene == "hiking" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("shotbyhunter");
        break;
      case 'n':
      case 'N':
        changeScene("rockslide");
        break;
    }

  } else if ( scene == "camping" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("hypothermia");
        break;
      case 'n':
      case 'N':
        changeScene("wolves");
        break;
    }

  } else if ( scene == "sharks" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "jellyfish" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "flyaway" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "boatfire" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "rockslide" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "shotbyhunter" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "wolves" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "hypothermia" ) {

    switch( key ){
      case 'y':
      case 'Y':
        changeScene("start");
        break;
      case 'n':
      case 'N':
        changeScene("end");
        break;
    }

  } else if ( scene == "end" ) {

    switch( key ){
      case ENTER:
         changeScene("start");
         break;
    }
 

  } else {

    changeScene("error");

  }

}
