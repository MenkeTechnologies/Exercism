Microblog = require './micro-blog'

describe 'Micro Blog', ->
  it 'English language short', ->
    result = Microblog.truncate 'Hi'
    expect(result).toEqual 'Hi'

  it 'English language long', ->
    result = Microblog.truncate 'Hello there'
    expect(result).toEqual 'Hello'

  it 'German language short (broth)', ->
    result = Microblog.truncate 'brühe'
    expect(result).toEqual 'brühe'

  it 'German language long (bear carpet → beards)', ->
    result = Microblog.truncate 'Bärteppich'
    expect(result).toEqual 'Bärte'

  it 'Bulgarian language short (good)', ->
    result = Microblog.truncate 'Добър'
    expect(result).toEqual 'Добър'

  it 'Greek language short (health)', ->
    result = Microblog.truncate 'υγειά'
    expect(result).toEqual 'υγειά'

  it 'Maths short', ->
    result = Microblog.truncate 'a=πr²'
    expect(result).toEqual 'a=πr²'

  it 'Maths long', ->
    result = Microblog.truncate '∅⊊ℕ⊊ℤ⊊ℚ⊊ℝ⊊ℂ'
    expect(result).toEqual '∅⊊ℕ⊊ℤ'

  it 'English and emoji short', ->
    result = Microblog.truncate 'Fly 🛫'
    expect(result).toEqual 'Fly 🛫'

  it 'Emoji short', ->
    result = Microblog.truncate '💇'
    expect(result).toEqual '💇'
    
  it 'Emoji long', ->
    result = Microblog.truncate '❄🌡🤧🤒🏥🕰😀'
    expect(result).toEqual '❄🌡🤧🤒🏥'

  it 'Royal Flush?', ->
    result = Microblog.truncate '🃎🂸🃅🃋🃍🃁🃊'
    expect(result).toEqual '🃎🂸🃅🃋🃍'
