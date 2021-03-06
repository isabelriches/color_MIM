function [] = color_game_of_life()
current_gen = randi([0,1],100);
imagesc(current_gen); %creates an initial generation matrix of random 0’s and 1’s

while true
    [new_gen] = check_neighbors(current_gen);
    current_gen = new_gen;
end

end
