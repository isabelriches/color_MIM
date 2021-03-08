function [new_gen] = color_check_neighbors(current_gen)

yellow      = [1, 1, 0];
lightblue   = [0, 0.45, 0.75];
purple      = [0.5, 0.2, 0.5];


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
                		new_gen(m,n) = 0.2;
                       
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

new_gen(randi([2,99],1,1),randi([2,99],1,1)) = 1;
new_gen(randi([2,99],1,1),randi([2,99],1,1)) = 1;
new_gen(randi([2,99],1,1),randi([2,99],1,1)) = 1;

axis off
end
