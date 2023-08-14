function monte_carlo_doloceni_integral3D(f, a_min, a_max, b_min, b_max, c_min, c_max, N)
    % monte_carlo_doloceni_integral3D(f, a_min, a_max, b_min, b_max, c_min, c_max, N)
    %
    % Funkcija aproksimira določeni integral funkcije f s pomočjo N naključno izbranih točk v prostoru
    % omejenem z [a_min,a_max] x [b_min,b_max] x [c_min,c_max].
    %
    % f     ... funkcija, katere integral želimo aproksimirati
    % a_min ... spodnja meja integriranja na x osi
    % a_max ... zgornja meja integriranja na x osi
    % b_min ... spodnja meja integriranja na y osi
    % b_max ... zgornja meja integriranja na y osi
    % c_min ... spodnja meja integriranja na z osi
    % c_max ... zgornja meja integriranja na z osi
    % N     ... število naključnih točk, ki jih želimo generirati


    % generiramo naključne točke
    x_nakl = rand(1, N) * (a_max - a_min) + a_min; % generiramo naključne točke na x osi
    y_nakl = rand(1, N) * (b_max - b_min) + b_min; % generiramo naključne točke na y osi
    z_nakl = rand(1, N) * (c_max - c_min) + c_min; % generiramo naključne točke na z osi
    
    % izračunamo vsoto vrednosti funkcij
    fxyz = sum(f(x_nakl, y_nakl,z_nakl));

    prostornina = (a_max - a_min) * (b_max - b_min) * (c_max - c_min); % izračunamo prostornino omejenega kvadra 

    Monte_Integral = (fxyz * prostornina) / N; % aproksimiramo vrednost integrala z metodo Monte Carlo

    Matlab_Integral = integral3(f, a_min, a_max, b_min, b_max,c_min,c_max); % izračunamo dejansko vrednost integrala

    % Izračunamo razliko med dobljenima vrednostima integrala
    napaka = abs((Monte_Integral - Matlab_Integral) / Matlab_Integral * 100);

    % Prikažemo rezultate
    disp(['Monte Carlo Integral: ' num2str(Monte_Integral)])
    disp(['Matlab Integral: ' num2str(Matlab_Integral)])
    disp(['Percentage Error: ' num2str(napaka) '%'])
end
