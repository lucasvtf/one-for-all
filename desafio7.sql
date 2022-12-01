SELECT
  a.nome_artista AS 'artista',
  alb.nome_album AS 'album',
  COUNT(s.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS alb
ON a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS s
ON a.artista_id = s.artista_id
GROUP BY s.artista_id, alb.nome_album
ORDER BY seguidores DESC, nome_artista, nome_album;
  