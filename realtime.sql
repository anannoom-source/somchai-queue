-- Run this after the original schema if Realtime is not already enabled.
-- It adds the two tables to Supabase Realtime publication.
do $$
begin
  if not exists (
    select 1 from pg_publication_tables
    where pubname = 'supabase_realtime' and schemaname = 'public' and tablename = 'orders'
  ) then
    alter publication supabase_realtime add table public.orders;
  end if;
  if not exists (
    select 1 from pg_publication_tables
    where pubname = 'supabase_realtime' and schemaname = 'public' and tablename = 'menus'
  ) then
    alter publication supabase_realtime add table public.menus;
  end if;
end $$;
