String items []   = {"kort", "kompas", "vand", "sandwich", "sukker", "dåsemad", "banan", "æble", "ost", "øl", "solcreme", "kamera", "t-shirt", "bukser", "paraply", "vandtætte bukser", "vandtæt overtøj", "pung", "solbriller", "håndklæde", "sokker", "bog", "notesbog", "telt"};
int weightList [] = {150, 35, 200, 160, 60, 45, 60, 40, 30, 10, 70, 30, 15, 10, 40, 70, 75, 80, 20, 12, 50, 10, 1, 150};
int priceList []  = {90, 130, 1530, 500, 150, 680, 270, 390, 230, 520, 110, 320, 240, 480, 730, 420, 430, 220, 70, 180, 40, 300, 900, 2000};
int maxWeight     =5000;
int totalFitness = 0;
float fitness     = 0;
float weight      = 0;

int backpack []   = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int numBackpack = 0;
int population = 50;

PrintWriter outpur;

void setup() {
  size(400, 400);
  background(50);
  outpur = createWriter("data.txt");

  for (int i = 0; i < items.length; i++) {
    float pick = random(1);
    if (pick > 0.5) {
      backpack[i] = 1;
      weight += weightList[i];
      fitness += priceList [i];
      backpack[24]=(int) fitness; 
      backpack[25]=(int) weight;
      print(items[i]);
    }
    println();
  }
  for (int i = 0; i < items.length + 2; i++) {
    print(backpack[i] + " ");
  }
  println();
  
  println(fitness);
  println(weight);
}
