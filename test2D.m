% Testi za monte_carlo_doloceni_integral2D

f = @(x, y) x + y;
f2 = @(x, y) sin(x) .* cos(y);
f3 = @(x, y) exp(x) - exp(y);
f4 = @(x, y) x.^3 + 2 * y.^2 + 3 .* x.* y;
f5 = @(x, y) sqrt(x) + log(y);


a_min = 2;
a_max = pi/2;
b_min = 4;
b_max = pi;
N = 1000 ; 



monte_carlo_doloceni_integral2D(f, a_min, a_max, b_min, b_max, N)
monte_carlo_doloceni_integral2D(f2, a_min, a_max, b_min, b_max, N)
monte_carlo_doloceni_integral2D(f3, a_min, a_max, b_min, b_max, N)
monte_carlo_doloceni_integral2D(f4, a_min, a_max, b_min, b_max, N)
monte_carlo_doloceni_integral2D(f5, a_min, a_max, b_min, b_max, N)








