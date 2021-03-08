
function [] = color_game_of_life()
close all

colorswitch = randi([0,1],100,100,3); 
current_gen = cat(3, colorswitch, colorswitch, colorswitch);

channel_yellow = current_gen(:,:,1);
channel_lightblue = current_gen(:,:,2);
channel_purple = current_gen(:,:,3);

while true
    [new_gen] = color_check_neighbors(current_gen);
    current_gen = new_gen;
end

end
