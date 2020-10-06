boolean happy = true;

void setup() {
   if (iAmHappy())
   {
     println("I clap my hands");
   }
   else
   {
     println("I don't clap my hands"); 
   }
   
   println(sumOfTwo(10, 2));
   println(upperCaseWord("abc"));
   println(isUpper("abc"));
   
   
}


boolean iAmHappy()
{
  return happy;
}

public int sumOfTwo(int a, int b){
  return a+b;
}

public String upperCaseWord(String input){
  return input.toUpperCase();
}

public boolean isUpper(String input){
  return Character.isUpperCase(input.charAt(0));
}
