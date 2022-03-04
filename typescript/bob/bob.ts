export const hey = (message: string) => {
  message = message.replace(/\s+/g, '')
  if (message.length === 0){
    return 'Fine. Be that way!'
  }
  if (message.match(/[A-Z]/) && !message.match(/[a-z]/)) {
     return message.match(/\?$/) ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
  }
  return message.match(/\?$/) ? 'Sure.' : 'Whatever.'
};

