SELECT DISTINCT 
  usuario.nome AS usuario,
COUNT(h.musica_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(m.duracao_musica / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS usuario
INNER JOIN SpotifyClone.historico AS h
    ON usuario.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS m
    ON h.musica_id = m.musica_id
 GROUP BY usuario
 ORDER BY usuario ASC;