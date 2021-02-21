%% mass_matrix_uneven.m
%
% Description:
%   Wrapper function for autogen_mass_matrix.m
%   Computes the mass matrix of the jumping robot.
%
% Inputs:
%   x: the state vector, x = [q; q_dot];
%   params: a struct with many elements, generated by calling
%   init_params.m
%
% Outputs:
%   M: a 5x5 mass matrix for the robot.

function M = mass_matrix_uneven(x,params)

theta_1 = x(3);
theta_2 = x(4);
theta_3 = x(5);

M = autogen_mass_matrix(params.model.dyn.bot.I,...
                        params.model.dyn.mid.I,...
                        params.model.dyn.top.I,...
                        params.model.geom.mid.l,...
                        params.model.geom.top.l,...
                        params.model.dyn.bot.m,...
                        params.model.dyn.mid.m,...
                        params.model.dyn.motor1.m,...
                        params.model.dyn.motor2.m,...
                        params.model.dyn.top.m,...
                        params.model.dyn.mid.r_com,...
                        params.model.dyn.bot.r_com,...
                        params.model.dyn.top.r_com,...
                        theta_1,...
                        theta_2,...
                        theta_3);

end