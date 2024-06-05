ArmstrongNumbers = require './armstrong-numbers'

describe 'Armstrong Numbers', ->
  it 'zero is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 0
    expect(result).toEqual true

  it 'single-digit numbers are Armstrong numbers', ->
    result = ArmstrongNumbers.isArmstrongNumber 5
    expect(result).toEqual true
    
  it 'there are no two-digit Armstrong numbers', ->
    result = ArmstrongNumbers.isArmstrongNumber 10
    expect(result).toEqual false
    
  it 'three-digit number that is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 153
    expect(result).toEqual true
    
  it 'three-digit number that is not an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 100
    expect(result).toEqual false
    
  it 'four-digit number that is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9474
    expect(result).toEqual true
    
  it 'four-digit number that is not an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9475
    expect(result).toEqual false
    
  it 'seven-digit number that is an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9926315
    expect(result).toEqual true
    
  it 'seven-digit number that is not an Armstrong number', ->
    result = ArmstrongNumbers.isArmstrongNumber 9926314
    expect(result).toEqual false

