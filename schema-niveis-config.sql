-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).
-- Guarda as metas (cortes de Prata/Ouro/Platina) usadas no painel do leiturista pra
-- calcular o nível dele. Antes ficava direto no código do painel.html; agora fica editável
-- em gerenciar.html. Bronze é sempre o ponto de partida (0), por isso não é configurável.
-- É uma linha só (id fixo = 1).

create table if not exists leiturista_niveis_config (
  id int primary key default 1,
  leitura_prata numeric not null default 7500,
  leitura_ouro numeric not null default 9000,
  leitura_platina numeric not null default 10500,
  impedimento_prata numeric not null default 99.50,
  impedimento_ouro numeric not null default 99.60,
  impedimento_platina numeric not null default 99.70,
  erro_prata numeric not null default 99.90,
  erro_ouro numeric not null default 99.98,
  erro_platina numeric not null default 100,
  reclamacao_prata numeric not null default 99.90,
  reclamacao_ouro numeric not null default 99.98,
  reclamacao_platina numeric not null default 100,
  atualizado_em timestamptz not null default now(),
  constraint leiturista_niveis_config_id_check check (id = 1)
);

insert into leiturista_niveis_config (id) values (1)
  on conflict (id) do nothing;
