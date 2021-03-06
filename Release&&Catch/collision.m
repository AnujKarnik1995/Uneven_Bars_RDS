function collision
catch_state= load('savecatchstate.mat');
catch_state = catch_state.catch_state;
params = init_params_release;
M = autogen_mass_matrix_release(params.model.dyn.bot.I,...
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
                                catch_state(3),catch_state(4),catch_state(5));
A = [1 0 0 0 0;0 1 0 0 0];% from https://github.com/SegwayWarrior/Uneven_Bars_RDS/blob/master/Triple_pend_controls/derive_equations2.m
q_dot_minus = catch_state(6:10);
Minv = inv(M);
restitution = 1;
delta_q_dot = -(Minv*A'*inv(A*Minv*A')*diag(restitution)*A*q_dot_minus);
q_dot_plus = q_dot_minus + delta_q_dot;
collision_state(1:5) = catch_state(1:5);
collision_state(6:10) = q_dot_plus;
save('savecollision','collision_state');
end
