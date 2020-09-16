void setup(){
  printEmptyLine();
  printString("abc");
  printNameAndAge(20, "Thomas");
}

void printEmptyLine(){
  println();
}

void printString(String input){
  println(input);
}

void printNameAndAge(int age, String name){
  println("My name is " + name + ", I am " + age + " years old");
}
