% Benchmark_Model_3.mod
%
% DESCRIPTION: dynare.mod file to solve question 1 and 3
%
% Group 30
%


%----------------------------------------------------------------
% 1. Defining variables and parameters
%----------------------------------------------------------------

var c_hat i_hat pi_hat y_hat s_hat q_hat pi_h_hat pi_f_hat mc_hat a_hat
    ec_hat y_star_hat pi_star_hat i_star_hat phi_hat epsilon_h_hat 
    epsilon_z_hat epsilon_s_hat deltay_hat ca_hat e_hat;

varexo epsilon_m_hat eta_phi eta_z eta_s eta_h eta_ystar
       eta_pistar eta_istar;

parameters sig alp eta bet theta_h chi phi h gamma delta_h rho_i
           psi_pi psi_y psi_deltay psi_e rho_phi rho_z rho_s rho_h
           rho_ystar rho_pistar rho_istar kappa_star psi_pi_star
           psi_y_star sig_m sig_phi sig_z sig_s sig_h sig_ystar
           sig_pistar sig_istar;


%----------------------------------------------------------------
% 2. Calibration of parameters
%----------------------------------------------------------------

sig = 1;
alp = 0.25;
eta = 0.80;
bet = 0.99;
theta_h = 0.70;
chi = 0.01;
phi = 1.26;
h = 0.25;
gamma = 0.12;
delta_h = 0.25;
rho_i = 0.70;
psi_pi = 2.00;
psi_y = 0.08;
psi_deltay = 0.67;
psi_e = 0;
rho_phi = 0.90;
rho_z = 0.80;
rho_s = 0.65;
rho_h = 0.55;
rho_ystar = 0.75;
rho_pistar = 0.60;
rho_istar = 0.70;
kappa_star = 0.04;
psi_pi_star = 1.50;
psi_y_star = 0.125;
sig_m = 1;
sig_phi = 1;
sig_z = 1;
sig_s = 1;
sig_h = 1;
sig_ystar = 4;
sig_pistar = 1;
sig_istar = 1;

%----------------------------------------------------------------
% 3. Model
%----------------------------------------------------------------

model (linear);

    //1
    c_hat = (h/(1+h))*c_hat(-1)+(1/(1+h))*c_hat(+1)
            -(sig^-1)*((1-h)/(1+h))*(i_hat-pi_hat(+1))
            +gamma*epsilon_z_hat;
    
    //2
    y_hat = (1-alp)*c_hat+alp*y_star_hat+alp*eta*(2-alp)*s_hat;

    //3
    q_hat = (1-alp)*s_hat;

    //4
    s_hat-s_hat(-1) = pi_f_hat-pi_h_hat;

    //5
    pi_h_hat-delta_h*pi_h_hat(-1) = bet*(pi_h_hat(+1)-delta_h*pi_h_hat)
                                    +((1-theta_h)*(1-theta_h*bet)/theta_h)*mc_hat
                                    +epsilon_h_hat;

    //6
    mc_hat = phi*y_hat+alp*s_hat+sig*c_hat-epsilon_s_hat;

    //7
    pi_hat = pi_h_hat+alp*(s_hat-s_hat(-1));

    //8
    i_hat-i_star_hat = ec_hat(+1)-chi*(a_hat+phi_hat(+1));

    //9
    y_hat-c_hat = a_hat-(bet^-1)*a_hat(-1)+(alp/(1-alp))*q_hat;

    //10
    pi_f_hat = ec_hat+pi_star_hat;

    //11
    i_hat = rho_i*i_hat(-1)+psi_pi*pi_hat+psi_y*y_hat+psi_deltay*deltay_hat
            +psi_e*ec_hat-epsilon_m_hat;

    //12
    phi_hat = rho_phi*phi_hat(-1)+eta_phi;

    //13
    epsilon_z_hat = rho_z*epsilon_z_hat(-1)+eta_z;

    //14
    epsilon_s_hat = rho_s*epsilon_s_hat(-1)+eta_s;

    //15
    epsilon_h_hat = rho_h*epsilon_h_hat(-1)+eta_h;

    %Specificiation 1 (16A - 18A)
    //16A
    y_star_hat = rho_ystar*y_star_hat(-1)-eta_ystar;

    //17A
    pi_star_hat = rho_pistar*pi_star_hat(-1)+eta_pistar;

    //18A
    i_star_hat = rho_istar*i_star_hat(-1)+eta_istar;

    %End of Specification 1

    //23 (Current Account)
    ca_hat = y_hat-c_hat;

    //24 (Output gap)
    deltay_hat = y_hat-y_hat(-1);

    //25 (Nominal Exchange Rate)
    e_hat = ec_hat+e_hat(-1);

end;

%----------------------------------------------------------------
% 4. Computation
%----------------------------------------------------------------

shocks;
%var epsilon_m_hat = sig_m^2;
%var eta_z = sig_z^2;
%var eta_istar= sig_istar^2;
var eta_ystar = sig_ystar^2;

end;

check;

model_diagnostics;

//a
%stoch_simul(irf=10, order=1, irf_shocks=(epsilon_m_hat)) y_hat c_hat i_hat pi_hat ec_hat e_hat ca_hat;

//b
%stoch_simul(irf=12, order=1, irf_shocks=(eta_z)) y_hat c_hat i_hat pi_hat ec_hat epsilon_z_hat e_hat ca_hat;

//c
%stoch_simul(irf=10, order=1, irf_shocks=(eta_istar)) y_hat c_hat i_hat pi_hat ec_hat i_star_hat e_hat ca_hat;

//d
stoch_simul(irf=12, order=1, irf_shocks=(eta_ystar), nograph) y_hat c_hat i_hat pi_hat ec_hat y_star_hat e_hat ca_hat;




