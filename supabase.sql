-- VA430/530 "Data and Art" live exercise
-- Mevcut bir Supabase projesinde SQL Editor'da bir kez çalıştır.
-- Sadece va430_ önekli iki tablo ekler; projedeki diğer tablolara dokunmaz.

create table if not exists public.va430_ratings (
  id uuid primary key default gen_random_uuid(),
  session text not null check (session like 'va430-%' and char_length(session) <= 60),
  round smallint not null check (round in (1, 2)),
  device text not null check (char_length(device) between 8 and 64),
  cool smallint not null check (cool between 0 and 100),
  tense smallint not null check (tense between 0 and 100),
  chaos smallint not null check (chaos between 0 and 100),
  deep smallint not null check (deep between 0 and 100),
  created_at timestamptz not null default now(),
  unique (session, round, device)
);

create table if not exists public.va430_words (
  id uuid primary key default gen_random_uuid(),
  session text not null check (session like 'va430-%' and char_length(session) <= 60),
  device text not null check (char_length(device) between 8 and 64),
  word text not null check (char_length(word) between 1 and 40),
  created_at timestamptz not null default now(),
  unique (session, device)
);

alter table public.va430_ratings enable row level security;
alter table public.va430_words enable row level security;

-- Herkes ekleyebilir ve okuyabilir; kimse değiştiremez ya da silemez.
create policy "va430 ratings insert" on public.va430_ratings for insert to anon with check (true);
create policy "va430 ratings read"   on public.va430_ratings for select to anon using (true);
create policy "va430 words insert"   on public.va430_words   for insert to anon with check (true);
create policy "va430 words read"     on public.va430_words   for select to anon using (true);

grant select, insert on public.va430_ratings to anon;
grant select, insert on public.va430_words to anon;

-- Tahtanın yeni cevapları anında görmesi için
alter publication supabase_realtime add table public.va430_ratings;
alter publication supabase_realtime add table public.va430_words;


-- ---------------------------------------------------------------
-- DERSTEN SONRA: yeni cevapları kapat (okuma açık kalır)
-- drop policy "va430 ratings insert" on public.va430_ratings;
-- drop policy "va430 words insert" on public.va430_words;

-- PROVADAN SONRA: deneme oturumunu temizle
-- delete from public.va430_ratings where session = 'va430-test';
-- delete from public.va430_words where session = 'va430-test';

-- VERİYİ İNDİR: Table Editor'da tabloyu aç, filtrele, "Export to CSV"
-- select * from public.va430_ratings where session = 'va430-2026-10-13' order by created_at;
