% Kökünü bulmak istediğimiz fonksiyonu girdim
fonksiyon = @(x) -12 - 21*x + 18*x^2 - 2.75*x^3;

% Kök için ilk tahminleri girdim
alt_sinir = -1;
ust_sinir = 0;

% İlk tahminler arasındaki orta nokta
orta_nokta = (alt_sinir + ust_sinir) / 2;

% Kökün hassasiyet seviyesi
hassasiyet = 0.01;

iterasyon_sayisi = 0;

% Kökü bulmak için Yer değiştirme metodu 
while abs((ust_sinir - alt_sinir) / ust_sinir) > hassasiyet
    onceki_orta_nokta = orta_nokta; 
    orta_nokta = ust_sinir - ((ust_sinir - alt_sinir) * fonksiyon(ust_sinir)) / (fonksiyon(ust_sinir) - fonksiyon(alt_sinir)); 
    iterasyon_sayisi = iterasyon_sayisi + 1;
    if fonksiyon(orta_nokta) == 0
        break;
    elseif fonksiyon(orta_nokta) * fonksiyon(alt_sinir) < 0
        ust_sinir = orta_nokta;
    else
        alt_sinir = orta_nokta;
    end
end

% Kökü ve hata oranını ekrana yazdırma
fprintf("Kök: %.4f\n", orta_nokta);
fprintf("Hata Oranı: %.4f\n", abs((orta_nokta - onceki_orta_nokta) / orta_nokta));
fprintf("Iterasyon Sayısı: %d\n", iterasyon_sayisi);


