A = rand(1,10);
B = rand(1,15);
C = rand(1,20);
D = rand(1,30);

figure
hold on
yyaxis left
ha = plot(A);
yyaxis right
hb = plot(B);
yyaxis left
hc = plot(C);
yyaxis right
hd = plot(D);
hold off
legend([ha,hb,hc,hd], 'A','B','C','D')

figure
yyaxis left
ha = plot(A);
hold on
hc = plot(C);
hold off
yyaxis right
hb = plot(B);
hold on
hd = plot(D);
hold off
legend([ha,hb,hc,hd], 'A','B','C','D')