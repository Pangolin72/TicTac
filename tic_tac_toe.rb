require "./grid.rb"

board  = Grid.new(60,30," ")
cross  = Grid.new(14,8," ")
naught = Grid.new(14,8," ")
horiz  = Grid.new(60,1,"#")
vert   = Grid.new(2,30,"#")

#### Define Board ######
board.insert(vert,19,0)
board.insert(vert,39,0)
board.insert(horiz,0,10)
board.insert(horiz,0,20)

### Define Crosses #####
 
i=0
for n in 0..3
		cross.insert("X", i*2, n)
	  cross.insert("X",(i*2+1), n)
	  cross.insert("X", i*2, 7-n)
	  cross.insert("X",(i*2+1), 7-n)	
		cross.insert("X",(cross.length-2*i), n)
		cross.insert("X",(cross.length-2*i-1), n)
		cross.insert("X",(cross.length-2*i), 7-n)
		cross.insert("X",(cross.length-2*i-1), 7-n)
		i += 1
end

#### Define Naughts ####	

naught.insert(['o','O','O','O','O','O','o'], 4,0)
naught.insert(['O','o','o','o','o','o','O'], 4,7)
naught.insert([['O','O'],['O','O']],0,3)
naught.insert([['O','O'],['O','O']],13,3)
naught.insert(['o','O'],2,1)
naught.insert(['o','O'],11,6)
naught.insert(['O','o'],11,1)
naught.insert(['O','o'],2,6)
naught.insert(['O','O'],1,2)
naught.insert(['O','O'],12,2)
naught.insert(['O','O'],1,5)
naught.insert(['O','O'],12,5)


##### Insert X's into Board (Test)  ####
board.insert(naught,2,1) #square 1
board.insert(naught,22,11) #square 5
board.insert(cross,43, 21) #square 9

board.inspect 
naught.inspect
cross.inspect


