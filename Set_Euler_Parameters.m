function Set_Euler_Parameters(i, p)

global  Euler_Parameters

if (mode == 1)
    Euler_Parameters(i, :) = p';
end


end

