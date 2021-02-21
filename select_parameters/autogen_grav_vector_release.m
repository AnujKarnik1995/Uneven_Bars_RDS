function G = autogen_grav_vector_release(g,l_mid,l_top,m_bot,m_mid,m_motor1,m_motor2,m_top,r_com_mid,r_com_bot,r_com_top,theta_1,theta_2,theta_3)
%AUTOGEN_GRAV_VECTOR
%    G = AUTOGEN_GRAV_VECTOR(G,L_MID,L_TOP,M_BOT,M_MID,M_MOTOR1,M_MOTOR2,M_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP,THETA_1,THETA_2,THETA_3)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    22-May-2020 21:16:02

t2 = sin(theta_1);
t3 = theta_1+theta_2;
t4 = sin(t3);
t5 = t3+theta_3;
t6 = sin(t5);
t7 = l_mid.*m_bot.*t4;
t8 = m_mid.*r_com_mid.*t4;
t9 = m_motor1.*r_com_mid.*t4;
t10 = m_motor2.*r_com_mid.*t4;
t11 = m_bot.*r_com_bot.*t6;
G = [0.0;g.*(m_bot+m_mid+m_motor1+m_motor2+m_top);g.*(t7+t8+t9+t10+t11+l_top.*m_bot.*t2+l_top.*m_mid.*t2+l_top.*m_motor1.*t2+l_top.*m_motor2.*t2+m_top.*r_com_top.*t2);g.*(t7+t8+t9+t10+t11);g.*t11];
