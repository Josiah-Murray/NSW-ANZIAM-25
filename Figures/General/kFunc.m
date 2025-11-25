
x=linspace(-10,10);
kVals = zeros(1,length(x));
for i = 1:length(x)
    kVals(i) = kFunction(x(i));
end

plot(x,kVals,LineWidth=2,LineStyle="-",Color=[0.4,0.2,0.7])
ylim([0,8]*10^7)
xlabel("Distance along track (m)",Interpreter="latex", FontWeight="bold",FontSize=13)
ylabel("Track stiffness (N/m$^2$)",Interpreter="latex", FontWeight="bold",FontSize=13)

function k = kFunction(x)

    if(x<-5)
        k = 4*10^7;
    elseif(x<5)
        k = 7*10^7;
    else
        k= 4.5*10^7;
    end
end