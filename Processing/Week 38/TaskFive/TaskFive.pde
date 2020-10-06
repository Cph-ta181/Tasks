void setup() {
  String[] names = new String[]{"Paul", "Poul", "Povl", "Bo", "Ib", "Kim", "Hans", "Grete", "Grete2", "Grete3"};
  Student[] students = new Student[10];

  for (int i = 0; i < students.length; i++) {
    students[i] = new Student(names[i], (int)random(19, 25), false, "A");
  }

  println(studentName(students, 1));
  println(studentName(students, 3));
  println(studentName(students, 9));
  println(studentName(students, 8));
  
  println(studentIndex(students, "Poul"));
  println(studentIndex(students, "Grete"));
  println(studentIndex(students, "grete"));
  println(studentIndex(students, "Hans"));
}


public String studentName(Student[] students, int i) {
  return students[i].name;
}


public Integer studentIndex(Student[] students, String name) {
  for (int x = 0; x < students.length; x++) {
    if (students[x].name == name) {
      return x; 
    }
  }
  return null;
}
