syms x y;

% Prompt user to enter components of the vector field
prompt = "Enter i component of vector field: \n"; 
x_in = input(prompt);
prompt = "Enter j component of vector field: \n";
y_in = input(prompt);

% Plot vector field 
figure(1);
[X,Y] = meshgrid(-2:0.4:2,-2:0.4:2);
F1 = subs(x_in,[x,y],{X,Y});
F2 = subs(y_in,[x,y],{X,Y}); 
set(gcf,"units","normalized","position",[0.6 0.2 0.35 0.4]); 
quiver(X,Y,F1,F2,1,"color",[0 0 1],"linewidth",2);
shading flat;
xlabel("ix");
ylabel("jy");
title(sprintf("Vector field = i[%s] + j[%s] \n",x_in,y_in));

% Calculate divergence 
diverg = divergence([x_in, y_in], [x, y]);

% Plot the divergence
figure(2);
set(gcf,"units","normalized","position",[0.2 0.2 0.3 0.5]); 
shading interp; 
axis equal;  % Fixed typo: "axis equal" instead of "axis eqaul"
box on; 
view(-26,52);
fsurf(diverg,[-2,2,-2,2]);
xlabel("x");
ylabel("y");
zlabel("div");
title("Divergence");
colorbar;
