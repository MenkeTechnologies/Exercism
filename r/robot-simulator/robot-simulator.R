coords = list('NORTH'=c(0,1), 'EAST'=c(1,0), 'SOUTH'=c(0,-1), 'WEST'=c(-1,0))
turn = list('NORTH'=0, 'EAST'=1, 'SOUTH'=2, 'WEST'=3)
directions = c('NORTH', 'EAST', 'SOUTH', 'WEST')

new_robot = function(coordinates, direction) structure(list(coordinates=coordinates, direction=direction), class = 'robot')

turnMod = function(direction, inc) (direction + inc) %% 4 + 1

move = function(robo, commands) {
  for (com in strsplit(commands,'')[[1]]) {
    if (com == 'A') robo$coordinates = robo$coordinates + coords[[robo$direction]]
    else if (com == 'R') robo$direction = directions[turnMod(turn[[robo$direction]], 1)]
    else robo$direction = directions[turnMod(turn[[robo$direction]], 3)]
  }
  robo
}
