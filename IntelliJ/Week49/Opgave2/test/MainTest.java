import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class MainTest {

    @Test
    void grassTest(){
        assertEquals(4, Main.whenToCut(1,4));
        assertEquals(0, Main.whenToCut(1,0.8));
        assertEquals(1, Main.whenToCut(1,1.8));
    }
    
}