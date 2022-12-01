SELECT DISTINCT 
  usuario.nome AS usuario,
IF(YEAR(MAX(h.data_reproducao)) >= 2021,
'Usuário ativo', 'Usuário inativo' 
) AS status_usuario FROM SpotifyClone.usuarios AS usuario
INNER JOIN SpotifyClone.historico AS h
ON usuario.usuario_id = h.usuario_id
GROUP BY usuario.nome
ORDER BY usuario.nome;