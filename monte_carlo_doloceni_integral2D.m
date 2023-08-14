function monte_carlo_doloceni_integral2D(f, a_min, a_max, b_min, b_max, N)
    % monte_carlo_doloceni_integral2D(f, a_min, a_max, b_min, b_max, c_min, c_max, N)
    %
    % Funkcija aproksimira določeni integral funkcije f s pomočjo N naključno izbranih točk v prostoru
    % omejenem z [a_min,a_max] x [b_min,b_max].
    %
    % f     ... funkcija, katere integral želimo aproksimirati
    % a_min ... spodnja meja integriranja na x osi
    % a_max ... zgornja meja integriranja na x osi
    % b_min ... spodnja meja integriranja na y osi
    % b_max ... zgornja meja integriranja na y osi
    % N     ... število naključnih točk, ki jih želimo generirati
    
    
    % generiramo naključne točke
    x_nakl = rand(1, N) * (a_max - a_min) + a_min; % generiramo naključne točke na x osi
    y_nakl = rand(1, N) * (b_max - b_min) + b_min; % generiramo naključne točke na y osi
    
    % Izračunamo vrednsoti funkcije f v naključnih točkah
    fxy = sum(f(x_nakl, y_nakl));
    
    % Izračunamo približek za integral.
    ploscina = (a_max - a_min) * (b_max - b_min);
    Monte_Integral = (fxy * ploscina) / N;
    
    % Izračunamo dejansko vrednost integrala
    Matlab_Integral = integral2(f, a_min, a_max, b_min, b_max);
    
    % Izračunamo napako Monte Carla
    napaka = abs((Monte_Integral - Matlab_Integral) / Matlab_Integral * 100);

    % Display the results
    disp(['Monte Carlov integral: ' num2str(Monte_Integral)])
    disp(['Matlabov integral: ' num2str(Matlab_Integral)])
    disp(['Napaka v odstotkih ' num2str(napaka) '%'])
end
