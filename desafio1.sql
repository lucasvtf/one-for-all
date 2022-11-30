DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.usuarios(
      usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      nome VARCHAR(100) NOT NULL,
      idade INT NOT NULL,
      data_assinatura DATE NOT NULL
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.planos(
      plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      tipo_plano VARCHAR(100) NOT NULL,
      preco_plano DECIMAL(3,2)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.artistas(
      artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      nome_artista VARCHAR(100) NOT NULL
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.albuns(
      album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      nome_album VARCHAR(100) NOT NULL,
      ano_lancamento INT NOT NULL,
      artista_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
  ) engine = InnoDB;
  
   CREATE TABLE SpotifyClone.musicas(
      musica_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
      nome_musica VARCHAR(100) NOT NULL,
      duracao_musica INT NOT NULL,
      album_id INT NOT NULL,
      FOREIGN KEY (album_id) REFERENCES albuns(album_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.historico(
      data_reproducao DATE NOT NULL,
      musica_id INT NOT NULL,
      usuario_id INT NOT NULL,
      FOREIGN KEY (musica_id) REFERENCES musicas(musica_id),
      FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
  ) engine = InnoDB;
  
  CREATE TABLE SpotifyClone.seguindo_artista(
	  artista_id INT NOT NULL,
      usuario_id INT NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
      FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
  ) engine = InnoDB;
  
   INSERT INTO SpotifyClone.usuarios (nome, idade, data_assinatura)
  VALUES
    ('Barbara Liskov', '82', '2019-10-20'),
    ('Robert Cecil Martin', '58', '2017-01-06'),
    ('Ada Lovelace', '37', '2017-12-30'),
    ('Martin Fowler', '46', '2017-01-17'),
    ('Sandi Metz', '58', '2018-04-29'),
    ('Paulo Freire', '19', '2018-02-14'),
    ('Bell Hooks', '26', '2018-01-05'),
    ('Christopher Alexander', '85', '2019-06-05'),
    ('Judith Butler', '45', '2020-05-13'),
    ('Jorge Amado', '58', '2017-02-17')