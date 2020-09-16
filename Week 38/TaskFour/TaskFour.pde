void setup() {
  int[] intArr = new int[]{2, 9, 7};
  String[] stringArr = new String[]{"abc", "def", "fds"};
  boolean[] boolArr = new boolean[]{true, false, false};
  
  printStringArr(stringArr);
  println(sumOfIntArr(intArr));
  println(averageOfIntArr(intArr));
}

public void printStringArr(String[] stringArr) {
  for (String item : stringArr) {
    println(item);
  }
}

public int sumOfIntArr(int[] intArr){
  int x = 0;
  for (int number : intArr) {
    x += number;
  }
  return x;
}

public int averageOfIntArr(int[] intArr){
  int x = 0;
  for (int number : intArr) {
    x += number;
  }
  return x/intArr.length;
}
