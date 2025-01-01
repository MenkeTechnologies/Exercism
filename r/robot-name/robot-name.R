new_robot = function() {
  robot = structure(list(name=''), class = "robot" )
  robot$name = paste0(paste0(sample(LETTERS, 2, replace=F), collapse=''), paste0(sample(0:9, 3, replace=F), collapse=''))
  robot
}

reset_robot = function(robot) {
  new_robot()
}
