function [residual, g1, g2] = US_CMR14noFA_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                     columns: variables in declaration order
%                                                     rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 79, 1);

%
% Model equations
%

pitilde__ = y(21)^params(49)*y(19)^(1-params(49));
Kp__ = y(4)*((1-params(95)*(pitilde__/y(19))^(1/(1-y(14))))/(1-params(95)))^(1-y(14));
Kpf__ = y(51);
rk_ss__ = (y(27));
a__ = rk_ss__*(exp(params(76)*(y(30)-1))-1)/params(76);
af__ = rk_ss__*(exp(params(76)*(y(48)-1))-1)/params(76);
pitildep1__ = y(21)^params(49)*y(19)^(1-params(49));
yz__ = y(22)^(y(14)/(y(14)-1))*(y(3)*(y(30)*y(13)/(y(17)*params(93)))^params(38)*(y(8)*y(33)^(params(53)/(params(53)-1)))^(1-params(38))-y(18));
yzf__ = y(3)*(y(48)*y(40)/(y(17)*params(93)))^params(38)*y(38)^(1-params(38))-y(42);
Kpp1__ = y(4)*((1-params(95)*(pitildep1__/y(19))^(1/(1-y(14))))/(1-params(95)))^(1-y(14));
pitildewp1__ = y(21)^params(51)*y(19)^(1-params(51));
piwp1__ = y(19)*y(17)*y(32)/y(32);
piw__ = y(19)*y(17)*y(32)/y(32);
pitildew__ = y(21)^params(51)*y(19)^(1-params(51));
Kwp1__ = y(32)*((1-params(96)*(pitildewp1__/piwp1__*params(56)^(1-params(50))*y(17)^params(50))^(1/(1-params(53))))/(1-params(96)))^(1-params(53)*(1+params(75)))*y(5)/params(62);
Kw__ = y(5)*y(32)*((1-params(96)*(y(17)^params(50)*params(56)^(1-params(50))*pitildew__/piw__)^(1/(1-params(53))))/(1-params(96)))^(1-params(53)*(1+params(75)))/params(62);
Kwf__ = y(50)*y(49)/params(62);
S__ = exp(sqrt(params(74)/2)*(params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56)))+exp((params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56))*(-sqrt(params(74)/2)))-2;
Sf__ = exp(sqrt(params(74)/2)*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))+exp((-sqrt(params(74)/2))*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))-2;
Spr__ = sqrt(params(74)/2)*(exp(sqrt(params(74)/2)*(params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56)))-exp((params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56))*(-sqrt(params(74)/2))));
Sprf__ = sqrt(params(74)/2)*(exp(sqrt(params(74)/2)*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))-exp((-sqrt(params(74)/2))*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56))));
Sprp1__ = sqrt(params(74)/2)*(exp(sqrt(params(74)/2)*(params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56)))-exp((params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56))*(-sqrt(params(74)/2))));
Sprp1f__ = sqrt(params(74)/2)*(exp(sqrt(params(74)/2)*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))-exp((-sqrt(params(74)/2))*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56))));
h_ss__ = (y(8));
g_ss__ = params(46)*((y(1))+(y(10)))/(1-params(46));
yf__ = y(37)+y(6)+y(39)/y(16);
T18 = pitilde__/y(19);
T21 = 1/(1-y(14));
T22 = T18^T21;
T26 = (1-params(95)*T22)/(1-params(95));
T27 = T26^(1-y(14));
T53 = y(22)^(y(14)/(y(14)-1));
T62 = (y(30)*y(13)/(y(17)*params(93)))^params(38);
T69 = y(33)^(params(53)/(params(53)-1));
T72 = (y(8)*T69)^(1-params(38));
T80 = (y(48)*y(40)/(y(17)*params(93)))^params(38);
T83 = y(38)^(1-params(38));
T88 = pitildep1__/y(19);
T89 = T88^T21;
T92 = (1-params(95)*T89)/(1-params(95));
T93 = T92^(1-y(14));
T111 = params(56)^(1-params(50));
T113 = y(17)^params(50);
T114 = pitildewp1__/piwp1__*T111*T113;
T116 = 1/(1-params(53));
T121 = (1-params(96)*T114^T116)/(1-params(96));
T139 = T111*pitildew__/piw__;
T140 = T113*T139;
T144 = (1-params(96)*T140^T116)/(1-params(96));
T151 = sqrt(params(74)/2);
T221 = (1+params(63))^4;
T380 = Kp__/y(4);
T381 = y(14)/(1-y(14));
T382 = T380^T381;
T385 = (T18*y(22))^T381;
T387 = (1-params(95))*T382+params(95)*T385;
T389 = T387^((1-y(14))/y(14));
T398 = params(95)*T89*params(42);
T414 = params(95)*params(42)*T88^T381;
T434 = params(96)*params(42)*params(56)^((1-params(50))/(1-params(53)));
T438 = T434*y(17)^(params(50)/(1-params(53))-1);
T439 = pitildewp1__^T116;
T441 = T438*T439/y(19);
T443 = params(53)/(1-params(53));
T444 = (1/piwp1__)^T443;
T445 = T441*T444;
T460 = params(96)*params(42)*T114^(params(53)*(1+params(75))/(1-params(53)));
T475 = (1-params(96))*T144^params(53)+params(96)*(y(33)*T140)^T443;
T489 = (T69*y(17)*params(93)*y(8)/(y(30)*y(13)))^(1-params(38));
T495 = (y(17)*params(93)*y(38)/(y(48)*y(40)))^(1-params(38));
T500 = (y(27)/params(38))^params(38);
T502 = (y(32)/(1-params(38)))^(1-params(38));
T503 = T500*T502;
T507 = (y(45)/params(38))^params(38);
T509 = (y(50)/(1-params(38)))^(1-params(38));
T510 = T507*T509;
T543 = y(15)*y(34)*params(42)/(y(19)*y(17));
T554 = y(41)*y(34)*params(42)/(y(17)*params(58));
T629 = 1+params(93)*y(17)*y(10)*y(35)*(-Spr__)/y(10)-S__;
T639 = (params(93)*y(17)*y(35)*y(10)/y(10))^2;
T655 = 1+params(93)*y(17)*y(39)*y(35)*(-Sprf__)/y(39)-Sf__;
T665 = (params(93)*y(17)*y(35)*y(39)/y(39))^2;
T671 = y(17)/params(56);
T800 = (-(y(6)*params(46)/(1-params(46))))/(g_ss__*g_ss__)/(y(6)/g_ss__);
T830 = 1/params(45)/(y(3)/params(45));
T839 = getPowerDeriv(T387,(1-y(14))/y(14),1);
T855 = 1/g_ss__/(y(6)/g_ss__);
T861 = T53*y(3)*T62*T69*getPowerDeriv(y(8)*T69,1-params(38),1);
T877 = getPowerDeriv(T69*y(17)*params(93)*y(8)/(y(30)*y(13)),1-params(38),1);
T898 = 2*params(93)*y(17)*y(35)*y(10)/y(10);
T905 = getPowerDeriv(y(30)*y(13)/(y(17)*params(93)),params(38),1);
T909 = T53*T72*y(3)*y(30)/(y(17)*params(93))*T905;
T941 = y(4)*T27*((-log(T26))+(1-y(14))*(-(params(95)*T22*1/((1-y(14))*(1-y(14)))*log(T18)))/(1-params(95))/T26);
T945 = (1-y(14)-(-y(14)))/((1-y(14))*(1-y(14)));
T974 = (y(3)*T62*T72-y(18))*T53*(y(14)-1-y(14))/((y(14)-1)*(y(14)-1))*log(y(22));
T1008 = 1/params(52)/(y(14)/params(52));
T1056 = 1/params(55)/(y(16)/params(55));
T1066 = T53*T72*y(3)*T905*(-(y(30)*y(13)*params(93)))/(y(17)*params(93)*y(17)*params(93));
T1072 = getPowerDeriv(y(48)*y(40)/(y(17)*params(93)),params(38),1);
T1075 = T83*y(3)*(-(params(93)*y(48)*y(40)))/(y(17)*params(93)*y(17)*params(93))*T1072;
T1093 = getPowerDeriv(1/piwp1__,T443,1);
T1108 = T139*getPowerDeriv(y(17),params(50),1)+T113*T111*(-(pitildew__*y(19)*y(32)/y(32)))/(piw__*piw__);
T1113 = (-(params(96)*T1108*getPowerDeriv(T140,T116,1)))/(1-params(96));
T1114 = getPowerDeriv(T144,1-params(53)*(1+params(75)),1);
T1125 = T113*T111*(-(pitildewp1__*y(19)*y(32)/y(32)))/(piwp1__*piwp1__)+pitildewp1__/piwp1__*T111*getPowerDeriv(y(17),params(50),1);
T1126 = getPowerDeriv(T114,params(53)*(1+params(75))/(1-params(53)),1);
T1134 = getPowerDeriv(T121,1-params(53)*(1+params(75)),1);
T1147 = getPowerDeriv(y(33)*T140,T443,1);
T1151 = getPowerDeriv(T475,1/T443,1);
T1163 = getPowerDeriv(y(17)*params(93)*y(38)/(y(48)*y(40)),1-params(38),1);
T1183 = exp(T151*(params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56)))*T151*y(10)*params(93)*y(35)/y(10);
T1185 = exp((params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56))*(-T151))*(-T151)*y(10)*params(93)*y(35)/y(10);
T1197 = exp(T151*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))*T151*y(39)*params(93)*y(35)/y(39);
T1199 = exp((-T151)*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))*(-T151)*y(39)*params(93)*y(35)/y(39);
T1278 = 2*params(93)*y(17)*y(35)*y(39)/y(39);
T1290 = (-(1/params(56)));
T1291 = 1/params(56)/T671;
T1308 = y(19)*y(21)^params(49)*getPowerDeriv(y(19),1-params(49),1);
T1311 = (T1308-pitilde__)/(y(19)*y(19));
T1312 = getPowerDeriv(T18,T21,1);
T1319 = y(4)*(-(params(95)*T1311*T1312))/(1-params(95))*getPowerDeriv(T26,1-y(14),1);
T1324 = getPowerDeriv(T18*y(22),T381,1);
T1333 = (T1308-pitildep1__)/(y(19)*y(19))*getPowerDeriv(T88,T21,1);
T1352 = y(21)^params(51)*getPowerDeriv(y(19),1-params(51),1);
T1353 = getPowerDeriv(pitildewp1__,T116,1);
T1374 = T113*T111*(piw__*T1352-pitildew__*y(17)*y(32)/y(32))/(piw__*piw__);
T1378 = (-(params(96)*getPowerDeriv(T140,T116,1)*T1374))/(1-params(96));
T1388 = T113*T111*(piwp1__*T1352-pitildewp1__*y(17)*y(32)/y(32))/(piwp1__*piwp1__);
T1428 = y(19)^(1-params(49))*getPowerDeriv(y(21),params(49),1)/y(19);
T1434 = y(4)*getPowerDeriv(T26,1-y(14),1)*(-(params(95)*T1312*T1428))/(1-params(95));
T1461 = y(19)^(1-params(51))*getPowerDeriv(y(21),params(51),1);
T1474 = (-(params(96)*getPowerDeriv(T140,T116,1)*T113*T111*T1461/piw__))/(1-params(96));
T1505 = 1/params(59)/(y(21)/params(59));
T1513 = (y(3)*T62*T72-y(18))*getPowerDeriv(y(22),y(14)/(y(14)-1),1);
T1580 = T53*T72*y(3)*T905*y(13)/(y(17)*params(93));
T1620 = getPowerDeriv(y(33),params(53)/(params(53)-1),1);
T1624 = T53*y(3)*T62*getPowerDeriv(y(8)*T69,1-params(38),1)*y(8)*T1620;
T1723 = 1/params(98)/(y(34)/params(98));
T1729 = exp(T151*(params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56)))*T151*y(17)*params(93)*y(10)/y(10);
T1731 = exp((params(93)*y(17)*y(35)*y(10)/y(10)-params(93)*params(56))*(-T151))*(-T151)*y(17)*params(93)*y(10)/y(10);
T1739 = exp(T151*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))*T151*y(17)*params(93)*y(39)/y(39);
T1741 = exp((-T151)*(params(93)*y(17)*y(35)*y(39)/y(39)-params(93)*params(56)))*(-T151)*y(17)*params(93)*y(39)/y(39);
T1791 = 1/params(99)/(y(35)/params(99));
T1806 = y(3)*T80*getPowerDeriv(y(38),1-params(38),1);
T1846 = T83*y(3)*T1072*y(48)/(y(17)*params(93));
T1921 = T83*y(3)*T1072*y(40)/(y(17)*params(93));
lhs =y(36);
rhs =y(1)+y(6)+y(10)/y(16);
residual(1)= lhs-rhs;
lhs =y(53);
rhs =100*((1+y(24))^4-T221)/T221;
residual(2)= lhs-rhs;
lhs =y(55);
rhs =100*(y(19)^4-params(57)^4)/params(57)^4;
residual(3)= lhs-rhs;
lhs =y(54);
rhs =0.25*(y(55)+y(55)+y(68)+y(69));
residual(4)= lhs-rhs;
lhs =y(57);
rhs =100*(log(y(36))-log((y(36))));
residual(5)= lhs-rhs;
lhs =y(56);
rhs =100*(log(y(36))-log(yf__));
residual(6)= lhs-rhs;
lhs =y(58);
rhs =y(52);
residual(7)= lhs-rhs;
lhs =y(53);
rhs =params(32)*x(8)+params(31)*y(67)+params(30)*y(66)+params(29)*y(65)+y(57)*params(28)+params(27)*y(72)+params(26)*y(71)+params(25)*y(70)+y(57)*params(24)+y(57)*params(23)+params(22)*y(64)+params(21)*y(63)+params(20)*y(62)+y(56)*params(19)+params(18)*y(75)+params(17)*y(74)+params(16)*y(73)+y(56)*params(15)+y(56)*params(14)+params(13)*y(61)+params(12)*y(60)+params(11)*y(59)+y(55)*params(10)+y(55)*params(6)+y(55)*params(5)+y(53)*params(1)+params(2)*y(76)+params(3)*y(77)+params(4)*y(78)+y(68)*params(7)+y(69)*params(8)+params(9)*y(79);
residual(8)= lhs-rhs;
lhs =y(58);
rhs =params(34)*x(9);
residual(9)= lhs-rhs;
lhs =y(22);
rhs =T389;
residual(10)= lhs-rhs;
lhs =y(4);
rhs =y(34)*y(15)*yz__+y(4)*T398;
residual(11)= lhs-rhs;
lhs =y(51);
rhs =y(34)*y(41)*yzf__;
residual(12)= lhs-rhs;
lhs =Kp__;
rhs =yz__*y(15)*y(14)*y(34)*y(29)+T414*Kpp1__;
residual(13)= lhs-rhs;
lhs =Kpf__;
rhs =yzf__*y(41)*y(14)*y(34)*y(47);
residual(14)= lhs-rhs;
lhs =y(5);
rhs =y(8)*T69*y(34)*y(15)*(1-params(90))/params(53)+y(5)*T445;
residual(15)= lhs-rhs;
lhs =y(49);
rhs =(1-params(90))*y(38)*y(34)*y(41)/params(53);
residual(16)= lhs-rhs;
lhs =Kw__;
rhs =y(34)*(y(8)*T69)^(1+params(75))*params(97)+T460*Kwp1__;
residual(17)= lhs-rhs;
lhs =Kwf__;
rhs =params(97)*y(34)*y(38)^(1+params(75));
residual(18)= lhs-rhs;
lhs =y(33);
rhs =T475^(1/T443);
residual(19)= lhs-rhs;
lhs =y(27);
rhs =exp(params(76)*(y(30)-1))*rk_ss__*params(91);
residual(20)= lhs-rhs;
lhs =y(45);
rhs =exp(params(76)*(y(48)-1))*rk_ss__*params(91);
residual(21)= lhs-rhs;
lhs =y(27);
rhs =y(29)*y(3)*params(38)*T489;
residual(22)= lhs-rhs;
lhs =y(45);
rhs =y(47)*y(3)*params(38)*T495;
residual(23)= lhs-rhs;
lhs =y(29);
rhs =T503/y(3);
residual(24)= lhs-rhs;
lhs =y(47);
rhs =T510/y(3);
residual(25)= lhs-rhs;
lhs =yz__;
rhs =y(1)+y(6)+y(10)/y(16)+y(13)*params(91)*a__/(y(17)*params(93));
residual(26)= lhs-rhs;
lhs =yzf__;
rhs =y(37)+y(6)+y(39)/y(16)+y(40)*params(91)*af__/(y(17)*params(93));
residual(27)= lhs-rhs;
lhs =y(13);
rhs =y(13)*(1-params(44))/(y(17)*params(93))+y(10)*(1-S__);
residual(28)= lhs-rhs;
lhs =y(40);
rhs =y(40)*(1-params(44))/(y(17)*params(93))+y(39)*(1-Sf__);
residual(29)= lhs-rhs;
lhs =0;
rhs =T543*(1+y(24)*(1-params(88)))-y(34)*y(15);
residual(30)= lhs-rhs;
lhs =0;
rhs =T554*(1+(1-params(88))*y(44))-y(34)*y(41);
residual(31)= lhs-rhs;
lhs =y(15)*y(34)*(1+params(87));
rhs =y(17)*y(34)/(y(17)*y(1)-y(1)*params(41))-y(34)*params(42)*params(41)/(y(17)*y(1)-y(1)*params(41));
residual(32)= lhs-rhs;
lhs =y(41)*y(34)*(1+params(87));
rhs =y(17)*y(34)/(y(17)*y(37)-y(37)*params(41))-y(34)*params(42)*params(41)/(y(17)*y(37)-y(37)*params(41));
residual(33)= lhs-rhs;
lhs =0;
rhs =T543*(1+y(28))-y(34)*y(15);
residual(34)= lhs-rhs;
lhs =0;
rhs =T554*(1+y(46))-y(34)*y(41);
residual(35)= lhs-rhs;
lhs =1+y(28);
rhs =y(19)*((1-params(89))*(y(27)*y(30)-params(91)*a__)+(1-params(44))*y(23))/(params(93)*y(23))+params(44)*params(89);
residual(36)= lhs-rhs;
lhs =1+y(46);
rhs =params(44)*params(89)+params(58)*((1-params(89))*(y(45)*y(48)-params(91)*af__)+(1-params(44))*y(43))/(params(93)*y(43));
residual(37)= lhs-rhs;
lhs =0;
rhs =y(15)*(-y(34))/y(16)+y(34)*y(15)*y(23)*T629+y(15)*y(34)*params(42)*y(23)*Sprp1__*T639/(y(17)*params(93));
residual(38)= lhs-rhs;
lhs =0;
rhs =y(41)*(-y(34))/y(16)+y(34)*y(41)*y(43)*T655+y(41)*y(34)*params(42)*y(43)*Sprp1f__*T665/(y(17)*params(93));
residual(39)= lhs-rhs;
lhs =y(2);
rhs =T671;
residual(40)= lhs-rhs;
lhs =y(7);
rhs =T671;
residual(41)= lhs-rhs;
lhs =y(9);
rhs =y(8)/h_ss__;
residual(42)= lhs-rhs;
lhs =y(11);
rhs =y(19)/params(57);
residual(43)= lhs-rhs;
lhs =y(12);
rhs =T671;
residual(44)= lhs-rhs;
lhs =y(20);
rhs =1;
residual(45)= lhs-rhs;
lhs =y(25);
rhs =exp(y(24)-params(63));
residual(46)= lhs-rhs;
lhs =y(26);
rhs =(1+y(24))/y(19)/((1+params(63))/params(57));
residual(47)= lhs-rhs;
lhs =y(31);
rhs =T671;
residual(48)= lhs-rhs;
lhs =log(y(3)/params(45));
rhs =log(y(3)/params(45))*params(64)+x(1);
residual(49)= lhs-rhs;
lhs =log(y(6)/g_ss__);
rhs =y(52)+log(y(6)/g_ss__)*params(65);
residual(50)= lhs-rhs;
lhs =log(y(14)/params(52));
rhs =log(y(14)/params(52))*params(66)+x(2);
residual(51)= lhs-rhs;
lhs =log(y(16)/params(55));
rhs =log(y(16)/params(55))*params(67)+x(3);
residual(52)= lhs-rhs;
lhs =log(T671);
rhs =log(T671)*params(68)+x(4);
residual(53)= lhs-rhs;
lhs =log(y(21)/params(59));
rhs =log(y(21)/params(59))*params(69)+x(5);
residual(54)= lhs-rhs;
lhs =log(y(34)/params(98));
rhs =log(y(34)/params(98))*params(71)+x(6);
residual(55)= lhs-rhs;
lhs =log(y(35)/params(99));
rhs =log(y(35)/params(99))*params(72)+x(7);
residual(56)= lhs-rhs;
lhs =y(18);
rhs =(y(18));
residual(57)= lhs-rhs;
lhs =y(42);
rhs =(y(42));
residual(58)= lhs-rhs;
lhs =y(59);
rhs =y(55);
residual(59)= lhs-rhs;
lhs =y(60);
rhs =y(59);
residual(60)= lhs-rhs;
lhs =y(61);
rhs =y(60);
residual(61)= lhs-rhs;
lhs =y(62);
rhs =y(56);
residual(62)= lhs-rhs;
lhs =y(63);
rhs =y(62);
residual(63)= lhs-rhs;
lhs =y(64);
rhs =y(63);
residual(64)= lhs-rhs;
lhs =y(65);
rhs =y(57);
residual(65)= lhs-rhs;
lhs =y(66);
rhs =y(65);
residual(66)= lhs-rhs;
lhs =y(67);
rhs =y(66);
residual(67)= lhs-rhs;
lhs =y(68);
rhs =y(55);
residual(68)= lhs-rhs;
lhs =y(69);
rhs =y(68);
residual(69)= lhs-rhs;
lhs =y(70);
rhs =y(57);
residual(70)= lhs-rhs;
lhs =y(71);
rhs =y(70);
residual(71)= lhs-rhs;
lhs =y(72);
rhs =y(71);
residual(72)= lhs-rhs;
lhs =y(73);
rhs =y(56);
residual(73)= lhs-rhs;
lhs =y(74);
rhs =y(73);
residual(74)= lhs-rhs;
lhs =y(75);
rhs =y(74);
residual(75)= lhs-rhs;
lhs =y(76);
rhs =y(53);
residual(76)= lhs-rhs;
lhs =y(77);
rhs =y(76);
residual(77)= lhs-rhs;
lhs =y(78);
rhs =y(77);
residual(78)= lhs-rhs;
lhs =y(79);
rhs =y(69);
residual(79)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(79, 79);

  %
  % Jacobian matrix
  %

  g1(1,1)=(-1);
  g1(1,6)=(-1);
  g1(1,10)=(-(1/y(16)));
  g1(1,16)=(-((-y(10))/(y(16)*y(16))));
  g1(1,36)=1;
  g1(2,24)=(-(100*4*(1+y(24))^3/T221));
  g1(2,53)=1;
  g1(3,19)=(-(100*4*y(19)^3/params(57)^4));
  g1(3,55)=1;
  g1(4,54)=1;
  g1(4,55)=(-0.5);
  g1(4,68)=(-0.25);
  g1(4,69)=(-0.25);
  g1(5,36)=(-(100*(1/y(36)-1/(y(36)))));
  g1(5,57)=1;
  g1(6,6)=(-(100*(-(1/yf__))));
  g1(6,16)=(-(100*(-((-y(39))/(y(16)*y(16))/yf__))));
  g1(6,36)=(-(100*1/y(36)));
  g1(6,37)=(-(100*(-(1/yf__))));
  g1(6,39)=(-(100*(-(1/y(16)/yf__))));
  g1(6,56)=1;
  g1(7,52)=(-1);
  g1(7,58)=1;
  g1(8,53)=1-params(1);
  g1(8,55)=(-(params(10)+params(6)+params(5)));
  g1(8,56)=(-(params(19)+params(15)+params(14)));
  g1(8,57)=(-(params(28)+params(24)+params(23)));
  g1(8,59)=(-params(11));
  g1(8,60)=(-params(12));
  g1(8,61)=(-params(13));
  g1(8,62)=(-params(20));
  g1(8,63)=(-params(21));
  g1(8,64)=(-params(22));
  g1(8,65)=(-params(29));
  g1(8,66)=(-params(30));
  g1(8,67)=(-params(31));
  g1(8,68)=(-params(7));
  g1(8,69)=(-params(8));
  g1(8,70)=(-params(25));
  g1(8,71)=(-params(26));
  g1(8,72)=(-params(27));
  g1(8,73)=(-params(16));
  g1(8,74)=(-params(17));
  g1(8,75)=(-params(18));
  g1(8,76)=(-params(2));
  g1(8,77)=(-params(3));
  g1(8,78)=(-params(4));
  g1(8,79)=(-params(9));
  g1(9,58)=1;
  g1(10,4)=(-((1-params(95))*(y(4)*T27-Kp__)/(y(4)*y(4))*getPowerDeriv(T380,T381,1)*T839));
  g1(10,14)=(-(T389*(((-y(14))-(1-y(14)))/(y(14)*y(14))*log(T387)+(1-y(14))/y(14)*((1-params(95))*T382*(T945*log(T380)+T381*T941/y(4)/T380)+params(95)*T385*T945*log(T18*y(22)))/T387)));
  g1(10,19)=(-(T839*((1-params(95))*getPowerDeriv(T380,T381,1)*T1319/y(4)+params(95)*y(22)*T1311*T1324)));
  g1(10,21)=(-(T839*((1-params(95))*getPowerDeriv(T380,T381,1)*T1434/y(4)+params(95)*T1324*y(22)*T1428)));
  g1(10,22)=1-T839*params(95)*T18*T1324;
  g1(11,3)=(-(y(34)*y(15)*T53*T62*T72));
  g1(11,4)=1-T398;
  g1(11,8)=(-(y(34)*y(15)*T861));
  g1(11,13)=(-(y(34)*y(15)*T909));
  g1(11,14)=(-(y(34)*y(15)*T974+y(4)*params(95)*params(42)*T89*1/((1-y(14))*(1-y(14)))*log(T88)));
  g1(11,15)=(-(y(34)*yz__));
  g1(11,17)=(-(y(34)*y(15)*T1066));
  g1(11,18)=(-(y(34)*y(15)*(-T53)));
  g1(11,19)=(-(y(4)*params(95)*params(42)*T1333));
  g1(11,21)=(-(y(4)*params(95)*params(42)*getPowerDeriv(T88,T21,1)*T1428));
  g1(11,22)=(-(y(34)*y(15)*T1513));
  g1(11,30)=(-(y(34)*y(15)*T1580));
  g1(11,33)=(-(y(34)*y(15)*T1624));
  g1(11,34)=(-(y(15)*yz__));
  g1(12,3)=(-(y(34)*y(41)*T80*T83));
  g1(12,17)=(-(y(34)*y(41)*T1075));
  g1(12,34)=(-(y(41)*yzf__));
  g1(12,38)=(-(y(34)*y(41)*T1806));
  g1(12,40)=(-(y(34)*y(41)*T1846));
  g1(12,41)=(-(y(34)*yzf__));
  g1(12,42)=y(34)*y(41);
  g1(12,48)=(-(y(34)*y(41)*T1921));
  g1(12,51)=1;
  g1(13,3)=(-(y(29)*y(15)*y(14)*y(34)*T53*T62*T72));
  g1(13,4)=T27-T93*T414;
  g1(13,8)=(-(y(29)*y(15)*y(14)*y(34)*T861));
  g1(13,13)=(-(y(29)*y(15)*y(14)*y(34)*T909));
  g1(13,14)=T941-(y(29)*(y(34)*y(15)*yz__+y(15)*y(14)*y(34)*T974)+Kpp1__*params(95)*params(42)*T88^T381*T945*log(T88)+T414*y(4)*T93*((-log(T92))+(1-y(14))*(-(params(95)*T89*1/((1-y(14))*(1-y(14)))*log(T88)))/(1-params(95))/T92));
  g1(13,15)=(-(y(29)*yz__*y(14)*y(34)));
  g1(13,17)=(-(y(29)*y(15)*y(14)*y(34)*T1066));
  g1(13,18)=(-(y(29)*y(15)*y(14)*y(34)*(-T53)));
  g1(13,19)=T1319-(Kpp1__*params(95)*params(42)*(T1308-pitildep1__)/(y(19)*y(19))*getPowerDeriv(T88,T381,1)+T414*y(4)*(-(params(95)*T1333))/(1-params(95))*getPowerDeriv(T92,1-y(14),1));
  g1(13,21)=T1434-(Kpp1__*params(95)*params(42)*getPowerDeriv(T88,T381,1)*T1428+T414*y(4)*getPowerDeriv(T92,1-y(14),1)*(-(params(95)*getPowerDeriv(T88,T21,1)*T1428))/(1-params(95)));
  g1(13,22)=(-(y(29)*y(15)*y(14)*y(34)*T1513));
  g1(13,29)=(-(yz__*y(15)*y(14)*y(34)));
  g1(13,30)=(-(y(29)*y(15)*y(14)*y(34)*T1580));
  g1(13,33)=(-(y(29)*y(15)*y(14)*y(34)*T1624));
  g1(13,34)=(-(y(29)*yz__*y(14)*y(15)));
  g1(14,3)=(-(y(47)*y(41)*y(14)*y(34)*T80*T83));
  g1(14,14)=(-(y(34)*y(41)*yzf__*y(47)));
  g1(14,17)=(-(y(47)*y(41)*y(14)*y(34)*T1075));
  g1(14,34)=(-(y(47)*yzf__*y(14)*y(41)));
  g1(14,38)=(-(y(47)*y(41)*y(14)*y(34)*T1806));
  g1(14,40)=(-(y(47)*y(41)*y(14)*y(34)*T1846));
  g1(14,41)=(-(y(47)*yzf__*y(14)*y(34)));
  g1(14,42)=(-(y(47)*(-(y(41)*y(14)*y(34)))));
  g1(14,47)=(-(yzf__*y(41)*y(14)*y(34)));
  g1(14,48)=(-(y(47)*y(41)*y(14)*y(34)*T1921));
  g1(14,51)=1;
  g1(15,5)=1-T445;
  g1(15,8)=(-(T69*y(34)*y(15)*(1-params(90))/params(53)));
  g1(15,15)=(-((1-params(90))*y(8)*T69*y(34)/params(53)));
  g1(15,17)=(-(y(5)*(T444*T439*T434*getPowerDeriv(y(17),params(50)/(1-params(53))-1,1)/y(19)+T441*(-(y(19)*y(32)/y(32)))/(piwp1__*piwp1__)*T1093)));
  g1(15,19)=(-(y(5)*(T444*(y(19)*T438*T1352*T1353-T438*T439)/(y(19)*y(19))+T441*T1093*(-(y(17)*y(32)/y(32)))/(piwp1__*piwp1__))));
  g1(15,21)=(-(y(5)*T444*T438*T1353*T1461/y(19)));
  g1(15,33)=(-((1-params(90))*y(8)*y(34)*y(15)*T1620/params(53)));
  g1(15,34)=(-((1-params(90))*y(8)*T69*y(15)/params(53)));
  g1(16,34)=(-((1-params(90))*y(38)*y(41)/params(53)));
  g1(16,38)=(-(y(34)*y(41)*(1-params(90))/params(53)));
  g1(16,41)=(-((1-params(90))*y(38)*y(34)/params(53)));
  g1(16,49)=1;
  g1(17,5)=y(32)*T144^(1-params(53)*(1+params(75)))/params(62)-T460*y(32)*T121^(1-params(53)*(1+params(75)))/params(62);
  g1(17,8)=(-(params(97)*y(34)*T69*getPowerDeriv(y(8)*T69,1+params(75),1)));
  g1(17,17)=y(5)*y(32)*T1113*T1114/params(62)-(Kwp1__*params(96)*params(42)*T1125*T1126+T460*y(5)*y(32)*(-(params(96)*T1125*getPowerDeriv(T114,T116,1)))/(1-params(96))*T1134/params(62));
  g1(17,19)=y(5)*y(32)*T1114*T1378/params(62)-(Kwp1__*params(96)*params(42)*T1126*T1388+T460*y(5)*y(32)*T1134*(-(params(96)*getPowerDeriv(T114,T116,1)*T1388))/(1-params(96))/params(62));
  g1(17,21)=y(5)*y(32)*T1114*T1474/params(62)-(Kwp1__*params(96)*params(42)*T1126*T113*T111*T1461/piwp1__+T460*y(5)*y(32)*T1134*(-(params(96)*getPowerDeriv(T114,T116,1)*T113*T111*T1461/piwp1__))/(1-params(96))/params(62));
  g1(17,32)=y(5)*T144^(1-params(53)*(1+params(75)))/params(62)-T460*T121^(1-params(53)*(1+params(75)))*y(5)/params(62);
  g1(17,33)=(-(params(97)*y(34)*getPowerDeriv(y(8)*T69,1+params(75),1)*y(8)*T1620));
  g1(17,34)=(-((y(8)*T69)^(1+params(75))*params(97)));
  g1(18,34)=(-(params(97)*y(38)^(1+params(75))));
  g1(18,38)=(-(params(97)*y(34)*getPowerDeriv(y(38),1+params(75),1)));
  g1(18,49)=y(50)/params(62);
  g1(18,50)=y(49)/params(62);
  g1(19,17)=(-(((1-params(96))*T1113*getPowerDeriv(T144,params(53),1)+params(96)*y(33)*T1108*T1147)*T1151));
  g1(19,19)=(-(T1151*((1-params(96))*getPowerDeriv(T144,params(53),1)*T1378+params(96)*T1147*y(33)*T1374)));
  g1(19,21)=(-(T1151*((1-params(96))*getPowerDeriv(T144,params(53),1)*T1474+params(96)*T1147*y(33)*T113*T111*T1461/piw__)));
  g1(19,33)=1-T1151*params(96)*T140*T1147;
  g1(20,27)=1-exp(params(76)*(y(30)-1))*params(91);
  g1(20,30)=(-(rk_ss__*params(91)*params(76)*exp(params(76)*(y(30)-1))));
  g1(21,27)=(-(exp(params(76)*(y(48)-1))*params(91)));
  g1(21,45)=1;
  g1(21,48)=(-(rk_ss__*params(91)*params(76)*exp(params(76)*(y(48)-1))));
  g1(22,3)=(-(y(29)*params(38)*T489));
  g1(22,8)=(-(y(29)*y(3)*params(38)*y(17)*params(93)*T69/(y(30)*y(13))*T877));
  g1(22,13)=(-(y(29)*y(3)*params(38)*T877*(-(y(30)*T69*y(17)*params(93)*y(8)))/(y(30)*y(13)*y(30)*y(13))));
  g1(22,17)=(-(y(29)*y(3)*params(38)*T877*T69*params(93)*y(8)/(y(30)*y(13))));
  g1(22,27)=1;
  g1(22,29)=(-(y(3)*params(38)*T489));
  g1(22,30)=(-(y(29)*y(3)*params(38)*T877*(-(y(13)*T69*y(17)*params(93)*y(8)))/(y(30)*y(13)*y(30)*y(13))));
  g1(22,33)=(-(y(29)*y(3)*params(38)*T877*y(17)*params(93)*y(8)*T1620/(y(30)*y(13))));
  g1(23,3)=(-(y(47)*params(38)*T495));
  g1(23,17)=(-(y(47)*y(3)*params(38)*params(93)*y(38)/(y(48)*y(40))*T1163));
  g1(23,38)=(-(y(47)*y(3)*params(38)*T1163*y(17)*params(93)/(y(48)*y(40))));
  g1(23,40)=(-(y(47)*y(3)*params(38)*T1163*(-(y(48)*y(17)*params(93)*y(38)))/(y(48)*y(40)*y(48)*y(40))));
  g1(23,45)=1;
  g1(23,47)=(-(y(3)*params(38)*T495));
  g1(23,48)=(-(y(47)*y(3)*params(38)*T1163*(-(y(40)*y(17)*params(93)*y(38)))/(y(48)*y(40)*y(48)*y(40))));
  g1(24,3)=(-((-T503)/(y(3)*y(3))));
  g1(24,27)=(-(T502*1/params(38)*getPowerDeriv(y(27)/params(38),params(38),1)/y(3)));
  g1(24,29)=1;
  g1(24,32)=(-(T500*1/(1-params(38))*getPowerDeriv(y(32)/(1-params(38)),1-params(38),1)/y(3)));
  g1(25,3)=(-((-T510)/(y(3)*y(3))));
  g1(25,45)=(-(T509*1/params(38)*getPowerDeriv(y(45)/params(38),params(38),1)/y(3)));
  g1(25,47)=1;
  g1(25,50)=(-(T507*1/(1-params(38))*getPowerDeriv(y(50)/(1-params(38)),1-params(38),1)/y(3)));
  g1(26,1)=(-1);
  g1(26,3)=T53*T62*T72;
  g1(26,6)=(-1);
  g1(26,8)=T861;
  g1(26,10)=(-(1/y(16)));
  g1(26,13)=T909-params(91)*a__/(y(17)*params(93));
  g1(26,14)=T974;
  g1(26,16)=(-((-y(10))/(y(16)*y(16))));
  g1(26,17)=T1066-(-(params(93)*y(13)*params(91)*a__))/(y(17)*params(93)*y(17)*params(93));
  g1(26,18)=(-T53);
  g1(26,22)=T1513;
  g1(26,27)=(-(y(13)*params(91)*(exp(params(76)*(y(30)-1))-1)/params(76)/(y(17)*params(93))));
  g1(26,30)=T1580-y(13)*params(91)*rk_ss__*params(76)*exp(params(76)*(y(30)-1))/params(76)/(y(17)*params(93));
  g1(26,33)=T1624;
  g1(27,3)=T80*T83;
  g1(27,6)=(-1);
  g1(27,16)=(-((-y(39))/(y(16)*y(16))));
  g1(27,17)=T1075-(-(params(93)*y(40)*params(91)*af__))/(y(17)*params(93)*y(17)*params(93));
  g1(27,27)=(-(y(40)*params(91)*(exp(params(76)*(y(48)-1))-1)/params(76)/(y(17)*params(93))));
  g1(27,37)=(-1);
  g1(27,38)=T1806;
  g1(27,39)=(-(1/y(16)));
  g1(27,40)=T1846-params(91)*af__/(y(17)*params(93));
  g1(27,42)=(-1);
  g1(27,48)=T1921-y(40)*params(91)*rk_ss__*params(76)*exp(params(76)*(y(48)-1))/params(76)/(y(17)*params(93));
  g1(28,10)=(-(1-S__));
  g1(28,13)=1-(1-params(44))/(y(17)*params(93));
  g1(28,17)=(-((-(params(93)*y(13)*(1-params(44))))/(y(17)*params(93)*y(17)*params(93))+y(10)*(-(T1183+T1185))));
  g1(28,35)=(-(y(10)*(-(T1729+T1731))));
  g1(29,17)=(-((-(params(93)*y(40)*(1-params(44))))/(y(17)*params(93)*y(17)*params(93))+y(39)*(-(T1197+T1199))));
  g1(29,35)=(-(y(39)*(-(T1739+T1741))));
  g1(29,39)=(-(1-Sf__));
  g1(29,40)=1-(1-params(44))/(y(17)*params(93));
  g1(30,15)=(-((1+y(24)*(1-params(88)))*y(34)*params(42)/(y(19)*y(17))-y(34)));
  g1(30,17)=(-((1+y(24)*(1-params(88)))*(-(y(19)*y(15)*y(34)*params(42)))/(y(19)*y(17)*y(19)*y(17))));
  g1(30,19)=(-((1+y(24)*(1-params(88)))*(-(y(17)*y(15)*y(34)*params(42)))/(y(19)*y(17)*y(19)*y(17))));
  g1(30,24)=(-(T543*(1-params(88))));
  g1(30,34)=(-((1+y(24)*(1-params(88)))*y(15)*params(42)/(y(19)*y(17))-y(15)));
  g1(31,17)=(-((1+(1-params(88))*y(44))*(-(y(41)*y(34)*params(42)*params(58)))/(y(17)*params(58)*y(17)*params(58))));
  g1(31,34)=(-((1+(1-params(88))*y(44))*params(42)*y(41)/(y(17)*params(58))-y(41)));
  g1(31,41)=(-((1+(1-params(88))*y(44))*y(34)*params(42)/(y(17)*params(58))-y(34)));
  g1(31,44)=(-((1-params(88))*T554));
  g1(32,1)=(-((-(y(17)*y(34)*(y(17)-params(41))))/((y(17)*y(1)-y(1)*params(41))*(y(17)*y(1)-y(1)*params(41)))-(-(y(34)*params(42)*params(41)*(y(17)-params(41))))/((y(17)*y(1)-y(1)*params(41))*(y(17)*y(1)-y(1)*params(41)))));
  g1(32,15)=y(34)*(1+params(87));
  g1(32,17)=(-((y(34)*(y(17)*y(1)-y(1)*params(41))-y(1)*y(17)*y(34))/((y(17)*y(1)-y(1)*params(41))*(y(17)*y(1)-y(1)*params(41)))-(-(y(1)*y(34)*params(42)*params(41)))/((y(17)*y(1)-y(1)*params(41))*(y(17)*y(1)-y(1)*params(41)))));
  g1(32,34)=y(15)*(1+params(87))-(y(17)/(y(17)*y(1)-y(1)*params(41))-params(42)*params(41)/(y(17)*y(1)-y(1)*params(41)));
  g1(33,17)=(-((y(34)*(y(17)*y(37)-y(37)*params(41))-y(37)*y(17)*y(34))/((y(17)*y(37)-y(37)*params(41))*(y(17)*y(37)-y(37)*params(41)))-(-(y(37)*y(34)*params(42)*params(41)))/((y(17)*y(37)-y(37)*params(41))*(y(17)*y(37)-y(37)*params(41)))));
  g1(33,34)=y(41)*(1+params(87))-(y(17)/(y(17)*y(37)-y(37)*params(41))-params(42)*params(41)/(y(17)*y(37)-y(37)*params(41)));
  g1(33,37)=(-((-(y(17)*y(34)*(y(17)-params(41))))/((y(17)*y(37)-y(37)*params(41))*(y(17)*y(37)-y(37)*params(41)))-(-(y(34)*params(42)*params(41)*(y(17)-params(41))))/((y(17)*y(37)-y(37)*params(41))*(y(17)*y(37)-y(37)*params(41)))));
  g1(33,41)=y(34)*(1+params(87));
  g1(34,15)=(-((1+y(28))*y(34)*params(42)/(y(19)*y(17))-y(34)));
  g1(34,17)=(-((1+y(28))*(-(y(19)*y(15)*y(34)*params(42)))/(y(19)*y(17)*y(19)*y(17))));
  g1(34,19)=(-((1+y(28))*(-(y(17)*y(15)*y(34)*params(42)))/(y(19)*y(17)*y(19)*y(17))));
  g1(34,28)=(-T543);
  g1(34,34)=(-((1+y(28))*y(15)*params(42)/(y(19)*y(17))-y(15)));
  g1(35,17)=(-((1+y(46))*(-(y(41)*y(34)*params(42)*params(58)))/(y(17)*params(58)*y(17)*params(58))));
  g1(35,34)=(-((1+y(46))*params(42)*y(41)/(y(17)*params(58))-y(41)));
  g1(35,41)=(-((1+y(46))*y(34)*params(42)/(y(17)*params(58))-y(34)));
  g1(35,46)=(-T554);
  g1(36,19)=(-(((1-params(89))*(y(27)*y(30)-params(91)*a__)+(1-params(44))*y(23))/(params(93)*y(23))));
  g1(36,23)=(-((params(93)*y(23)*y(19)*(1-params(44))-params(93)*y(19)*((1-params(89))*(y(27)*y(30)-params(91)*a__)+(1-params(44))*y(23)))/(params(93)*y(23)*params(93)*y(23))));
  g1(36,27)=(-(y(19)*(1-params(89))*(y(30)-params(91)*(exp(params(76)*(y(30)-1))-1)/params(76))/(params(93)*y(23))));
  g1(36,28)=1;
  g1(36,30)=(-(y(19)*(1-params(89))*(y(27)-params(91)*rk_ss__*params(76)*exp(params(76)*(y(30)-1))/params(76))/(params(93)*y(23))));
  g1(37,27)=(-(params(58)*(1-params(89))*(-(params(91)*(exp(params(76)*(y(48)-1))-1)/params(76)))/(params(93)*y(43))));
  g1(37,43)=(-((params(93)*y(43)*(1-params(44))*params(58)-params(93)*params(58)*((1-params(89))*(y(45)*y(48)-params(91)*af__)+(1-params(44))*y(43)))/(params(93)*y(43)*params(93)*y(43))));
  g1(37,45)=(-(params(58)*y(48)*(1-params(89))/(params(93)*y(43))));
  g1(37,46)=1;
  g1(37,48)=(-(params(58)*(1-params(89))*(y(45)-params(91)*rk_ss__*params(76)*exp(params(76)*(y(48)-1))/params(76))/(params(93)*y(43))));
  g1(38,10)=(-(y(34)*y(15)*y(23)*(y(10)*params(93)*y(17)*y(35)*(-Spr__)-params(93)*y(17)*y(10)*y(35)*(-Spr__))/(y(10)*y(10))+y(15)*y(34)*params(42)*y(23)*Sprp1__*(params(93)*y(17)*y(35)*y(10)-params(93)*y(17)*y(35)*y(10))/(y(10)*y(10))*T898/(y(17)*params(93))));
  g1(38,15)=(-((-y(34))/y(16)+T629*y(34)*y(23)+T639*Sprp1__*y(34)*params(42)*y(23)/(y(17)*params(93))));
  g1(38,16)=(-((-(y(15)*(-y(34))))/(y(16)*y(16))));
  g1(38,17)=(-(y(34)*y(15)*y(23)*(params(93)*(y(10)*y(35)*(-Spr__)+y(17)*y(10)*y(35)*(-(T151*(T1183-T1185))))/y(10)-(T1183+T1185))+(y(17)*params(93)*(T639*y(15)*y(34)*params(42)*y(23)*T151*(T1183-T1185)+y(15)*y(34)*params(42)*y(23)*Sprp1__*T898*params(93)*y(35)*y(10)/y(10))-params(93)*y(15)*y(34)*params(42)*y(23)*Sprp1__*T639)/(y(17)*params(93)*y(17)*params(93))));
  g1(38,23)=(-(y(34)*y(15)*T629+T639*y(15)*y(34)*params(42)*Sprp1__/(y(17)*params(93))));
  g1(38,34)=(-((-y(15))/y(16)+T629*y(15)*y(23)+T639*Sprp1__*y(23)*y(15)*params(42)/(y(17)*params(93))));
  g1(38,35)=(-(y(34)*y(15)*y(23)*(params(93)*y(17)*y(10)*((-Spr__)+y(35)*(-(T151*(T1729-T1731))))/y(10)-(T1729+T1731))+(T639*y(15)*y(34)*params(42)*y(23)*T151*(T1729-T1731)+y(15)*y(34)*params(42)*y(23)*Sprp1__*T898*params(93)*y(17)*y(10)/y(10))/(y(17)*params(93))));
  g1(39,16)=(-((-(y(41)*(-y(34))))/(y(16)*y(16))));
  g1(39,17)=(-(y(34)*y(41)*y(43)*(params(93)*(y(39)*y(35)*(-Sprf__)+y(17)*y(39)*y(35)*(-(T151*(T1197-T1199))))/y(39)-(T1197+T1199))+(y(17)*params(93)*(T665*y(41)*y(34)*params(42)*y(43)*T151*(T1197-T1199)+y(41)*y(34)*params(42)*y(43)*Sprp1f__*params(93)*y(35)*y(39)/y(39)*T1278)-params(93)*y(41)*y(34)*params(42)*y(43)*Sprp1f__*T665)/(y(17)*params(93)*y(17)*params(93))));
  g1(39,34)=(-((-y(41))/y(16)+T655*y(41)*y(43)+T665*Sprp1f__*y(43)*params(42)*y(41)/(y(17)*params(93))));
  g1(39,35)=(-(y(34)*y(41)*y(43)*(params(93)*y(17)*y(39)*((-Sprf__)+y(35)*(-(T151*(T1739-T1741))))/y(39)-(T1739+T1741))+(T665*y(41)*y(34)*params(42)*y(43)*T151*(T1739-T1741)+y(41)*y(34)*params(42)*y(43)*Sprp1f__*T1278*params(93)*y(17)*y(39)/y(39))/(y(17)*params(93))));
  g1(39,39)=(-(y(34)*y(41)*y(43)*(y(39)*params(93)*y(17)*y(35)*(-Sprf__)-params(93)*y(17)*y(39)*y(35)*(-Sprf__))/(y(39)*y(39))+y(41)*y(34)*params(42)*y(43)*Sprp1f__*T1278*(params(93)*y(17)*y(35)*y(39)-params(93)*y(17)*y(35)*y(39))/(y(39)*y(39))/(y(17)*params(93))));
  g1(39,41)=(-((-y(34))/y(16)+T655*y(34)*y(43)+T665*Sprp1f__*y(34)*params(42)*y(43)/(y(17)*params(93))));
  g1(39,43)=(-(y(34)*y(41)*T655+T665*y(41)*y(34)*params(42)*Sprp1f__/(y(17)*params(93))));
  g1(40,2)=1;
  g1(40,17)=T1290;
  g1(41,7)=1;
  g1(41,17)=T1290;
  g1(42,8)=(-((h_ss__-y(8))/(h_ss__*h_ss__)));
  g1(42,9)=1;
  g1(43,11)=1;
  g1(43,19)=(-(1/params(57)));
  g1(44,12)=1;
  g1(44,17)=T1290;
  g1(45,20)=1;
  g1(46,24)=(-exp(y(24)-params(63)));
  g1(46,25)=1;
  g1(47,19)=(-((-(1+y(24)))/(y(19)*y(19))/((1+params(63))/params(57))));
  g1(47,24)=(-(1/y(19)/((1+params(63))/params(57))));
  g1(47,26)=1;
  g1(48,17)=T1290;
  g1(48,31)=1;
  g1(49,3)=T830-params(64)*T830;
  g1(50,1)=T800-params(65)*T800;
  g1(50,6)=T855-params(65)*T855;
  g1(50,10)=T800-params(65)*T800;
  g1(50,52)=(-1);
  g1(51,14)=T1008-params(66)*T1008;
  g1(52,16)=T1056-params(67)*T1056;
  g1(53,17)=T1291-params(68)*T1291;
  g1(54,21)=T1505-params(69)*T1505;
  g1(55,34)=T1723-params(71)*T1723;
  g1(56,35)=T1791-params(72)*T1791;
  g1(59,55)=(-1);
  g1(59,59)=1;
  g1(60,59)=(-1);
  g1(60,60)=1;
  g1(61,60)=(-1);
  g1(61,61)=1;
  g1(62,56)=(-1);
  g1(62,62)=1;
  g1(63,62)=(-1);
  g1(63,63)=1;
  g1(64,63)=(-1);
  g1(64,64)=1;
  g1(65,57)=(-1);
  g1(65,65)=1;
  g1(66,65)=(-1);
  g1(66,66)=1;
  g1(67,66)=(-1);
  g1(67,67)=1;
  g1(68,55)=(-1);
  g1(68,68)=1;
  g1(69,68)=(-1);
  g1(69,69)=1;
  g1(70,57)=(-1);
  g1(70,70)=1;
  g1(71,70)=(-1);
  g1(71,71)=1;
  g1(72,71)=(-1);
  g1(72,72)=1;
  g1(73,56)=(-1);
  g1(73,73)=1;
  g1(74,73)=(-1);
  g1(74,74)=1;
  g1(75,74)=(-1);
  g1(75,75)=1;
  g1(76,53)=(-1);
  g1(76,76)=1;
  g1(77,76)=(-1);
  g1(77,77)=1;
  g1(78,77)=(-1);
  g1(78,78)=1;
  g1(79,69)=(-1);
  g1(79,79)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],79,6241);
end
end