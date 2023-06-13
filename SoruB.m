% Kökünü bulmak istediğimiz fonksiyonu girdim
fonksiyon = @(x) -12 - 21*x + 18*x^2 - 2.75*x^3;

% Kök için ilk tahminleri girdim
alt_sinir = -1;
ust_sinir = 0;

% İlk tahminler arasındaki orta noktayı hesaplama
orta_nokta = (alt_sinir + ust_sinir) / 2;

% Kökün hassasiyet seviyesi
hata_epsilonu = 0.01;

iterasyon_sayisi = 0;

% Kökü bulmak için İkiye bölme metodu kullandım
while abs((ust_sinir - alt_sinir) / ust_sinir) > hata_epsilonu
    % İlk tahminler arasındaki orta nokta hesaplama
    orta_nokta = (alt_sinir + ust_sinir) / 2;
    
    iterasyon_sayisi = iterasyon_sayisi + 1;
    
    % Eğer orta nokta fonksiyonun sıfır olduğu noktaysa döngüden çık
    if fonksiyon(orta_nokta) == 0
        break;
    % Eğer orta nokta ve alt sınırın çarpımı negatifse üst sınırı orta noktaya eşitle
    elseif fonksiyon(orta_nokta) * fonksiyon(alt_sinir) < 0
        ust_sinir = orta_nokta;
    % Eğer orta nokta ve alt sınırın çarpımı pozitifse alt sınırı orta
    % noktaya eşitleme
    else
        alt_sinir = orta_nokta;
    end
end

% Kökü ve hata oranını ekrana yazdırma
fprintf("Kök: %.4f\n", orta_nokta);
fprintf("Hata Oranı: %.4f\n", abs((ust_sinir - alt_sinir) / ust_sinir));
fprintf("Iterasyon Sayısı: %d\n", iterasyon_sayisi);

