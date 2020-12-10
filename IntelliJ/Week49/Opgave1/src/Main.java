import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args){
        List<String> list = new ArrayList<String>();
        list.add("a");
        list.add("b");
        list.add("abc");
        list.add("d");
        list.add("123asd");

        System.out.println(insertString(list, "a"));
        System.out.println(insertString(list, "e"));
        System.out.println(insertString(list, "abc"));
        System.out.println(insertString(list, ""));

    }

    public static boolean insertString (List<String> stringList, String stringToAdd){
        if (stringToAdd == null ||stringToAdd == "") {
            return false;
        }
        else if (!stringList.contains(stringToAdd)){
            stringList.add(stringToAdd);
            return true;
        }

        return false;
    }
}
