-- Rodar no SQL Editor do Supabase do GBS (projeto ndwivbhqglpnfyqwjbzu).
-- Acrescenta os valores (R$) pagos por nível na mesma tabela de configuração de metas.
-- Bronze não entra aqui porque o benefício dele é sempre R$ 0 (ponto de partida).

alter table leiturista_niveis_config add column if not exists valor_prata numeric not null default 0;
alter table leiturista_niveis_config add column if not exists valor_ouro numeric not null default 0;
alter table leiturista_niveis_config add column if not exists valor_platina numeric not null default 0;
