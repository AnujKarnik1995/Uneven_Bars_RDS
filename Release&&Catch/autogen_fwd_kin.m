function FK = autogen_fwd_kin(l_bot,l_mid,l_top,r_com_mid,r_com_bot,r_com_top,theta_1,theta_2,theta_3)
%AUTOGEN_FWD_KIN
%    FK = AUTOGEN_FWD_KIN(L_BOT,L_MID,L_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP,THETA_1,THETA_2,THETA_3)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    25-May-2020 19:25:25

t2 = cos(theta_1);
t3 = sin(theta_1);
t4 = theta_1+theta_2;
t5 = l_top.*t2;
t6 = cos(t4);
t7 = l_top.*t3;
t8 = sin(t4);
t9 = t4+theta_3;
t10 = cos(t9);
t11 = sin(t9);
t12 = l_mid.*t6;
t13 = l_mid.*t8;
t14 = -t5;
t15 = -t12;
FK = reshape([r_com_top.*t3,-r_com_top.*t2,t7,t14,t7+r_com_mid.*t8,t14-r_com_mid.*t6,t7+t13,t14+t15,t7+t13+r_com_bot.*t11,t14+t15-r_com_bot.*t10,t7+t13+l_bot.*t11,t14+t15-l_bot.*t10],[2,6]);
