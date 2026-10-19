-- Exécuter dans Supabase > SQL Editor. Remplacer ADMIN_UID par l’UID Auth de votre compte administrateur.
create table if not exists public.tournaments (id text primary key, payload jsonb not null default '{}'::jsonb, updated_at timestamptz not null default now());
alter table public.tournaments enable row level security;
revoke all on public.tournaments from anon, authenticated;
grant select on public.tournaments to anon, authenticated;
grant update on public.tournaments to authenticated;
drop policy if exists "Public read tournament" on public.tournaments;
create policy "Public read tournament" on public.tournaments for select to anon, authenticated using (id='main');
drop policy if exists "Only organizer can update" on public.tournaments;
-- IMPORTANT : remplacer 00000000-0000-0000-0000-000000000000 par le vrai UID Auth de l'organisateur.
create policy "Only organizer can update" on public.tournaments for update to authenticated using (id='main' and auth.uid()='00000000-0000-0000-0000-000000000000'::uuid) with check (id='main' and auth.uid()='00000000-0000-0000-0000-000000000000'::uuid);
insert into public.tournaments(id,payload) values ('main','{}'::jsonb) on conflict (id) do nothing;
