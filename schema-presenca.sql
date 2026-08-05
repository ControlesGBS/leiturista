-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).
-- Guarda o último "sinal de vida" de cada leiturista logado no painel próprio
-- dele (leiturista/index.html) — usado pra saber quando foi o último acesso
-- e se está online agora (ver leiturista/controle-acesso.html).

create table if not exists leiturista_presenca (
  matricula text primary key,
  ultimo_acesso timestamptz not null default now()
);

alter table leiturista_presenca disable row level security;
