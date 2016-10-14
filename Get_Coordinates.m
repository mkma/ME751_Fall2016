function arg_out = Get_Coordinates(i, mode)

global Positions Euler_Parameters

%initialization of arg_out
arg_out = 0; 

if (mode == 1)
    arg_out = Positions(i, :)';
end

if (mode == 2)
    arg_out = Euler_Parameters(i, :)';
end

end

