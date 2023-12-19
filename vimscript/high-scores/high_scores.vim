function! Scores() dict abort
   return self.lst
endfunction

function! Latest() dict abort
   return self.lst[-1]
endfunction

function! Best() dict abort
   return max(self.lst)
endfunction

function! Top3() dict abort
    return reverse(sort(copy(self.lst), 'n'))[:2]
endfunction

function! HighScores(scores) abort
  return {'lst': a:scores, 'Scores': function('Scores'), 'Latest': function('Latest'), 'PersonalBest': function('Best'), 'PersonalTopThree': function('Top3')}
endfunction
