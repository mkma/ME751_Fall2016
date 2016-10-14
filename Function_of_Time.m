function wartosc = Function_of_Time(t, mode)

% Function of Time
if (mode == 1)
wartosc = 2 * t^3 + 3 * t^2 + 4 * t;
end


% Time Derivative
if (mode == 2)
wartosc = 6 * t^2 + 6 * t + 4;
end

% Second Time Derivative
if (mode == 3)
wartosc = 12 * t + 6;
end

end