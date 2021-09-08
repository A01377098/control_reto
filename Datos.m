% Sept 2021 
% Equipo:
%       Eva Denisse Vargas Sosa           A01377098
%       Juan Daniel Aranda Morales        A01379571
%       Paul Martín García Morfín         A01750164
%       Santiago Ortiz Suzarte            A01750402
%       Brenda Vega Méndez                A01378360

% DISCLAMER: el sig. código fue proporcionado por CONTINENTAL. 
%       file = ([pwd, '\', 'SimOutput\challenge\line', '\', 'Variation 0' '.erg']);
%       CM = cmread(file);
%       Time_s = CM.Time.data';
%       TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data';
cmenv;
%%  Gráficas del comportamiento durante las pruebas de linea
figure
%texto = 'Variation  ';
pruebas = 7; % Total de pruebas 8 

for i = 0:pruebas
    
    file = ([pwd, '\', 'SimOutput\challenge\line', '\', 'Variation ', num2str(i) '.erg']);
    CM = cmread(file);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data';
    hold on
    plot (Time_s, TrailerAngle_deg)
    title('Pruebas de desempeño en línea')
    legend('Prueba 0','Prueba 1','Prueba 2','Prueba 3','Prueba 4','Prueba 5','Prueba 6','Prueba 7')
    xlabel('Tiempo[s]')
    ylabel('Angulo Trailer ')
end
%% Gráficas del comportamiento durante las pruebas de circulo 
figure
for i = 0:pruebas
    file = ([pwd, '\', 'SimOutput\challenge\circle', '\', 'Variation ', num2str(i) '.erg']);
    CM = cmread(file);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data';
    hold on
    plot (Time_s, TrailerAngle_deg)
    title('Pruebas de desempeño en circulo')
    legend('Prueba 0','Prueba 1','Prueba 2','Prueba 3','Prueba 4','Prueba 5','Prueba 6','Prueba 7')
    xlabel('Tiempo[s]')
    ylabel('Angulo Trailer ')
end
%%  Gráficas del comportamiento durante las pruebas de regreso de línea
figure
for i = 0:pruebas
    file = ([pwd, '\', 'SimOutput\challenge\returnLine', '\', 'Variation ', num2str(i) '.erg']);
    CM = cmread(file);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data';
    hold on
    plot (Time_s, TrailerAngle_deg)
    title('Pruebas de desempeño en regreso línea')
    legend('Prueba 0','Prueba 1','Prueba 2','Prueba 3','Prueba 4','Prueba 5','Prueba 6','Prueba 7')
    xlabel('Tiempo[s]')
    ylabel('Angulo Trailer ')
end
