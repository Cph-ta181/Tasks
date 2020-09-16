void setup(){
  Teacher teacher1 = new Teacher("Stine", 32, true);
  Student student1 = new Student("Thomas", 20, false, "A");
  Student student2 = new Student("Foxy", 5, false, "N/A");
  
  println("Teachers name: " + teacher1.name);
  println("Students name: " + student1.name + " Datamatiker hold: " + student1.datamatikerTeam);
  println("Students name: " + student2.name + " Datamatiker hold: " + student2.datamatikerTeam);
}
