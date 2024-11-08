% plots.m
%
% Plots for all the questions
%
% Group 30

%%
% run the dynare .mod file
dynare Benchmark_Model_1

% collect relevant impulse response to productivity shock (from Dynare simulation)
y1 = oo_.irfs.y_hat_epsilon_m_hat;
c1 = oo_.irfs.c_hat_epsilon_m_hat;
i1 = oo_.irfs.i_hat_epsilon_m_hat;
pi1 = oo_.irfs.pi_hat_epsilon_m_hat;
ec1 = oo_.irfs.ec_hat_epsilon_m_hat;
e1 = oo_.irfs.e_hat_epsilon_m_hat;
ca1 = oo_.irfs.ca_hat_epsilon_m_hat;

y2 = oo_.irfs.y_hat_eta_z;
c2 = oo_.irfs.c_hat_eta_z;
i2 = oo_.irfs.i_hat_eta_z;
pi2 = oo_.irfs.pi_hat_eta_z;
ec2 = oo_.irfs.ec_hat_eta_z;
ep2 = oo_.irfs.epsilon_z_hat_eta_z;
e2 = oo_.irfs.e_hat_eta_z;
ca2 = oo_.irfs.ca_hat_eta_z;

y3 = oo_.irfs.y_hat_eta_istar;
c3 = oo_.irfs.c_hat_eta_istar;
i3 = oo_.irfs.i_hat_eta_istar;
pi3 = oo_.irfs.pi_hat_eta_istar;
ec3 = oo_.irfs.ec_hat_eta_istar;
istar3 = oo_.irfs.i_star_hat_eta_istar;
e3 = oo_.irfs.e_hat_eta_istar;
ca3 = oo_.irfs.ca_hat_eta_istar;

y4 = oo_.irfs.y_hat_eta_ystar;
c4 = oo_.irfs.c_hat_eta_ystar;
i4 = oo_.irfs.i_hat_eta_ystar;
pi4 = oo_.irfs.pi_hat_eta_ystar;
ec4 = oo_.irfs.ec_hat_eta_ystar;
ystar4 = oo_.irfs.y_star_hat_eta_ystar;
e4 = oo_.irfs.e_hat_eta_ystar;
ca4 = oo_.irfs.ca_hat_eta_ystar;


%% plot in a 4x2 figure

% time period
T = 11;
xtime = 0:1:T-1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure (1)

subplot(4,2,1)
plot(xtime,y1(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c1(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i1(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi1(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec1(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,e1(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Level')

subplot(4,2,7)
plot(xtime,ca1(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1b
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (2)

subplot(4,2,1)
plot(xtime,y2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,ep2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Exogenous Preference')

subplot(4,2,7)
plot(xtime,e2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Level')

subplot(4,2,8)
plot(xtime,ca2(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1c
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (3)

subplot(4,2,1)
plot(xtime,y3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,istar3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Foreign Nominal Interest Rate')

subplot(4,2,7)
plot(xtime,e3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Level')

subplot(4,2,8)
plot(xtime,ca3(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 1d
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure (4)

subplot(4,2,1)
plot(xtime,y4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,ystar4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Foreign Output')

subplot(4,2,7)
plot(xtime,e4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Level')

subplot(4,2,8)
plot(xtime,ca4(1:T),'b-')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% run the dynare .mod file
dynare Benchmark_Model_2

% collect relevant impulse response to productivity shock (from Dynare simulation)
y5 = oo_.irfs.y_hat_eta_istar;
c5 = oo_.irfs.c_hat_eta_istar;
i5 = oo_.irfs.i_hat_eta_istar;
pi5 = oo_.irfs.pi_hat_eta_istar;
ec5 = oo_.irfs.ec_hat_eta_istar;
istar5 = oo_.irfs.i_star_hat_eta_istar;
e5 = oo_.irfs.e_hat_eta_istar;
ca5 = oo_.irfs.ca_hat_eta_istar;

%% Plot 4x2 figure

figure (5)

subplot(4,2,1)
plot(xtime,y5(1:T),'r-',xtime,y3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c5(1:T),'r-',xtime,c3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i5(1:T),'r-',xtime,i3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi5(1:T),'r-',xtime,pi3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec5(1:T),'r-',xtime,ec3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,istar5(1:T),'r-',xtime,istar3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Foreign Nominal Interest Rate')

subplot(4,2,7)
plot(xtime,e5(1:T),'r-',xtime,e3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Level')

subplot(4,2,8)
plot(xtime,ca5(1:T),'r-',xtime,ca3(1:T),'b-')
legend('2','1c')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Question 3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3a
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% run the dynare .mod file
dynare Benchmark_Model_3

% collect relevant impulse response to productivity shock (from Dynare simulation)
y_a = oo_.irfs.y_hat_eta_ystar;
c_a = oo_.irfs.c_hat_eta_ystar;
i_a = oo_.irfs.i_hat_eta_ystar;
pi_a = oo_.irfs.pi_hat_eta_ystar;
ec_a = oo_.irfs.ec_hat_eta_ystar;
ystar_a = oo_.irfs.y_star_hat_eta_ystar;
e_a = oo_.irfs.e_hat_eta_ystar;
ca_a = oo_.irfs.ca_hat_eta_ystar;
ep_a = zeros(T,1);

%% plot in a 4x2 figure

figure (6)

subplot(4,2,1)
plot(xtime,y_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,ystar_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Foreign Output')

subplot(4,2,7)
plot(xtime,e_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate level')

subplot(4,2,8)
plot(xtime,ca_a(1:T))
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3b
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% run the dynare .mod file
dynare Benchmark_Model_3b

% **********************************************
% generate IRFs using "genIR_dynare_1stord.m"
% **********************************************

nshock = M_.exo_nbr;
T = 11;

% the shock vector
svec = zeros(nshock,1);
svec(1)  = 0;
svec(2)  = 0;
svec(3)  = 2;
svec(4)  = 0;
svec(5)  = 0;
svec(6)  = 4;
svec(7)  = 0;
svec(8)  = 0;

% obtain IR
[yt,ystate]=genIR_dynare_1stord(oo_,M_,svec,T);

% **********************************************


% collect relevant impulse response to productivity shock (from Dynare simulation)
y_b = yt(4,:);
c_b = yt(1,:);
i_b = yt(2,:);
pi_b = yt(3,:);
ec_b = yt(11,:);
ep_b = yt(17,:);
e_b = yt(21,:);
ca_b = yt(20,:);

%% plot in a 4x2 figure

figure (7)

subplot(4,2,1)
plot(xtime,y_b(1:T),'r-',xtime,y_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c_b(1:T),'r-',xtime,c_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i_b(1:T),'r-',xtime,i_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi_b(1:T),'r-',xtime,pi_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec_b(1:T),'r-',xtime,ec_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,ep_b(1:T),'r-',xtime,ep_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Exogenous Preference')

subplot(4,2,7)
plot(xtime,e_b(1:T),'r-',xtime,e_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate level')

subplot(4,2,8)
plot(xtime,ca_b(1:T),'r-',xtime,ca_a(1:T),'b-')
legend('3b','3a')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3c
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% run the dynare .mod file
dynare Benchmark_Model_3c

% **********************************************
% generate IRFs using "genIR_dynare_1stord.m"
% **********************************************

nshock = M_.exo_nbr;
T = 11;

% the shock vector
svec = zeros(nshock,1);
svec(1)  = 0;
svec(2)  = 0;
svec(3)  = 2;
svec(4)  = 0;
svec(5)  = 0;
svec(6)  = 4;
svec(7)  = 0;
svec(8)  = 0;

% obtain IR
[yt,ystate]=genIR_dynare_1stord(oo_,M_,svec,T);

% **********************************************


% collect relevant impulse response to productivity shock (from Dynare simulation)
y_c = yt(4,:);
c_c = yt(1,:);
i_c = yt(2,:);
pi_c = yt(3,:);
ec_c = yt(11,:);
ep_c = yt(17,:);
e_c = yt(21,:);
ca_c = yt(20,:);

%% plot in a 4x2 figure

figure (8)

subplot(4,2,1)
plot(xtime,y_c(1:T),'g-',xtime,y_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c_c(1:T),'g-',xtime,c_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i_c(1:T),'g-',xtime,i_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi_c(1:T),'g-',xtime,pi_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI Inflation')

subplot(4,2,5)
plot(xtime,ec_c(1:T),'g-',xtime,ec_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,ep_c(1:T),'g-',xtime,ep_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Exogenous Preference')

subplot(4,2,7)
plot(xtime,e_c(1:T),'g-',xtime,e_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate level')

subplot(4,2,8)
plot(xtime,ca_c(1:T),'g-',xtime,ca_b(1:T),'r-')
legend('3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 3d
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% run the dynare .mod file
dynare Benchmark_Model_3d

% **********************************************
% generate IRFs using "genIR_dynare_1stord.m"
% **********************************************

nshock = M_.exo_nbr;
T = 11;

% the shock vector
svec = zeros(nshock,1);
svec(1)  = 0;
svec(2)  = 2;
svec(3)  = 0;
svec(4)  = 0;
svec(5)  = 4;
svec(6)  = 0;
svec(7)  = 0;

% obtain IR
[yt,ystate]=genIR_dynare_1stord(oo_,M_,svec,T);

% **********************************************


% collect relevant impulse response to productivity shock (from Dynare simulation)
y_d = yt(4,:);
c_d = yt(1,:);
i_d = yt(2,:);
pi_d = yt(3,:);
ec_d = yt(11,:);
ep_d = yt(17,:);
e_d = yt(21,:);
ca_d = yt(20,:);

%% plot in a 4x2 figure

figure (9)

subplot(4,2,1)
plot(xtime,y_d(1:T),'b-',xtime,y_c(1:T),'g-',xtime,y_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Output')

subplot(4,2,2)
plot(xtime,c_d(1:T),'b-',xtime,c_c(1:T),'g-',xtime,c_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Consumption')

subplot(4,2,3)
plot(xtime,i_d(1:T),'b-',xtime,i_c(1:T),'g-',xtime,i_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Nominal Interest Rate')

subplot(4,2,4)
plot(xtime,pi_d(1:T),'b-',xtime,pi_c(1:T),'g-',xtime,pi_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic CPI inflation')

subplot(4,2,5)
plot(xtime,ec_d(1:T),'b-',xtime,ec_c(1:T),'g-',xtime,ec_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate Depreciation Rate')

subplot(4,2,6)
plot(xtime,ep_d(1:T),'b-',xtime,ep_c(1:T),'g-',xtime,ep_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Exogenous Preference')

subplot(4,2,7)
plot(xtime,e_d(1:T),'b-',xtime,e_c(1:T),'g-',xtime,e_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Nominal Exchange Rate level')

subplot(4,2,8)
plot(xtime,ca_d(1:T),'b-',xtime,ca_c(1:T),'g-',xtime,ca_b(1:T),'r-')
legend('3d','3c','3b')
xlabel('quarter')
ylabel('% deviation')
title('Domestic Current Account')

