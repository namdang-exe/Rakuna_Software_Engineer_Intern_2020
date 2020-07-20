STDOUT.sync = true
_,width,_,exit_floor,exit_pos,_,_,nb_elevators=gets.split.map(&:to_i)

matrix={}

nb_elevators.times{elevator_floor, elevator_pos=gets.split.map(&:to_i);matrix[elevator_floor]=elevator_pos}

loop{

clone_floor,clone_pos,direction=gets.split;
clone_floor,clone_pos=clone_floor.to_i,clone_pos.to_i; 
elevator_pos = clone_floor==exit_floor ? exit_pos : matrix[clone_floor];
puts (((clone_pos < elevator_pos.to_i) & (direction != "RIGHT")) || ((clone_pos > elevator_pos.to_i) & (direction != "LEFT"))) ? "BLOCK" : "WAIT"
}