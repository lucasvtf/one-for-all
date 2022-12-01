SELECT
  m.nome_musica AS 'nome',
  COUNT(*) AS 'reproducoes'
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON p.plano_id = u.plano_id
INNER JOIN SpotifyClone.historico AS h 
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON m.musica_id = h.musica_id
WHERE p.tipo_plano = 'gratuito' OR p.tipo_plano = 'pessoal'
GROUP BY nome_musica
ORDER BY nome_musica