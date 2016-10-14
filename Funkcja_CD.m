function value_out = Funkcja_CD(N, c, i, sip, j, sjq, funkcja, t, mode)

% Get current positions and orientations
[r_i, p_i, r_dot_i, p_dot_i] = Get_Data(i);
[r_j, p_j, r_dot_j, p_dot_j] = Get_Data(j);

A_i = Compute_A(p_i);
A_j = Compute_A(p_j);

dij = ( r_j +  A_i * sjq - r_i - A_i * sip);

% The value of the expresion of the constraint
if (mode == 1)
    value_out = c' * dij - feval(funkcja, t, 1);
end


% Right hand side of the velocity equation \nu
if (mode == 2)
    value_out = feval(funkcja, t, 2);
end


% Right hand side of the acceleration equation \gamma
if (mode == 3)
    value_out = c' * Mat_B(p_dot_j, sjq) * p_dot_j + ...
        - c' * Mat_B(p_dot_i, sip) * p_dot_i + feval(funkcja, t, 3);
end


% The expression of the partial derivative Fi_r
if (mode == 4)
    value_out = zeros(1, 3 * N);
    if (i ~= 0)
        value_out(1, 3*i-2 : 3*i) = c';
    end
    if (j ~= 0)
        value_out(1, 3*j-2 : 3*j) = -c';
    end
end


% The expression of the partial derivative Fi_p_i
if (mode == 5)
    value_out = zeros(1, 4 * N);
    if (i ~= 0)
        value_out(1, 4*i-3 : 4*i) =  c' * Mat_B(p_j, sjq);
    end
    if (j ~= 0)
        value_out(1, 4*j-3 : 4*j) = -c' * Mat_B(p_i, sip);
    end
end

end