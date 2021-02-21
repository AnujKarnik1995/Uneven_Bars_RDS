function C = autogen_coriolis_matrix(b1,b2,b3,dtheta_1,dtheta_2,dtheta_3,l_mid,l_top,m_bot,m_mid,m_motor1,m_motor2,r_com_mid,r_com_bot,theta_2,theta_3)
%AUTOGEN_CORIOLIS_MATRIX
%    C = AUTOGEN_CORIOLIS_MATRIX(B1,B2,B3,DTHETA_1,DTHETA_2,DTHETA_3,L_MID,L_TOP,M_BOT,M_MID,M_MOTOR1,M_MOTOR2,R_COM_MID,R_COM_BOT,THETA_2,THETA_3)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    25-May-2020 19:25:42

t2 = sin(theta_2);
t3 = sin(theta_3);
t4 = theta_2+theta_3;
t5 = sin(t4);
t6 = dtheta_1.*l_mid.*l_top.*m_bot.*t2.*2.0;
t7 = dtheta_2.*l_mid.*l_top.*m_bot.*t2.*2.0;
t8 = dtheta_1.*l_mid.*m_bot.*r_com_bot.*t3.*2.0;
t9 = dtheta_2.*l_mid.*m_bot.*r_com_bot.*t3.*2.0;
t10 = dtheta_3.*l_mid.*m_bot.*r_com_bot.*t3.*2.0;
t11 = dtheta_1.*l_top.*m_mid.*r_com_mid.*t2.*2.0;
t12 = dtheta_2.*l_top.*m_mid.*r_com_mid.*t2.*2.0;
t13 = dtheta_1.*l_top.*m_motor1.*r_com_mid.*t2.*2.0;
t14 = dtheta_1.*l_top.*m_motor2.*r_com_mid.*t2.*2.0;
t15 = dtheta_2.*l_top.*m_motor1.*r_com_mid.*t2.*2.0;
t16 = dtheta_2.*l_top.*m_motor2.*r_com_mid.*t2.*2.0;
t17 = -t7;
t18 = -t8;
t19 = -t9;
t20 = -t10;
t21 = -t12;
t22 = -t15;
t23 = -t16;
t24 = dtheta_1.*l_top.*m_bot.*r_com_bot.*t5.*2.0;
t25 = dtheta_2.*l_top.*m_bot.*r_com_bot.*t5.*2.0;
t26 = dtheta_3.*l_top.*m_bot.*r_com_bot.*t5.*2.0;
t27 = -t24;
t28 = -t25;
t29 = -t26;
C = reshape([b1+t17+t20+t21+t22+t23+t28+t29,t6+t11+t13+t14+t20+t24,m_bot.*r_com_bot.*(dtheta_1.*l_mid.*t3+dtheta_2.*l_mid.*t3+dtheta_1.*l_top.*t5).*2.0,-t6-t11-t13-t14+t17+t20+t21+t22+t23+t27+t28+t29,b2+t20,t8+t9,t18+t19+t20+t27+t28+t29,t18+t19+t20,b3],[3,3]);
