void setup() {
  int[] intArr = new int[]{2, 9, 7, 2, 4, 10};
  String[] stringArr = new String[]{"abc", "def", "fds"};
  boolean[] boolArr = new boolean[]{true, false, false};

  printStringArr(stringArr);
  println(sumOfIntArr(intArr));
  println(averageOfIntArr(intArr));
  
  intArr = intArrSort(intArr);
  
  for (int x = 0; x<intArr.length; x++) {
    print(intArr[x]+ ", ");
  }
}

public void printStringArr(String[] stringArr) {
  for (String item : stringArr) {
    println(item);
  }
}

public int sumOfIntArr(int[] intArr) {
  int x = 0;
  for (int number : intArr) {
    x += number;
  }
  return x;
}

public int averageOfIntArr(int[] intArr) {
  int sum  = sumOfIntArr(intArr);
  return sum/intArr.length;
}

public int[] intArrSort(int[] intArr) {
  int n = intArr.length;
  boolean swapped = true;
  while (swapped) {
    swapped = false;
    for (int i = 1; i<n-1; i++) {
      if (intArr[i-1] > intArr[i]) {
        int temp = intArr[i-1];
        intArr[i-1] = intArr[i];
        intArr[i] = temp;
        swapped = true;
      }
    }
    n -=1;
  }
  return intArr;
}
