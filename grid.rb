class Grid
	attr_accessor :mat, :length, :depth
#initialize matrix (array)
# different ways of initializing arrays: 
#	* an empty array of size x-wide and y-deep
# * an x by y array with a single value for all cells
# * an array x by x (one value entered)
# * an x by x array with a single value for all cells
# * a csv with semicolons separating rows
	
	def initialize(x,y = nil, c = nil )  #make y optional...
		if y == nil
			y = x
		elsif c == nil
			c = y
			y = x
		end
		@mat = Array.new(y){Array.new(x,c)}
		@length = x
		@depth = y
	end

##### OUTPUT ####

	def inspect
		mat.each do |x|
			x.each do |y|
				print y
			end
			print "\n"
		end
	end
	
	def to_s
		mat.inspect
		mat.each do |x|
			x.each do |y|
				print y
			end
			print "\n"
		end
	end
	
	def [](x = nil,y = nil)
		out = []
		if x == nil		
		return mat[y]
		elsif y == nil
				mat.each do |n|
				out.push n[x]		
			end
		return out
		else
			return mat[y][x]
		end
	end
	
#### MODIFY ####
	def []= (x,y,o)
		#o = gets.chomp
		#if o = #number
		mat[y][x] = o
	end
	
	def insert(matrix, x, y)
		if matrix.is_a?(String) || matrix.is_a?(Numeric)
			mat[y][x] = matrix
		else
			x0 = matrix.length
			y0 = matrix[0].length
			x1 = x
			y1 = y
			i=0
			j=0
			mat.each do |vert|
				if mat.index(vert) >= x1 && i <= x0
					vert.each do |cell|
						if vert.index(cell) >= y1 && j <= y0
							mat.insert(matrix[i][j],vert,cell)
								if j >= y0
									j=0
									y1 = y
									break
								end
							y1 += 1
							j += 1
						else
							puts 'error'
						end
					i += 1
					puts j," ",i
					puts ""
					end
					i += 1
				end
			end
			#for n in x..(x + x1-1)
				#for m in y..(y + y1-1)
				#	mat[m][n] = matrix[j][i]
				#	i +=1
				#end
				#i = 0
				#j += 1
			#end
		end
	end
	
	
#accesses and changes values in the grid
#access and change submatrix
end

#### TEST #####
#grid1 = Grid.new(5,3,'#')
#grid1[1,2] = 0
#puts "grid1:"
#puts grid1
# Q: how to lose the address at the end of output?
# A: use inspect

#grid2 = Grid.new(9,1)

#grid3 = Grid.new(9)
#puts "grid2:"
#grid2.inspect
#puts "grid3:"
#grid3.inspect
#puts "grid1.length:"
#puts grid1.length
#puts "grid1[1,2]"
#puts grid1[1,2]
#puts "grid1[1]:"
#puts grid1[1]
#puts "grid1[nil,1]:"
#puts grid1[nil,1]
#puts "grid1[1].length:"
#puts grid1[1].length
#puts "grid2.insert(grid1,2,2):"

#grid2.insert(grid1,2,3)

#grid2.inspect