function Total_E = autogen_Total_E(I_bot,I_mid,I_top,dtheta_1,dtheta_2,dtheta_3,g,l_mid,l_top,m_bot,m_mid,m_motor1,m_motor2,m_top,r_com_mid,r_com_bot,r_com_top,theta_1,theta_2,theta_3)
%AUTOGEN_TOTAL_E
%    TOTAL_E = AUTOGEN_TOTAL_E(I_BOT,I_MID,I_TOP,DTHETA_1,DTHETA_2,DTHETA_3,G,L_MID,L_TOP,M_BOT,M_MID,M_MOTOR1,M_MOTOR2,M_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP,THETA_1,THETA_2,THETA_3)

%    This function was generated by the Symbolic Math Toolbox version 8.3.
%    07-May-2020 14:34:42

t2 = cos(theta_1);
t3 = sin(theta_1);
t4 = theta_1+theta_2;
t5 = dtheta_1.^2;
t6 = r_com_top.^2;
t7 = l_top.*t2;
t8 = cos(t4);
t9 = l_top.*t3;
t10 = sin(t4);
t11 = t4+theta_3;
t12 = cos(t11);
t13 = sin(t11);
t14 = l_mid.*t8;
t15 = r_com_mid.*t8;
t16 = l_mid.*t10;
t17 = r_com_bot.*t13;
t18 = r_com_bot.*t12;
t19 = t7+t15;
t20 = t7+t14+t18;
Total_E = (I_top.*t5)./2.0+(m_top.*(t2.^2.*t5.*t6+t3.^2.*t5.*t6))./2.0+(I_bot.*dtheta_3.^2)./2.0+(I_mid.*dtheta_2.^2)./2.0+(m_bot.*((dtheta_2.*(t14+t18)+dtheta_1.*t20+dtheta_3.*t18).^2+(dtheta_2.*(t16+t17)+dtheta_3.*t17+dtheta_1.*(t9+t16+t17)).^2))./2.0+((dtheta_2.*t15+dtheta_1.*t19).^2+(dtheta_1.*(t9+r_com_mid.*t10)+dtheta_2.*r_com_mid.*t10).^2).*(m_mid./2.0+m_motor1./2.0+m_motor2./2.0)-g.*m_bot.*t20-g.*t19.*(m_mid+m_motor1+m_motor2)-g.*m_top.*r_com_top.*t2;
