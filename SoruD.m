% Kök Bulma Problemi
% Newton-Raphson Metodu

% Fonksiyon ve türevi tanımladım
fonksiyon = @(x) -12 - 21*x + 18*x^2 - 2.75*x^3;
fonksiyon_turevi = @(x) -21 + 36*x - 8.25*x^2; % f'nin türevi

% Başlangıç değeri 
x = -1;

epsilon = 0.01;
iterasyon_sayisi = 0;

% Newton-Raphson metodu 
while abs(fonksiyon(x) / fonksiyon_turevi(x)) > epsilon
x = x - fonksiyon(x) / fonksiyon_turevi(x);
iterasyon_sayisi = iterasyon_sayisi + 1;
end

% Ekrana yazdırma
fprintf("Kök: %.4f\n", x);
fprintf("Hata Oranı: %.4f\n", abs(fonksiyon(x)));
fprintf("Iterasyon Sayısı: %d\n", iterasyon_sayisi);
