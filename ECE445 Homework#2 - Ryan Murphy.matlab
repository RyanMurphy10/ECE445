% Data
X = [0.5, 1.5, 2.0, 5.0, 10.0];   % Input (X)
Y = [0.9, 3.06, 4.2, 9.91, 20.3]; % Output (Y)

% Linear fit (y = mx + b)
p = polyfit(X, Y, 1); % Finds the slope (m) and intercept (b)
m = p(1); % Slope
b = p(2); % Intercept

% Best fit line
Y_fit = polyval(p, X); % Evaluate the linear fit at each X point

% Plotting the data points
figure;
scatter(X, Y, 'filled', 'b'); % Scatter plot for data points (blue circles)
hold on;
plot(X, Y_fit, '-r', 'LineWidth', 2); % Plot the best-fit line (red line)

% Adding title and labels
title('Input vs Output with Linear Fit');
xlabel('Input (X)');
ylabel('Output (Y)');
legend('Data Points', 'Best Fit Line', 'Location', 'northwest');

% Display the slope and intercept on the plot
text(6, 15, sprintf('y = %.2fx + %.2f', m, b), 'FontSize', 12, 'Color', 'r');

% Calculate R-squared value
SS_res = sum((Y - Y_fit).^2); % Residual sum of squares
SS_tot = sum((Y - mean(Y)).^2); % Total sum of squares
R_squared = 1 - (SS_res / SS_tot); % R-squared

% Display R-squared on the plot
text(6, 12, sprintf('R^2 = %.3f', R_squared), 'FontSize', 12, 'Color', 'r');

% Turn on the grid
grid on;
hold off;
