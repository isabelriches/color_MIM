function [new_gen] = color_check_neighbors(current_gen)

darkred     = [0.6350, 0.0780, 0.1840];
lightgreen  = [0.4660, 0.6740, 0.1880];
cyan        = [0.2, 0.8, 0.8];
purple      = [0.4940, 0.1840, 0.5560];

new_gen = zeros(100);
for m = 2:99 %for rows 1 through 100
	for n = 2:99 %for columns 1 through 100
        neighbors = 0;
	%count number of neighbors%
		if current_gen(m-1,n-1) == 1
            		neighbors = neighbors+1;
        	end
	
		if current_gen(m-1,n) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m-1,n+1) == 1
   			neighbors = neighbors+1;
		end
	
		if current_gen(m,n-1) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m,n+1) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m+1,n-1) == 1
			neighbors = neighbors+1;
		end
	
		if current_gen(m+1,n) == 1
			neighbors = neighbors+1;
		end
		
		if current_gen(m+1,n+1) == 1
           		neighbors = neighbors+1;
        	end
        
       		%determine if cells should live or die
        	if current_gen(m,n) == 1
			if (neighbors < 2 || neighbors >3)
                		new_gen(m,n) = 0;
            		end
            
            		if (neighbors == 2 || neighbors == 3)
                		new_gen(m,n) = 1;
            		end 
        	elseif current_gen(m,n) == 0
            		if neighbors == 3
                		new_gen(m,n) = 1;
            		else
                		new_gen(m,n) = 0;
            		end
            
        	end
    end
end

color_show_stuff(new_gen);
axis off
end
