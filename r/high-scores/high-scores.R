scores_list = function(scores) scores

latest = function(scores) tail(scores, n=1)

personal_best = function(scores) max(scores)

personal_top_three = function(scores) head(sort(scores, decreasing=T), n=3)
