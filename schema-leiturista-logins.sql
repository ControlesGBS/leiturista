-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).
-- Guarda um registro de cada login de leiturista criado (matrícula + PIN), já que não dá
-- pra listar isso direto do Supabase Auth sem a chave service_role.

create table if not exists leiturista_logins (
  matricula text primary key,
  nome_leiturista text,
  criado_em timestamptz not null default now(),
  criado_por text
);
