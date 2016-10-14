function [Positions, Euler_Parameters,...
    Velocities, Vel_Euler_Parameters] = Set_Initial_Conditions()

Positions = [
    1, 0, 0;
    0, 1, 0;
    0, 0 ,1;
    ];

Euler_Parameters = [
    1, 0, 0, 0;
    1, 0, 0, 0;
    1, 0, 0, 0;
    ];

Velocities = [
    0, 0, 0;
    0, 0, 0;
    0, 0, 0;
    ];

Vel_Euler_Parameters = [
    0, 0, 0, 0;
    0, 0, 0, 0;
    0, 0, 0, 0;
    ];

end



