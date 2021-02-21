function PotentialEnergy = autogen_potential_energy(g,l_mid,l_top,m_bot,m_mid,m_motor1,m_motor2,m_top,r_com_mid,r_com_bot,r_com_top,theta_1,theta_2,theta_3,y)
%AUTOGEN_POTENTIAL_ENERGY
%    POTENTIALENERGY = AUTOGEN_POTENTIAL_ENERGY(G,L_MID,L_TOP,M_BOT,M_MID,M_MOTOR1,M_MOTOR2,M_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP,THETA_1,THETA_2,THETA_3,Y)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    01-Jun-2020 20:55:50

t2 = cos(theta_1);
t3 = theta_1+theta_2;
t6 = -y;
t4 = l_top.*t2;
t5 = cos(t3);
PotentialEnergy = -g.*m_bot.*(t4+t6+l_mid.*t5+r_com_bot.*cos(t3+theta_3))+g.*m_top.*(y-r_com_top.*t2)-g.*(t4+t6+r_com_mid.*t5).*(m_mid+m_motor1+m_motor2);
