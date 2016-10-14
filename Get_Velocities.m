function arg_out = Get_Velocities(i, mode)

global Velocities Vel_Euler_Parameters

%initialization of arg_out
arg_out = 0; 

if (mode == 1)
    arg_out = Velocities(i, :)';
end

if (mode == 2)
    arg_out = Vel_Euler_Parameters(i, :)';
end

end

