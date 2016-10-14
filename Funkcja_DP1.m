function value_out = Funkcja_DP1(N, i, a_bar_i, j, a_bar_j, funkcja, t, mode)

% Get current positions and orientations
[r_i, p_i, r_dot_i, p_dot_i] = Get_Data(i);
[r_j, p_j, r_dot_j, p_dot_j] = Get_Data(j);

A_i = Compute_A(p_i);
A_j = Compute_A(p_j);


% The value of the expresion of the constraint
if (mode == 1)
    value_out = (A_i * a_bar_i)' * (A_j * a_bar_j) - feval(funkcja, t, 1);
end


% Right hand side of the velocity equation \nu
if (mode == 2)
    value_out = feval(funkcja, t, 2);
end


% Right hand side of the acceleration equation \gamma
if (mode == 3)
    value_out = - a_bar_i' * Mat_B(p_dot_j, a_bar_j) * p_dot_j + ...
        - a_bar_j' * Mat_B(p_dot_i, a_bar_i) * p_dot_i + ...
        - 2 * vect_DOT(i, a_bar_i)' * vect_DOT(j, a_bar_j) + feval(funkcja, t, 3);
end


% The expression of the partial derivative Fi_r_i
if (mode == 4)
    value_out = zeros(1, 3 * N);
    if (i ~= 0)
    value_out(1, (3*i-2):(3*i) ) = zeros(1, 3); % it's not needed but let it stay.
    end
    if (j ~= 0)
    value_out(1, (3*j-2):(3*j) ) = zeros(1, 3); % it's not needed but let it stay.
    end
end


% The expression of the partial derivative Fi_p
if (mode == 5)
    value_out = zeros(1, 4*N);
    if (i ~= 0)
        value_out(1, (4*i-3):(4*i) ) = a_bar_j' * A_j * Mat_B(p_i, a_bar_i);
    end
    if (j ~= 0)
        value_out(1, (4*j-3):(4*j) ) = a_bar_i' * A_i * Mat_B(p_j, a_bar_j);
    end
end

end