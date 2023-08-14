% Testi za monte_carlo_doloceni_integral3D

f1 = @(x, y,z) x + y + z;
f2 = @(x, y, z) x.^2 + 2.*y.^2 + 3.*z.^2;
f3 = @(x, y, z) sin(x) + cos(y) + exp(z);
f4 = @(x, y, z) x.^3 + 2.*y.^2 + 4.*z;
f5 = @(x, y, z) sqrt(x.^2 + y.^2 + z.^2);
f6 = @(x, y, z) sin(x.*y) + cos(y.*z) + exp(x + y + z);

a_min = 10;
a_max = 20;
b_min = 5;
b_max = 25;
c_min = 2;
c_max = 8;

N = 100000;


monte_carlo_doloceni_integral3D(f1, a_min, a_max, b_min, b_max, c_min, c_max, N)
monte_carlo_doloceni_integral3D(f2, a_min, a_max, b_min, b_max, c_min, c_max, N)
monte_carlo_doloceni_integral3D(f3, a_min, a_max, b_min, b_max, c_min, c_max, N)
monte_carlo_doloceni_integral3D(f4, a_min, a_max, b_min, b_max, c_min, c_max, N)
monte_carlo_doloceni_integral3D(f5, a_min, a_max, b_min, b_max, c_min, c_max, N)
monte_carlo_doloceni_integral3D(f6, a_min, a_max, b_min, b_max, c_min, c_max, N)

