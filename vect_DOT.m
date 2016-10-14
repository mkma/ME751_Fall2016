function wartosc = vect_DOT(i, vect)
% vec_DOT is a derivative of the vector
% vec_DOT = Mat_B(p_i, vect) * p_dot_i


if (i == 0)
    p_i = [1; 0; 0; 0];
    p_dot_i = [0; 0; 0; 0];
else
    p_i = Get_Coordinates(i,2);
    p_dot_i = Get_Velocities(i,2);
end

wartosc = Mat_B(p_i, vect) * p_dot_i;

end