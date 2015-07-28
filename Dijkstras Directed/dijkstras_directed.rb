class Graph

	def initialize
		@graph = {}
		@vertices= [] 
	end
		
	def new_edge(tail, head, weight)
		unless @graph.has_key? tail
			@graph[tail] = {head => weight.to_i}		 
		else
			@graph[tail][head] = weight.to_i         
		end

		unless @graph.has_key? head
			@graph[head] = {tail => weight.to_i  }
		else
			@graph[head][tail] = weight.to_i  
		end

		unless @vertices.include? tail
			@vertices.push tail
		end
    
		unless @vertices.include? head
			@vertices.push head
		end	
	end
	
	def show_path(src, dst)
    @path = []
    v = dst
    @weight = 0
    while @predecessor[v] != nil
      v = @predecessor[v]
      @path.push(v)
      if v == src
        break
      end
    end
    @path.reverse.each do |vertex|
      print "#{vertex}, "
    end
    print dst
	end

	def find_shortest_distance(src)
    @vertices.each do |v|

    end
		print "Start: #{src}\n"
		@vertices.each do |dst|
			print "\nFinish: #{dst}\n"
      print "Path: "
			show_path src, dst
			if @key[dst] != 1.0/0
				print "\nTotal Weight: #{@key[dst]}\n"
			else
				print "There is no path from #{src} to #{dst}\n"
			end
		end
	end
  
  def find_vertex(v)
    @vertices.each do |vertex|
      if v == vertex
        return true
      end
    end
    false
  end
  
	def dijkstras_algorithm(src)
		@key = {}
		@predecessor = {}
		@vertices.each do |i|
      if i == src
        @key[i] = 0
      else
			  @key[i] = 1.0/0
      end
		  @predecessor[i] = nil
		end	

		vertices = @vertices.uniq.compact 
		while (!vertices.empty?)
			x = nil;
			vertices.each do |v|
				if !x || (@key[v] < @key[x])
					x = v
				end
			end
			if (@key[x] == 1.0/0)
				break
			end
			vertices = vertices - [x]
			@graph[x].keys.each do |v|
				total_weight = @key[x] + @graph[x][v]
				if total_weight < @key[v]
					@key[v] = total_weight
					@predecessor[v]  = x
				end
			end
		end
	end
	

end

def fill_graph(graph, file)
  file_lines = []
  File.foreach(file) {|li| file_lines.push(li.chomp)}
  file_lines.shift
  file_lines.each do |li|
    line_array = li.split(' ')
    graph.new_edge(line_array[0], line_array[1], line_array[2].to_i)
  end
  
end

def menu()
  p "Welcome to a demonstration of Disktra's algorithm"
  size = nil
  src = nil
  begin
    p "How large of a graph would you like?"
    p "1. Small"
    p "2. Medium"
    p "3. Large"
    size = $stdin.gets.to_i
  end while !size.between?(1, 3) 
  
  if size == 1 then @selected_graph = "Case1.txt"
  elsif size == 2 then @selected_graph = "Case2.txt"
  else @selected_graph = "Case3.txt" end
  fill_graph(@graph, @selected_graph)
  
  begin
    p "What would you like the source to be? (A, B, C...)"
    src = $stdin.gets.capitalize.chomp
  end while !@graph.find_vertex(src)
  
  @graph.dijkstras_algorithm(src)
  @graph.find_shortest_distance(src)
end
@graph = Graph.new
menu()