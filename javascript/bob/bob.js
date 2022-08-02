export const hey = (s) => {

  s = s.replace(/\s+/g, '')

  if (s.length === 0){
    return 'Fine. Be that way!'
  }

  if (s.match(/[A-Z]/) && !s.match(/[a-z]/)) {
     return s.match(/\?$/) ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
  }

  return s.match(/\?$/) ? 'Sure.' : 'Whatever.'

};
