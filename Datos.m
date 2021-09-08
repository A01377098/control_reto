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
clear
figure
pruebas = 7; % Total de pruebas 8 
%texto = 'Variation  ';
for i = 0:pruebas
    
    file = ([pwd, '\', 'SimOutput\challenge\line', '\', 'Variation ', num2str(i) '.erg']);
    CM = cmread(file);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data'.*(180/pi);
    mpLine = max(TrailerAngle_deg);
    pos_mp_line = find(TrailerAngle_deg == mpLine);
    tpLine = Time_s(pos_mp_line(1));
    tp_line_vector(i+1) = tpLine;
    mpLine_vector(i+1) = mpLine;
    sedaLine = (((log(mpLine))^2)/((log(mpLine))^2+pi^2))^0.5;
    WnLine = pi/(tpLine*((1-(sedaLine)^2)^0.5));
    tsLine = 4/(sedaLine*WnLine);
    ts_line_vector(i+1) = tsLine;
    hold on
    plot (Time_s, TrailerAngle_deg)
    title('Pruebas de desempeño en línea')
    legend('Prueba 0','Prueba 1','Prueba 2','Prueba 3','Prueba 4','Prueba 5','Prueba 6','Prueba 7')
    xlabel('Tiempo[s]')
    ylabel('Angulo Trailer ')
end

%Máximo Pico
media_mp_line = mean(mpLine_vector);
moda_mp_line = mode(mpLine_vector);
median_mp_line = median(mpLine_vector);
std_mp_line = std(mpLine_vector);
var_mp_line = var(mpLine_vector);


% %Tiempo pico
media_tp_line = mean(tp_line_vector);
moda_tp_line = mode(tp_line_vector);
median_tp_line = median(tp_line_vector);
std_tp_line = std(tp_line_vector);
var_tp_line = var(tp_line_vector);

% %Tiempo de establecimiento
media_ts_line = mean(ts_line_vector);
moda_ts_line = mode(ts_line_vector);
median_ts_line = median(ts_line_vector);
std_ts_line = std(ts_line_vector);
var_ts_line = var(ts_line_vector);


%% Gráficas del comportamiento durante las pruebas de circulo 
figure
for i = 0:pruebas
    file = ([pwd, '\', 'SimOutput\challenge\circle', '\', 'Variation ', num2str(i) '.erg']);
    CM = cmread(file);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data'.*(180/pi);
    mpCircle = max(TrailerAngle_deg);
    pos_mp_circle = find(TrailerAngle_deg == mpCircle);
    tpCirculo = Time_s(pos_mp_circle(1));
    tp_circle_vector(i+1) = tpCirculo;
    mp_circle_vector(i+1) = mpCircle;
    sedaCirculo = (((log(mpCircle))^2)/((log(mpCircle))^2+pi^2))^0.5;
    WnCirculo = pi/(tpCirculo*((1-(sedaCirculo)^2)^0.5));
    tsCirculo = 4/(sedaCirculo*WnCirculo);
    ts_circle_vector(i+1) = tsCirculo;
    hold on
    plot (Time_s, TrailerAngle_deg)
    title('Pruebas de desempeño en línea')
    legend('Prueba 0','Prueba 1','Prueba 2','Prueba 3','Prueba 4','Prueba 5','Prueba 6','Prueba 7')
    xlabel('Tiempo[s]')
    ylabel('Angulo Trailer ')
end

%Estadistica del Máximo Pico
media_mp_circle = mean(mp_circle_vector);
moda_mp_circle = mode(mp_circle_vector);
median_mp_circle = median(mp_circle_vector);
std_mp_circle = std(mp_circle_vector);
var_mp_circle = var(mp_circle_vector);


%Estadistica del Tiempo pico
media_tp_circle = mean(tp_circle_vector);
moda_tp_circle = mode(tp_circle_vector);
median_tp_circle = median(tp_circle_vector);
std_tp_circle = std(tp_circle_vector);
var_tp_circle = var(tp_circle_vector);

%Estadistica del Tiempo de establecimiento
media_ts_circle = mean(ts_circle_vector);
moda_ts = mode(ts_circle_vector);
median_ts_circle = median(ts_circle_vector);
std_ts_circle = std(ts_circle_vector);
var_ts_circle = var(ts_circle_vector);

%%  Gráficas del comportamiento durante las pruebas de regreso de línea
figure
for i = 0:pruebas
    file = ([pwd, '\', 'SimOutput\challenge\returnLine', '\', 'Variation ', num2str(i) '.erg']);
    CM = cmread(file);
    Time_s = CM.Time.data';
    TrailerAngle_deg = CM.Tr_Hitch_dr_0_z.data'.*(180/pi);
    mp_rl = max(TrailerAngle_deg);
    pos_mp_rl = find(TrailerAngle_deg == mp_rl);
    tp_rl = Time_s(pos_mp_rl(1));
    tp_rl_vector(i+1) = tp_rl;
    mp_rl_vector(i+1) = mp_rl;
    seda_rl = (((log(mp_rl))^2)/((log(mp_rl))^2+pi^2))^0.5;
    Wn_rl = pi/(tp_rl*((1-(seda_rl)^2)^0.5));
    ts_rl = 4/(seda_rl*Wn_rl);
    ts_rl_vector(i+1) = ts_rl;
    hold on
    plot (Time_s, TrailerAngle_deg)
    title('Pruebas de desempeño en línea')
    legend('Prueba 0','Prueba 1','Prueba 2','Prueba 3','Prueba 4','Prueba 5','Prueba 6','Prueba 7')
    xlabel('Tiempo[s]')
    ylabel('Angulo Trailer ')
end

%Estadistica del Máximo Pico
media_mp_rl = mean(mp_rl_vector);
moda_mp_rl = mode(mp_rl_vector);
median_mp_rl = median(mp_rl_vector);
std_mp_rl = std(mp_rl_vector);
var_mp_rl = var(mp_rl_vector);


%Estadistica del Tiempo pico
media_tp_rl = mean(tp_rl_vector);
moda_tp_rl = mode(tp_rl_vector);
median_tp_rl = median(tp_rl_vector);
std_tp_rl = std(tp_rl_vector);
var_tp_rl = var(tp_rl_vector);

% Estadistica del Tiempo de establecimiento
media_ts_rl = mean(ts_rl_vector);
moda_ts_rl = mode(ts_rl_vector);
median_ts_rl = median(ts_rl_vector);
std_ts_rl = std(ts_rl_vector);
var_ts_rl = var(ts_rl_vector);
