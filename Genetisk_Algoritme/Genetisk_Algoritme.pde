String items [] = {"kompas", "bog", "vand", "kamera", "banan", "æble", "ost", "kort"};
int weightList [] = {90,300,1530,320,270,390,230,520,110,90};
int priceList [] = {150,10,200,30,50,40,30,10,70,150};
int maxWeight = 2500;
float fitness = 0;
float weight = 0;

int backpack [] ={0,0,0,0,0,0,0,0,0,0,0,0};

void setup(){
  size(400,400);
  background(51);
  
  for (int i = 0; i < items.length; i++){
    float pick = random(1);
    if (pick > 0.5) {
      backpack[i] = 1;
      weight += weightList[i];
      fitness += weightList[i];
      backpack[10] = (int) fitness;
      backpack[11] = (int) weight;
      print(items[1]);
    }
    println();
  }
  for (int i = 0; i < items.length + 2; i++){
    print(backpack[i] + " ");
  }
  println();
}
