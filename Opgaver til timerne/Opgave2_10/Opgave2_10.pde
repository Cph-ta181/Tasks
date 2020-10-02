/*printWord(“Bibliotek”);
få metoden til at skrive ordet et bogstav pr. Linie

repeat(“Bus")
få metoden til at returnere en ny streng hvor ordet er sat sammen lige så mange gange som det er langt (“BusBusBus”)

numberOfE(“Elefant");
få metoden til at returnere hvor mange gange bogstavet E forekommer i ordet

efternavnFornavn(“Joe Biden")
få metoden til at returnere Biden, J.
*/

void setup(){
  printWord("Bibliotek");
  repeat("bus");
  println("\n" + numberOfE("Elephant"));
  println(efternavnFornavn("Joe Biden"));
}

void printWord(String word){
  for(int x = 0 ; x < word.length(); x++){
    println(word.charAt(x));
  }
  
}

void repeat(String word){
  for(int x = 0; x < word.length(); x++){
    print(word);
  }
}

int numberOfE(String word){
  int counter =0;
  for(int x = 0; x < word.length(); x++){
    if(word.charAt(x) == 'e' || word.charAt(x) == 'E' ){
      counter++;
    }
  }
  return counter;
}

String efternavnFornavn(String name){
  String fornavn = name.substring(0, 1);
  String efternavn = name.substring(name.indexOf(" ")+1, name.length());
  String sammensatNavn = efternavn + ", " + fornavn;
  return sammensatNavn;
}
