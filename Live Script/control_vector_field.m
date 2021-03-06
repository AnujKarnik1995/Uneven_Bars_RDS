%% control_vector_field.m
%
% Description:
%   Wrapper function for autogen_control_vector_field.m
%   Computes the control vector field for the nonlinear state-space
%   dynamics of the cart-pendulum robot.
%
% Inputs:
%   x: the state vector, x = [theta_1; theta_2; theta_3; dtheta_1; dtheta_2; dtheta_3];
%   params: a struct with many elements, generated by calling init_params.m
%
% Outputs:
%   g_ss: a 4x1 vector that maps control input u to dx (time derivative of
%       the state x).

function g_ss = control_vector_field(x,params)

theta_1 = x(1);
theta_2 = x(2);
theta_3 = x(3);

g_ss = autogen_control_vector_field(params.model.dyn.bot.I,...
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
                                    theta_2,...
                                    theta_3);

end