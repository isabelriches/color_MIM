function [] = color_check_neighbors()

darkred     = [0.6350, 0.0780, 0.1840];
lightgreen  = [0.4660, 0.6740, 0.1880];
cyan        = [0.2, 0.8, 0.8];
purple      = [0.4940, 0.1840, 0.5560];


if current_gen(m,n) == 1
			if (neighbors < 2 || neighbors >3)
                		new_gen(m,n) = 0;
				disp darkred;
            		end
            
            		if (neighbors == 2 || neighbors == 3)
                		new_gen(m,n) = 1;
				disp lightgreen;
            		end 
        	elseif current_gen(m,n) == 0
            		if neighbors == 3
                		new_gen(m,n) = 1;
				disp cyan;
            		else
                		new_gen(m,n) = 0;
				disp purple;
            		end
            
        	end


