function [yt,ystate,xtime]=genIR_dynare_1stord(oo_,M_,shock,T,st)
%
% Description: generate impulse response to shocks, given the policy function (the solution) generated
%              by Dynare --- the IRF are based on the 1st-order approximate solution.
%
% Input:
%    - oo_                    : the structured array produced by Dynare, containing various solution matrices and 
%                               statistics (see Dynare manual).
%    - M_                     : structured array produced by Dynare to store various info on the model (here, mainly
%                               used to obtain the standard deviation of the exogenous shocks).
%    - shock                  : vector of initial shocks (in STANDARD DEVIATION size, e.g. "2" in the vector means 2 std
%                               shock) -- order: in "DECLARATION ORDER"
%    - T     [optional input] : the length of time period for impulse response [default: 40 periods].
%    - st    [optional input] : initial values of the state variables [default: steady state] --> NOTE: for user-provided
%                               "st" has to be in the order that Dynare produced solution ("DR-ORDER") and NOT in
%                               "DECLARATION-ORDER".
%
% Output:
%    - yt      : the impulse response dynamics of vector of endogenous variables (y(t)), in terms of LEVEL DEVIATION
%                from the steady state -- order of variables: in "DECLARATION ORDER".
%    - ystate  : the impulse response of just the state variables -- order of variables: in "DR-ORDER".
%    - xtime   : the vector of time subscript for plotting (0:1:T-1).
%
%
% The 1st-order solution by Dynare is given by (ss Dynare Manual, Section 4.13.2, page 46-47)
% 
%                y(t) = A*ystate(t-1) + B*u(t) ,
%
%  with y(t): level deviation of endog vars from SS (that's why there's NO steady state vector in RHS)
%
%
% @Copyright: Denny Lie, 21 April 2016
%
%


% obtain the vector of steady states (ordered as declared), matrices A and B
ys = oo_.dr.ys;
A = oo_.dr.ghx;
B = oo_.dr.ghu;

ny = length(ys); % number of endogenous variables
ns = size(A,2); % number of state variables 
nu = size(B,2); % number of exogenous shocks 

if nargin<5
    st = zeros(ns,1);
end

if nargin<4
    T = 41;
end
    
xtime = 0:T-1;

% initiate vectors to store yt and ystate
yt = zeros(ny,T);
ystate = zeros(ns,T);


% iterate decision (policy) rule to obtain impulse response
for j=1:T
    if j==1 % impact period
        yt(:,j) = A(oo_.dr.inv_order_var,:)*st + B(oo_.dr.inv_order_var,:)*((M_.Sigma_e^(1/2))*shock);
        ystate(:,j) = yt(oo_.dr.state_var,j);
    else
        yt(:,j) = A(oo_.dr.inv_order_var,:)*ystate(:,j-1);
        ystate(:,j) = yt(oo_.dr.state_var,j);
    end
end

















