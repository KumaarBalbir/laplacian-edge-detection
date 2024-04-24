syms x y
prompt = "Enter a 2D function:\n"; 
f = input(prompt); 

% Plotting the 2D input function 
figure(1);
fsurf(f,[-2,2,-2,2]);
xlabel("x");
ylabel("y");
title("cos(x*y)");
hold off;

% calculate gradient 
g = gradient(f,[x,y]); 

% Plot the gradient function 
figure(2);

[X,Y] = meshgrid(-2:0.4:2,-2:0.4:2);
G1 = subs(g(1),[x,y],{X,Y});
G2 = subs(g(2),[x,y],{X,Y});

fcontour(f,[-2.2,2.2,-2.2,2.2],"k","Fill","on","LineWidth",1);
hold on; 

h = quiver(X,Y,G1,G2,1);
set(h,"color",[0 0 1],"linewidth",2);
hold on;


xlabel("ix");
ylabel("jy");
title(sprintf(['Gradient = i [%s] + j [%s] \n'],g(1),g(2)));
fprintf("\n Gradient Field = i[%s] + j[%s] \n",g(1),g(2));
hold off;