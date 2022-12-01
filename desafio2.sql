SELECT COUNT(*) AS cancoes,
(SELECT COUNT(nome_artista) FROM SpotifyClone.artistas) AS artistas,
(SELECT COUNT(nome_album) FROM SpotifyClone.albuns) AS albuns
FROM SpotifyClone.usuarios; 