function RUN_THIS_FILE()

clc;
clear;

% Bodies ID's:
N = 3; % Number of bodies

i = 1;
j = 2;
k = 3;

global Positions Euler_Parameters Velocities Vel_Euler_Parameters

[Positions, Euler_Parameters, Velocities, Vel_Euler_Parameters] = Set_Initial_Conditions();

% Attributes of DP1
a_bar_1 = [1; 0; 0];
a_bar_2 = [0; 1; 0];
a_bar_2 = [0; 0; 1];


% in case you'd like to put a constraint between body and ground provide 0
% instead of i or j for the arguments of function TEST_IF_DP1_WORKS( ... )
TEST_IF_DP1_WORKS(N, i, a_bar_1, j, a_bar_2);

% Attributes of CD
c = [1; 0; 0];
sip = [1; 1; 0];
sjq = [0; 0; 1];

% in case you'd like to put a constraint between body and ground provide 0
% instead of j or k for the arguments of function TEST_IF_DP1_WORKS( ... )
TEST_IF_CD_WORKS(N, c, j, sip, k, sjq);



end