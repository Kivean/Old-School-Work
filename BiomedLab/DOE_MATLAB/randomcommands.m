x = rand(30, 1)
for i = 1:30
    if x(i) < .1666
        fprintf('Forward')
    elseif x(i) < .33333
        fprintf('Reverse')
    elseif x(i) < .5
        fprintf('Stop')
    elseif x(i) < .66666
        fprintf('Right')
    elseif x(i) < .833333
        fprintf('Left')
    end
end