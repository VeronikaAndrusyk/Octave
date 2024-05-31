AB = input('Введіть довжину першої сторони: ');
BC = input('Введіть довжину другої сторони: ');
AC = input('Введіть довжину третьої сторони: ');

max_side = max([AB, BC, AC]);
if AB==BC||BC==AC||AB==AC
  disp("Трикутник рівнобедренний");
elseif AB==BC==AC
  disp("Трикутник рівносторонній");
elseif max_side^2==AB^2+BC^2||max_side^2==BC^2+AC^2||max_side^2==AB^2+AC^2
  disp("Трикутник прямокутний");
else
  disp("Трикутник різносторонній");
end


% Довжина медіани, радіус вписаного та описаного кіл.
median_length = sqrt(2*(BC^2 + AC^2) - AB^2)/2;
fprintf('Довжина медіани: %f\n', median_length);

% Півпериметр та радіус вписаного кола
semi_perimeter = (AB + BC + AC) / 2;
area = sqrt(semi_perimeter*(semi_perimeter-AB)*(semi_perimeter-BC)*(semi_perimeter-AC));
in_radius = area / semi_perimeter;
fprintf('Радіус вписаного кола: %f\n', in_radius);

% Радіус описаного кола
circum_radius = (AB * BC * AC) / (4 * area);
fprintf('Радіус описаного кола: %f\n', circum_radius);

