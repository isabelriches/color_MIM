
function [] = color_game_of_life()
close all

colorswitch = randi([0,1],100,100,3); 
current_gen = cat(3, colorswitch, colorswitch, colorswitch);


while true
    [new_gen] = color_check_neighbors(current_gen);
    current_gen = new_gen;
end

end
