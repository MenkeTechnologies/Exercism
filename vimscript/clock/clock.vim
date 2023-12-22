function! ToString() dict abort
  return printf('%02d:%02d', self.h, self.m)
endfunction

function! Add(d) dict abort
  let c = Clock(self.h, self.m + a:d)
  let self.h = c.h
  let self.m = c.m
endfunction

function! Subtract(d) dict abort
   call self.Add(-a:d)
endfunction

function! Clock(hours, minutes) abort
  let hhmm = (60 * a:hours + a:minutes) % (24 * 60)
  if hhmm < 0
     let hhmm += 24 * 60
  endif
  let h = hhmm / 60
  let m = hhmm % 60
  return {"h": h, "m": m, "ToString" : function("ToString"), "Add" : function("Add"), "Subtract" : function("Subtract")}
endfunction
