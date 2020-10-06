int a = 0;
int b = 0;

if (a == 10 || b == 10 || a+b == 10) {
  println("Success!");
} else {
  println("Failure!");
}

int x = 8;
int y = 11;
int z = 11;
if (x+y+z == 30) {
  if (x != 10 && x != 20 && x != 30 && y != 10 && y != 20 && y != 30 && z != 10 && z != 20 && z != 30) {
    println("Success!");
  } else {
    println("Failure!");
  }
  
} else {
  println("Failure!");
}
