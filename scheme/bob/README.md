# Bob

Welcome to Bob on Exercism's Scheme Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Bob is a lackadaisical teenager. In conversation, his responses are very limited.

Bob answers 'Sure.' if you ask him a question, such as "How are you?".

He answers 'Whoa, chill out!' if you YELL AT HIM (in all capitals).

He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

He says 'Fine. Be that way!' if you address him without actually saying
anything.

He answers 'Whatever.' to anything else.

Bob's conversational partner is a purist when it comes to written communication and always follows normal rules regarding sentence punctuation in English.


## Track Specific Notes

See if you can
clearly separate responsibilities in your code\.

## Running and testing your solutions


### From the command line

Simply type `make chez` if you're using ChezScheme or `make guile` if you're using GNU Guile\.
Sometimes the name for the scheme binary on your system will differ from the defaults\.
When this is the case, you'll need to tell make by running `make chez chez=your-chez-binary` or `make guile guile=your-guile-binary`\.

### From a REPL

* Enter `(load "test.scm")` at the repl prompt\.
* Develop your solution in `bob.scm` reloading as you go\.
* Run `(test)` to check your solution\.

### Failed Test Cases

If some of the test cases fail, you should see the failing input and the expected output\.
The failing input is presented as a list because the tests call your solution by `(apply bob input-list)`\.
To learn more about `apply` see [The Scheme Programming Language -- Chapter 5](https://www.scheme.com/tspl4/control.html#./control:h1)

## Source

### Created by

- @canweriotnow

### Contributed to by

- @cyborgsphinx
- @guygastineau
- @jitwit
- @kytrinyx

### Based on

Inspired by the 'Deaf Grandma' exercise in Chris Pine's Learn to Program tutorial. - http://pine.fm/LearnToProgram/?Chapter=06