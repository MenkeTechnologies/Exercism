component {

    function convert(number)
    {

        r = "";

        r &= number % 3 == 0 ? 'Pling' : '';
        r &= number % 5 == 0 ? 'Plang' : '';
        r &= number % 7 == 0 ? 'Plong' : '';

        if (r == '') {
            return toString(number);
        }

        return r;


    }

}
