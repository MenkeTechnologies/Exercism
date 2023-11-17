let g:SPY = 31557600.0
let g:planets = { 'Earth': 1, 'Mercury': 0.2408467, 'Venus': 0.61519726, 'Mars': 1.8808158, 'Jupiter': 11.862615, 'Saturn': 29.447498, 'Uranus': 84.016846, 'Neptune': 164.79132}

function! Age(planet, seconds) abort
    if !has_key(g:planets, a:planet)
        throw 'not a planet'
    endif

    return a:seconds / g:SPY / g:planets[a:planet]
endfunction
