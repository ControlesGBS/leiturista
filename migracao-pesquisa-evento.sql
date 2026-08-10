-- Pesquisa de satisfação do evento (única, específica desse evento).
-- Roda no SQL Editor do Supabase do GBS.

create table if not exists pesquisa_evento (
  matricula text primary key,
  nota_geral int not null,
  relevancia int not null,
  mais_eventos text not null,
  comentario text,
  respondido_em timestamptz default now()
);

alter table pesquisa_evento disable row level security;
