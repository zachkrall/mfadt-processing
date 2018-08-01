// Let's make a Pepperoni Pizza

void main() {

  preheatOven( 350 );

  // 1. Gather the ingredients
  gatherTheIngredients( dough, pepperoni, tomatoSauce, cheese );

  // 2. Knead then flatten dough
  kneadDough( dough );
  flattenDough( dough, circle );

  // 3. Add toppings
  addTopping( tomatoSauce );
  addTopping( cheese );
  addTopping( pepperoni );

  // 4. Put into oven
  if( oven > 350 ){
    putPizzaInOven();
  } else {
    wait();
  }

  // 5. Take pizza out when ready
  if ( minutesPizzaHasCooked == 45 ){
    takePizzaOut();
    println('Pizza is ready!');
  } else {
    wait();
  }

  // 6. Eat the Pizza
  enjoyPizzaWithFriends();

}
