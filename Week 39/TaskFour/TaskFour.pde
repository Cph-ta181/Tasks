void setup() {
  printDivisors(100);
  int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };
  printSmallerNumbers(5);
  fibbo(1,1);
}

void printDivisors(int input) {
  for (int i = 1; i <= 100; i++) {
    if (input % i == 0) {
      println(i);
    }
  }
}

int randomElement(int[] arr) {
  int rnd = (int)random(0, arr.length-1);
  return arr[rnd];
}

void printSmallerNumbers(int x){
  println(x);
  if(x>0){
    printSmallerNumbers(x-1);
  }
}

void fibbo(int x, int y){
  print(y + "\t");
  if(y< 10000){
  fibbo(y, x+y);
  }
}
