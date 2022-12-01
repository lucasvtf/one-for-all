SELECT
  MIN(p.preco_plano) AS "faturamento_minimo",
  MAX(p.preco_plano) AS "faturamento_maximo",
  ROUND(AVG(p.preco_plano), 2) AS "faturamento_medio",
  ROUND(SUM(p.preco_plano), 2) AS "faturamento_total"
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
  ON p.plano_id = u.plano_id
