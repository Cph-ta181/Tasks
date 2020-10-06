void setup() {
  int[] intArr = new int[]{8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};

  for (int number : intArr) {
    print(number + ", ");
  }
  
  int[] sortedArr = intArrSort(intArr);
  
  println();
  for(int number : sortedArr){
    print(number + ", ");
  }
  
}

public int[] intArrSort(int[] intArr) {
  int n = intArr.length;
  boolean swapped = true;
  while (swapped) {
    swapped = false;
    for (int i = 1; i < n; i++) {
      if (intArr[i-1] > intArr[i]) {
        int temp = intArr[i-1];
        intArr[i-1] = intArr[i];
        intArr[i] = temp;
        swapped = true;
      }
    }
    n --;
  }
  return intArr;
}
