function f_ss = autogen_drift_vector_field(I_bot,I_mid,I_top,b1,b2,b3,dtheta_1,dtheta_2,dtheta_3,g,l_mid,l_top,m_bot,m_mid,m_motor1,m_motor2,m_top,r_com_mid,r_com_bot,r_com_top,theta_1,theta_2,theta_3)
%AUTOGEN_DRIFT_VECTOR_FIELD
%    F_SS = AUTOGEN_DRIFT_VECTOR_FIELD(I_BOT,I_MID,I_TOP,B1,B2,B3,DTHETA_1,DTHETA_2,DTHETA_3,G,L_MID,L_TOP,M_BOT,M_MID,M_MOTOR1,M_MOTOR2,M_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP,THETA_1,THETA_2,THETA_3)

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    25-May-2020 19:28:03

t2 = cos(theta_2);
t3 = cos(theta_3);
t4 = sin(theta_1);
t5 = sin(theta_2);
t6 = sin(theta_3);
t7 = b1.*dtheta_1;
t8 = b2.*dtheta_2;
t9 = b3.*dtheta_3;
t10 = theta_1+theta_2;
t11 = theta_2+theta_3;
t12 = dtheta_1.^2;
t13 = dtheta_2.^2;
t14 = dtheta_3.^2;
t15 = l_mid.^2;
t16 = l_top.^2;
t17 = m_bot.^2;
t18 = m_bot.^3;
t19 = m_mid.^2;
t20 = m_motor1.^2;
t21 = m_motor2.^2;
t22 = r_com_mid.^2;
t23 = r_com_bot.^2;
t24 = r_com_top.^2;
t25 = theta_3.*2.0;
t26 = I_bot.*I_mid;
t27 = I_bot.*I_top;
t28 = cos(t25);
t29 = t2.^2;
t30 = t3.^2;
t31 = I_top.*t26;
t32 = cos(t11);
t33 = sin(t10);
t34 = sin(t11);
t35 = t10+theta_3;
t36 = -t7;
t38 = t11+theta_3;
t41 = I_bot.*l_mid.*m_bot.*t2;
t42 = I_bot.*m_mid.*r_com_mid.*t2;
t43 = I_bot.*m_motor1.*r_com_mid.*t2;
t44 = I_bot.*m_motor2.*r_com_mid.*t2;
t45 = g.*l_top.*m_bot.*t4;
t46 = g.*l_top.*m_mid.*t4;
t47 = g.*l_top.*m_motor1.*t4;
t48 = g.*l_top.*m_motor2.*t4;
t49 = g.*m_top.*r_com_top.*t4;
t50 = I_bot.*m_bot.*t15;
t51 = I_bot.*m_bot.*t16;
t52 = I_bot.*m_mid.*t16;
t53 = I_bot.*m_motor1.*t16;
t54 = I_bot.*m_motor2.*t16;
t55 = I_bot.*m_mid.*t22;
t56 = I_mid.*m_bot.*t23;
t57 = I_bot.*m_motor1.*t22;
t58 = I_bot.*m_motor2.*t22;
t59 = I_top.*m_bot.*t23;
t60 = I_bot.*m_top.*t24;
t61 = m_bot.*t16.*t26;
t62 = m_bot.*t15.*t27;
t63 = m_mid.*t16.*t26;
t64 = m_motor1.*t16.*t26;
t65 = m_motor2.*t16.*t26;
t66 = m_mid.*t22.*t27;
t68 = m_top.*t24.*t26;
t69 = m_motor1.*t22.*t27;
t70 = m_motor2.*t22.*t27;
t73 = I_top.*l_mid.*m_bot.*r_com_bot.*t3;
t86 = m_bot.*m_mid.*r_com_mid.*t2.*t23;
t87 = m_bot.*m_motor1.*r_com_mid.*t2.*t23;
t88 = m_bot.*m_motor2.*r_com_mid.*t2.*t23;
t89 = dtheta_1.*dtheta_2.*l_mid.*l_top.*m_bot.*t5.*4.0;
t90 = dtheta_1.*dtheta_2.*l_mid.*m_bot.*r_com_bot.*t6.*4.0;
t91 = dtheta_1.*dtheta_3.*l_mid.*m_bot.*r_com_bot.*t6.*4.0;
t92 = dtheta_2.*dtheta_3.*l_mid.*m_bot.*r_com_bot.*t6.*4.0;
t93 = dtheta_1.*dtheta_2.*l_top.*m_mid.*r_com_mid.*t5.*4.0;
t94 = dtheta_1.*dtheta_2.*l_top.*m_motor1.*r_com_mid.*t5.*4.0;
t95 = dtheta_1.*dtheta_2.*l_top.*m_motor2.*r_com_mid.*t5.*4.0;
t98 = m_bot.*m_mid.*t16.*t23;
t99 = m_bot.*m_motor1.*t16.*t23;
t100 = m_bot.*m_motor2.*t16.*t23;
t101 = m_bot.*m_mid.*t22.*t23;
t102 = m_bot.*m_motor1.*t22.*t23;
t103 = m_bot.*m_motor2.*t22.*t23;
t104 = m_bot.*m_top.*t23.*t24;
t123 = l_mid.*m_bot.*m_mid.*r_com_mid.*r_com_bot.*t2.*t3;
t124 = l_mid.*m_bot.*m_motor1.*r_com_mid.*r_com_bot.*t2.*t3;
t125 = l_mid.*m_bot.*m_motor2.*r_com_mid.*r_com_bot.*t2.*t3;
t126 = l_mid.*t2.*t17.*t23;
t127 = l_mid.*l_top.*m_bot.*t5.*t12.*2.0;
t128 = l_mid.*l_top.*m_bot.*t5.*t13.*2.0;
t129 = l_mid.*m_bot.*r_com_bot.*t6.*t12.*2.0;
t130 = l_mid.*m_bot.*r_com_bot.*t6.*t13.*2.0;
t131 = l_mid.*m_bot.*r_com_bot.*t6.*t14.*2.0;
t132 = l_top.*m_mid.*r_com_mid.*t5.*t12.*2.0;
t133 = l_top.*m_mid.*r_com_mid.*t5.*t13.*2.0;
t134 = l_top.*m_motor1.*r_com_mid.*t5.*t12.*2.0;
t135 = l_top.*m_motor2.*r_com_mid.*t5.*t12.*2.0;
t136 = l_top.*m_motor1.*r_com_mid.*t5.*t13.*2.0;
t137 = l_top.*m_motor2.*r_com_mid.*t5.*t13.*2.0;
t144 = l_mid.*m_bot.*m_mid.*r_com_bot.*t3.*t16;
t145 = l_mid.*m_bot.*m_motor1.*r_com_bot.*t3.*t16;
t146 = l_mid.*m_bot.*m_motor2.*r_com_bot.*t3.*t16;
t148 = l_mid.*m_bot.*m_top.*r_com_bot.*t3.*t24;
t151 = t15.*t17.*t23;
t152 = t16.*t17.*t23;
t153 = I_bot.*t15.*t16.*t17;
t154 = I_bot.*t16.*t19.*t22;
t157 = I_bot.*t16.*t20.*t22;
t158 = I_bot.*t16.*t21.*t22;
t174 = l_mid.*r_com_bot.*t3.*t16.*t17;
t177 = r_com_bot.*t2.*t3.*t15.*t17;
t192 = t15.*t16.*t18.*t23;
t198 = m_bot.*t16.*t19.*t22.*t23;
t201 = m_bot.*t16.*t20.*t22.*t23;
t203 = m_bot.*t16.*t21.*t22.*t23;
t37 = sin(t35);
t39 = cos(t38);
t40 = t32.^2;
t67 = I_top.*t56;
t71 = l_top.*t41;
t72 = l_top.*t42;
t74 = l_top.*t43;
t75 = l_top.*t44;
t76 = I_mid.*m_bot.*r_com_bot.*t32;
t77 = g.*l_mid.*m_bot.*t33;
t78 = g.*m_mid.*r_com_mid.*t33;
t79 = g.*m_motor1.*r_com_mid.*t33;
t80 = g.*m_motor2.*r_com_mid.*t33;
t81 = -t45;
t82 = -t46;
t83 = -t47;
t84 = -t48;
t85 = -t49;
t105 = m_mid.*t16.*t50;
t106 = m_motor1.*t16.*t50;
t107 = m_motor2.*t16.*t50;
t108 = m_mid.*t22.*t51;
t109 = m_top.*t24.*t50;
t110 = m_motor1.*t22.*t51;
t111 = m_motor2.*t22.*t51;
t112 = m_mid.*t16.*t56;
t113 = m_motor1.*t16.*t56;
t114 = m_motor2.*t16.*t56;
t115 = m_mid.*t22.*t59;
t116 = m_top.*t24.*t55;
t117 = m_top.*t24.*t56;
t118 = m_motor1.*t22.*t59;
t119 = m_motor2.*t22.*t59;
t120 = m_top.*t24.*t57;
t121 = m_top.*t24.*t58;
t139 = -t91;
t140 = -t92;
t147 = l_top.*t86;
t149 = l_top.*t87;
t150 = l_top.*t88;
t155 = I_mid.*t152;
t156 = I_top.*t151;
t159 = m_motor1.*t22.*t52.*2.0;
t160 = m_motor2.*t22.*t52.*2.0;
t161 = m_motor2.*t22.*t53.*2.0;
t162 = m_bot.*m_mid.*r_com_bot.*t22.*t32;
t163 = m_bot.*m_motor1.*r_com_bot.*t22.*t32;
t164 = m_bot.*m_motor2.*r_com_bot.*t22.*t32;
t165 = dtheta_1.*dtheta_2.*l_top.*m_bot.*r_com_bot.*t34.*4.0;
t166 = dtheta_1.*dtheta_3.*l_top.*m_bot.*r_com_bot.*t34.*4.0;
t167 = dtheta_2.*dtheta_3.*l_top.*m_bot.*r_com_bot.*t34.*4.0;
t168 = -t131;
t170 = l_top.*t123;
t171 = l_top.*t124;
t172 = l_top.*t125;
t173 = l_top.*t126;
t176 = r_com_bot.*t15.*t17.*t32;
t178 = l_top.*m_bot.*r_com_bot.*t12.*t34.*2.0;
t179 = l_top.*m_bot.*r_com_bot.*t13.*t34.*2.0;
t180 = l_top.*m_bot.*r_com_bot.*t14.*t34.*2.0;
t184 = m_top.*t24.*t101;
t185 = m_top.*t24.*t102;
t186 = m_top.*t24.*t103;
t191 = l_top.*t177;
t193 = t151./2.0;
t194 = t30.*t151;
t195 = m_mid.*t16.*t151;
t196 = m_motor1.*t16.*t151;
t197 = m_motor2.*t16.*t151;
t199 = m_mid.*t22.*t152;
t200 = m_top.*t24.*t151;
t202 = m_motor1.*t22.*t152;
t204 = m_motor2.*t22.*t152;
t206 = m_motor1.*t22.*t98.*2.0;
t207 = m_motor2.*t22.*t98.*2.0;
t208 = m_motor2.*t22.*t99.*2.0;
t209 = l_mid.*m_mid.*r_com_mid.*t29.*t51.*2.0;
t210 = l_mid.*m_motor1.*r_com_mid.*t29.*t51.*2.0;
t211 = l_mid.*m_motor2.*r_com_mid.*t29.*t51.*2.0;
t212 = m_bot.*m_mid.*r_com_mid.*r_com_bot.*t2.*t16.*t32;
t213 = m_bot.*m_motor1.*r_com_mid.*r_com_bot.*t2.*t16.*t32;
t214 = m_bot.*m_motor2.*r_com_mid.*r_com_bot.*t2.*t16.*t32;
t219 = l_mid.*t3.*t17.*t23.*t32;
t220 = t29.*t153;
t221 = t29.*t154;
t223 = t29.*t157;
t224 = t29.*t158;
t228 = l_mid.*r_com_bot.*t2.*t16.*t17.*t32;
t235 = m_motor1.*t22.*t29.*t52.*-2.0;
t236 = m_motor2.*t22.*t29.*t52.*-2.0;
t237 = m_motor2.*t22.*t29.*t53.*-2.0;
t252 = t29.*t192;
t253 = t30.*t192;
t254 = t28.*t151.*(-1.0./2.0);
t258 = t29.*t198;
t260 = t29.*t201;
t261 = t29.*t203;
t262 = l_mid.*m_mid.*r_com_mid.*t29.*t152.*2.0;
t263 = l_mid.*m_motor1.*r_com_mid.*t29.*t152.*2.0;
t264 = l_mid.*m_motor2.*r_com_mid.*t29.*t152.*2.0;
t274 = m_motor1.*t22.*t29.*t98.*-2.0;
t275 = m_motor2.*t22.*t29.*t98.*-2.0;
t276 = m_motor2.*t22.*t29.*t99.*-2.0;
t295 = m_mid.*r_com_mid.*t3.*t16.*t32.*t126.*2.0;
t296 = m_motor1.*r_com_mid.*t3.*t16.*t32.*t126.*2.0;
t297 = m_motor2.*r_com_mid.*t3.*t16.*t32.*t126.*2.0;
t298 = t2.*t3.*t32.*t192.*2.0;
t96 = l_top.*t76;
t97 = g.*m_bot.*r_com_bot.*t37;
t122 = -t76;
t138 = -t77;
t141 = -t78;
t142 = -t79;
t143 = -t80;
t181 = l_top.*t162;
t182 = l_top.*t163;
t183 = l_top.*t164;
t187 = -t162;
t188 = -t163;
t189 = -t164;
t190 = l_top.*t176;
t205 = -t176;
t218 = t173./2.0;
t222 = t30.*t156;
t225 = t29.*t159;
t226 = t29.*t160;
t227 = t29.*t161;
t229 = l_top.*t219;
t230 = -t209;
t231 = -t210;
t232 = -t211;
t234 = -t194;
t238 = -t212;
t239 = -t213;
t240 = -t214;
t241 = t40.*t152;
t242 = -t219;
t243 = t28.*t193;
t244 = t40.*t155;
t245 = -t220;
t246 = -t221;
t248 = -t223;
t249 = -t224;
t250 = -t228;
t255 = m_mid.*t16.*t194;
t256 = m_motor1.*t16.*t194;
t257 = m_motor2.*t16.*t194;
t259 = m_top.*t24.*t194;
t265 = t29.*t206;
t266 = t29.*t207;
t267 = t29.*t208;
t269 = (l_mid.*l_top.*t17.*t23.*t39)./2.0;
t271 = -t262;
t272 = -t263;
t273 = -t264;
t277 = t40.*t192;
t278 = -t252;
t279 = -t253;
t281 = t40.*t199;
t282 = t40.*t202;
t283 = t40.*t204;
t287 = -t258;
t289 = -t260;
t290 = -t261;
t169 = -t96;
t175 = -t97;
t215 = -t181;
t216 = -t182;
t217 = -t183;
t233 = -t190;
t247 = -t222;
t251 = -t229;
t268 = -t241;
t270 = -t244;
t280 = -t269;
t284 = m_mid.*t16.*t234;
t285 = m_motor1.*t16.*t234;
t286 = m_motor2.*t16.*t234;
t288 = m_top.*t24.*t234;
t291 = -t277;
t292 = -t281;
t293 = -t282;
t294 = -t283;
t299 = t9+t90+t97+t129+t130+t178;
t300 = t8+t77+t78+t79+t80+t97+t127+t132+t134+t135+t139+t140+t168+t178;
t302 = t41+t42+t43+t44+t86+t87+t88+t122+t123+t124+t125+t126+t177+t187+t188+t189+t205+t242;
t301 = t26+t50+t55+t56+t57+t58+t71+t72+t74+t75+t101+t102+t103+t147+t149+t150+t193+t218+t254+t280;
t303 = t36+t81+t82+t83+t84+t85+t89+t91+t92+t93+t94+t95+t128+t131+t133+t136+t137+t138+t141+t142+t143+t165+t166+t167+t175+t179+t180;
t304 = t27+t51+t52+t53+t54+t59+t60+t71+t72+t73+t74+t75+t98+t99+t100+t104+t144+t145+t146+t147+t148+t149+t150+t152+t169+t170+t171+t172+t173+t174+t191+t215+t216+t217+t233+t238+t239+t240+t250+t251+t268;
t305 = t31+t61+t62+t63+t64+t65+t66+t67+t68+t69+t70+t105+t106+t107+t108+t109+t110+t111+t112+t113+t114+t115+t116+t117+t118+t119+t120+t121+t153+t154+t155+t156+t157+t158+t159+t160+t161+t184+t185+t186+t192+t195+t196+t197+t198+t199+t200+t201+t202+t203+t204+t206+t207+t208+t230+t231+t232+t235+t236+t237+t245+t246+t247+t248+t249+t270+t271+t272+t273+t274+t275+t276+t278+t279+t284+t285+t286+t287+t288+t289+t290+t291+t292+t293+t294+t295+t296+t297+t298;
t306 = 1.0./t305;
f_ss = [dtheta_1;dtheta_2;dtheta_3;t303.*t306.*(t26+t50+t55+t56+t57+t58+t101+t102+t103+t151+t234)+t300.*t301.*t306-l_top.*t299.*t302.*t306;t299.*t304.*t306-t301.*t303.*t306-t300.*t306.*(t26+t27+t50+t51+t52+t53+t54+t55+t56+t57+t58+t59+t60+t71.*2.0+t72.*2.0+t74.*2.0+t75.*2.0+t98+t99+t100+t101+t102+t103+t104+t147.*2.0+t149.*2.0+t150.*2.0+t151+t152+t173.*2.0-t229.*2.0+t234+t268);t300.*t304.*t306-t299.*t306.*(t27+t51+t52+t53+t54+t59+t60+t73.*2.0+t98+t99+t100+t104+t144.*2.0+t145.*2.0+t146.*2.0+t148.*2.0+t152+t174.*2.0-t212.*2.0-t213.*2.0-t214.*2.0-t228.*2.0+t268+I_mid.*I_top+I_mid.*m_bot.*t16+I_top.*m_bot.*t15+I_mid.*m_mid.*t16+I_mid.*m_motor1.*t16+I_mid.*m_motor2.*t16+I_top.*m_mid.*t22+I_mid.*m_top.*t24+I_top.*m_motor1.*t22+I_top.*m_motor2.*t22+t15.*t16.*t17+t16.*t19.*t22+t16.*t20.*t22+t16.*t21.*t22+m_bot.*m_mid.*t15.*t16+m_bot.*m_mid.*t16.*t22+m_bot.*m_motor1.*t15.*t16+m_bot.*m_motor2.*t15.*t16+m_bot.*m_motor1.*t16.*t22+m_bot.*m_motor2.*t16.*t22+m_bot.*m_top.*t15.*t24+m_mid.*m_motor1.*t16.*t22.*2.0+m_mid.*m_motor2.*t16.*t22.*2.0+m_motor1.*m_motor2.*t16.*t22.*2.0+m_mid.*m_top.*t22.*t24+m_motor1.*m_top.*t22.*t24+m_motor2.*m_top.*t22.*t24-t15.*t16.*t17.*t29-t16.*t19.*t22.*t29-t16.*t20.*t22.*t29-t16.*t21.*t22.*t29-m_mid.*m_motor1.*t16.*t22.*t29.*2.0-m_mid.*m_motor2.*t16.*t22.*t29.*2.0-m_motor1.*m_motor2.*t16.*t22.*t29.*2.0-l_mid.*m_bot.*m_mid.*r_com_mid.*t16.*t29.*2.0-l_mid.*m_bot.*m_motor1.*r_com_mid.*t16.*t29.*2.0-l_mid.*m_bot.*m_motor2.*r_com_mid.*t16.*t29.*2.0)+l_top.*t302.*t303.*t306];
