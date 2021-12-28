import org.junit.Ignore;
import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class ZebraPuzzleTest {

    @Test
    public void residentWhoDrinksWater() {
        ZebraPuzzle zebraPuzzle = new ZebraPuzzle();
        assertEquals("Norwegian", zebraPuzzle.getWaterDrinker());
    }

    
    @Test
    public void residentWhoOwnsZebra() {
        ZebraPuzzle zebraPuzzle = new ZebraPuzzle();
        assertEquals("Japanese", zebraPuzzle.getZebraOwner());
    }

}
