import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class MainTest {

    @org.junit.jupiter.api.Test
    void insertString() {
        List<String> list = new ArrayList<String>();
        Main.insertString(list, "a");
        assertEquals(1, list.size());
    }

    void insertTest(){
        List<String> list = new ArrayList<String>();
        list.add("a");
        assertEquals(false, Main.insertString(list, "a"));
        assertEquals(true, Main.insertString(list, "b"));
    }
}