import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.entry;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

public class DialingCodesTest {

    @Test
    @DisplayName("getCodes initially returns an empty map")
    public void testGetCodesReturnsMap() {
        DialingCodes dialingCodes = new DialingCodes();

        assertThat(dialingCodes.getCodes()).isEmpty();
    }

    @Test
    
    @DisplayName("setDialingCode adds new entry")
    public void testSetDialingCodeAddsEntry() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.setDialingCode(679, "Fiji");

        assertThat(dialingCodes.getCodes()).containsOnly(entry(679, "Fiji"));
    }

    @Test
    
    @DisplayName("setDialingCode updates existing entry")
    public void testSetDialingCodeUpdatesEntry() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.setDialingCode(679, "Unknown");
        dialingCodes.setDialingCode(679, "Fiji");

        assertThat(dialingCodes.getCodes()).containsOnly(entry(679, "Fiji"));
    }

    @Test
    
    @DisplayName("setDialingCode with multiple entries")
    public void testSetDialingCodeWithMultipleEntries() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.setDialingCode(60, "Malaysia");
        dialingCodes.setDialingCode(233, "Retrieving...");
        dialingCodes.setDialingCode(56, "Chile");
        dialingCodes.setDialingCode(233, "Ghana");

        assertThat(dialingCodes.getCodes()).containsOnly(entry(60, "Malaysia"), entry(233, "Ghana"),
                entry(56, "Chile"));
    }

    @Test
    
    @DisplayName("getCountry returns a code's country")
    public void testGetCountryForCode() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.setDialingCode(55, "Brazil");

        assertThat(dialingCodes.getCountry(55)).isEqualTo("Brazil");
    }

    @Test
    
    @DisplayName("getCountry returns updated country")
    public void testGetCountryForUpdatedCode() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.setDialingCode(962, "Retrieving...");
        dialingCodes.setDialingCode(962, "Jordan");

        assertThat(dialingCodes.getCountry(962)).isEqualTo("Jordan");
    }

    @Test
    
    @DisplayName("addNewDialingCode adds new codes")
    public void testAddNewDialingCodeAddsNewCodes() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.addNewDialingCode(32, "Belgium");
        dialingCodes.addNewDialingCode(379, "Vatican City");

        assertThat(dialingCodes.getCodes()).containsOnly(entry(32, "Belgium"),
                entry(379, "Vatican City"));
    }

    @Test
    
    @DisplayName("addNewDialingCode leaves already added code")
    public void testAddNewDialingCodeLeavesExistingCode() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.addNewDialingCode(32, "Belgium");
        dialingCodes.addNewDialingCode(379, "Vatican City");
        dialingCodes.addNewDialingCode(32, "Other");

        assertThat(dialingCodes.getCodes()).containsOnly(entry(32, "Belgium"),
                entry(379, "Vatican City"));
    }

    @Test
    
    @DisplayName("addNewDialingCode leaves already added country")
    public void testAddNewDialingCodeLeavesExistingCountry() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.addNewDialingCode(61, "Australia");
        dialingCodes.addNewDialingCode(1000, "Australia");

        assertThat(dialingCodes.getCodes()).containsOnly(entry(61, "Australia"));
    }

    @Test
    
    @DisplayName("findDialingCode returns a country's dialing code")
    public void testFindDialingCode() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.addNewDialingCode(43, "UK");

        assertThat(dialingCodes.findDialingCode("UK")).isEqualTo(43);
    }

    @Test
    
    @DisplayName("findDialingCode returns null for country not yet added")
    public void testFindDialingCodeWithUnlistedCountry() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.addNewDialingCode(43, "UK");

        assertThat(dialingCodes.findDialingCode("Unlisted")).isNull();
    }

    @Test
    
    @DisplayName("updateDialingCode updates the map")
    public void testUpdateDialingCode() {
        DialingCodes dialingCodes = new DialingCodes();
        dialingCodes.addNewDialingCode(88, "Japan");
        dialingCodes.updateCountryDialingCode(81, "Japan");

        assertThat(dialingCodes.getCodes()).containsOnly(entry(81, "Japan"));
    }
}
