# Data and Art · VA430/530 midterm session

Sabancı Üniversitesi VA430/530 (Art Analysis, Kerem Ozan Bayraktar) midterm oturumunun web sunumu ve canlı anketi.

- `index.html`: sunum (26 slayt). Ok tuşları / boşluk / clicker ile ilerler. **N** notlar, **F** tam ekran.
- `p/`: öğrencilerin telefondan açtığı anket sayfası. İsim toplanmaz.
- `config.js`: canlı bağlantı ayarları (Supabase URL, publishable key, oturum kodu, anket adresi).
- `supabase.sql`: veritabanı kurulumu (bir kez).

## Canlı anketi açmak

1. Supabase'de mevcut bir projede **SQL Editor** → `supabase.sql` içeriğini yapıştır → **Run**. Sadece `va430_` önekli iki tablo ekler.
2. **Project Settings → API**'den **Project URL** ve **publishable / anon key**'i al. `service_role` / secret key'i asla kullanma.
3. `config.js`'te `url` ve `key`'i doldur. Ders günü için `session`'ı değiştir (ör. `va430-2026-10-13`); prova için `va430-test` kullan.
4. Commit + push. GitHub Pages bir dakika içinde güncellenir.

## Derste

- Sunum bilgisayarında bir kez **L**'ye bas: sol altta "you control" görünür. Bu bilgisayar turları yönetir.
- Turlar ileri giderken kendiliğinden açılır: slayt 16 → 1. tur, slayt 19 → 2. tur, slayt 21 → kelimeler.
- Elle: **1** (1. tur), **2** (2. tur), **3** (kelimeler), **0** (kapat), **9** (bekle).
- Kelime duvarında uygunsuz bir kelimeye tıklamak onu bu ekranda gizler.
- Egzersiz görselini slayt 16'ya sürükle; makinenin tahmini slayt 17 ve 20'de çıkar.
- Slayt 17 ve 20: sağ üstte gelen ham satırlar akar. En az 3 cevap olunca en tartışmalı eksenler kendiliğinden etiketlenir: sınıfın en çok bölündüğü (en büyük standart sapma), makineden en uzak ve 2. turda en çok kayan.
- Telefonlar gönderdikten sonra kendi cevabını o turun sınıf dağılımı üstünde görür.
- Slayt 22: sınıfın verisi altı biçimde (Lines, Blooms, Glyphs, Weave, Dots, Together). Ok tuşu biçimleri gezer, **Play** sırayla döndürür, **Save PNG** 1080×1080 indirir. Kişi başına 2. tur varsa o, yoksa 1. tur kullanılır.

## B planı: canlı bağlantı yoksa

Google Form ile topla: 0–10 ölçekli dört soru, şu sırayla: warm–cool, calm–tense, ordered–chaotic, flat–deep. Yanıt tablosunu kopyala ve:

- **Slayt 17**'de yapıştır: her satırın son 4 sayısı 1. tur olarak çizilir.
- **Slayt 20**'de yapıştır: her satırda 8 sayı olmalı (önce 1. tur, sonra 2. tur). İki formu takma adla eşleştirip yan yana koyman gerekir.

0–10 ölçeği kendiliğinden 0–100'e çevrilir. Yapıştırılan veri slayt 22'deki portreye de gider. Bu mod Claude'daki yedek sunumda da çalışır (orada PNG indirme yok).

## Dersten sonra

`supabase.sql`'in sonundaki "DERSTEN SONRA" satırlarını çalıştırarak yeni cevapları kapat. Veriyi Table Editor'dan CSV olarak indir.

Görsel: Georges Seurat, *A Sunday on La Grande Jatte — 1884*, Art Institute of Chicago, kamu malı.
