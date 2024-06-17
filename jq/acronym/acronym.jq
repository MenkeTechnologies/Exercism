.phrase | ascii_upcase | [ scan("[A-Z][\\w']*") | explode | first ] | implode
