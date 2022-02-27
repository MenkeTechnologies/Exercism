component {

    function square(input)
    {
        if (input < 1 || input > 64) {
            return - 1;
        }
        return createObject("java", "java.math.BigInteger").init(2).pow(createObject("java", "java.math.BigInteger").init(input - 1)).toString();

    }

    function total(input)
    {
        var total = createObject("java","java.math.BigInteger").init( 0 );
        for (var i = 1; i <= 64; ++i) {
            total += square(i);
        }
        return total;
    }

}
