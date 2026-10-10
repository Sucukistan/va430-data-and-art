# Data and Art · VA430/530 midterm session

Sabancı Üniversitesi VA430/530 (Art Analysis, Kerem Ozan Bayraktar) midterm oturumunun web sunumu ve canlı anketi.

- `index.html`: sunum (25 slayt). Ok tuşları / boşluk / clicker ile ilerler. **N** notlar, **F** tam ekran.
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

## B planı: canlı bağlantı yoksa

Google Form ile topla: 0–10 ölçekli dört soru, şu sırayla: warm–cool, calm–tense, ordered–chaotic, flat–deep. Yanıt tablosunu kopyala ve:

- **Slayt 17**'de yapıştır: her satırın son 4 sayısı 1. tur olarak çizilir.
- **Slayt 20**'de yapıştır: her satırda 8 sayı olmalı (önce 1. tur, sonra 2. tur). İki formu takma adla eşleştirip yan yana koyman gerekir.

0–10 ölçeği kendiliğinden 0–100'e çevrilir. Bu mod Claude'daki yedek sunumda da çalışır.

## Dersten sonra

`supabase.sql`'in sonundaki "DERSTEN SONRA" satırlarını çalıştırarak yeni cevapları kapat. Veriyi Table Editor'dan CSV olarak indir.

Görsel: Georges Seurat, *A Sunday on La Grande Jatte — 1884*, Art Institute of Chicago, kamu malı.
