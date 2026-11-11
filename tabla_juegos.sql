-- Pegar en Supabase > SQL Editor > Run
create table public.juegos (
  id bigint generated always as identity primary key,
  created_at timestamptz not null default now(),
  titulo text not null,
  genero text not null,
  puntuacion int not null check (puntuacion between 1 and 10),
  resena text not null,
  portada text not null,
  porque text not null
);

-- Lo que pide la consigna: RLS desactivado (solo para pruebas) y Realtime activado
alter table public.juegos disable row level security;
alter publication supabase_realtime add table public.juegos;
