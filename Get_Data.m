function [r_i, p_i, r_dot_i, p_dot_i] = Get_Data(i)


r_i = zeros(3,1);
p_i = [1; 0; 0; 0];

r_dot_i = zeros(3,1);
p_dot_i = [0; 0; 0; 0];

% in case i == 0 values above will remain like they are
if (i~=0) 
    r_i = Get_Coordinates(i,1);
    p_i = Get_Coordinates(i,2);

    r_dot_i = Get_Velocities(i,1);
    p_dot_i = Get_Velocities(i,2);
end

end