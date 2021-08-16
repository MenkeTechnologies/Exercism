class Bob {
    static response(String input) {

        input = input.replaceAll('\\s+', '')

        if (input.isEmpty()) {
            return "Fine. Be that way!"
        }

        if (input.matches('.*[A-Z]+.*') && !input.matches('.*[a-z]+.*')) {
            if (input.matches('.*\\?$')) {
                return "Calm down, I know what I'm doing!"

            }

            return "Whoa, chill out!"

        }
        if (input.matches('.*\\?$')) {
            return 'Sure.'
        }

        'Whatever.'
    }
}
