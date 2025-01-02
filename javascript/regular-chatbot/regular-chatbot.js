export const isValidCommand = command => /^chatbot/i.test(command)

export const removeEmoji = message => message.replace(/emoji\w+/g, "")

export const checkPhoneNumber = number => /\+\d/.test(number) ? "Thanks! You can now download me to your phone." : `Oops, it seems like I can't reach out to ${number}`

export const getURL = userInput => userInput.match(/\b\w+\.\w+/g)

export const niceToMeetYou = fullName => `Nice to meet you, ${fullName.replace(/(\w+), (\w+)/, "$2 $1")}`

