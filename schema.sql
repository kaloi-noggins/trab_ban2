-- DROP SCHEMA public;

CREATE SCHEMA public AUTHORIZATION pg_database_owner;

COMMENT ON SCHEMA public IS 'standard public schema';

-- DROP SEQUENCE public.autores_id_autor_seq;

CREATE SEQUENCE public.autores_id_autor_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.autores_id_autor_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.autores_id_autor_seq TO postgres;

-- DROP SEQUENCE public.categorias_id_categoria_seq;

CREATE SEQUENCE public.categorias_id_categoria_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.categorias_id_categoria_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.categorias_id_categoria_seq TO postgres;

-- DROP SEQUENCE public.emprestimos_id_emprestimo_seq;

CREATE SEQUENCE public.emprestimos_id_emprestimo_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.emprestimos_id_emprestimo_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.emprestimos_id_emprestimo_seq TO postgres;

-- DROP SEQUENCE public.emprestimos_tem_exemplares_id_seq;

CREATE SEQUENCE public.emprestimos_tem_exemplares_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.emprestimos_tem_exemplares_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.emprestimos_tem_exemplares_id_seq TO postgres;

-- DROP SEQUENCE public.exemplares_id_exemplar_seq;

CREATE SEQUENCE public.exemplares_id_exemplar_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.exemplares_id_exemplar_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.exemplares_id_exemplar_seq TO postgres;

-- DROP SEQUENCE public.funcionarios_id_funcionarios_seq;

CREATE SEQUENCE public.funcionarios_id_funcionarios_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.funcionarios_id_funcionarios_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.funcionarios_id_funcionarios_seq TO postgres;

-- DROP SEQUENCE public.funcionarios_tem_telefones_id_seq;

CREATE SEQUENCE public.funcionarios_tem_telefones_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.funcionarios_tem_telefones_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.funcionarios_tem_telefones_id_seq TO postgres;

-- DROP SEQUENCE public.livros_id_livro_seq;

CREATE SEQUENCE public.livros_id_livro_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.livros_id_livro_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.livros_id_livro_seq TO postgres;

-- DROP SEQUENCE public.livros_tem_autores_id_seq;

CREATE SEQUENCE public.livros_tem_autores_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.livros_tem_autores_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.livros_tem_autores_id_seq TO postgres;

-- DROP SEQUENCE public.multas_id_multa_seq;

CREATE SEQUENCE public.multas_id_multa_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.multas_id_multa_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.multas_id_multa_seq TO postgres;

-- DROP SEQUENCE public.reservas_id_exemplar_seq;

CREATE SEQUENCE public.reservas_id_exemplar_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.reservas_id_exemplar_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.reservas_id_exemplar_seq TO postgres;

-- DROP SEQUENCE public.reservas_id_reserva_seq;

CREATE SEQUENCE public.reservas_id_reserva_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.reservas_id_reserva_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.reservas_id_reserva_seq TO postgres;

-- DROP SEQUENCE public.supervisao_id_supervisao_seq;

CREATE SEQUENCE public.supervisao_id_supervisao_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.supervisao_id_supervisao_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.supervisao_id_supervisao_seq TO postgres;

-- DROP SEQUENCE public.telefones_id_telefone_seq;

CREATE SEQUENCE public.telefones_id_telefone_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.telefones_id_telefone_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.telefones_id_telefone_seq TO postgres;

-- DROP SEQUENCE public.usuarios_id_usuario_seq;

CREATE SEQUENCE public.usuarios_id_usuario_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.usuarios_id_usuario_seq TO postgres;

-- DROP SEQUENCE public.usuarios_tem_telefone_id_seq;

CREATE SEQUENCE public.usuarios_tem_telefone_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;

-- Permissions

ALTER SEQUENCE public.usuarios_tem_telefone_id_seq OWNER TO postgres;
GRANT ALL ON SEQUENCE public.usuarios_tem_telefone_id_seq TO postgres;
-- public.autores definition

-- Drop table

-- DROP TABLE public.autores;

CREATE TABLE public.autores (
	id_autor serial4 NOT NULL,
	nome varchar(256) NULL,
	CONSTRAINT autores_pk PRIMARY KEY (id_autor)
);

-- Permissions

ALTER TABLE public.autores OWNER TO postgres;
GRANT ALL ON TABLE public.autores TO postgres;


-- public.categorias definition

-- Drop table

-- DROP TABLE public.categorias;

CREATE TABLE public.categorias (
	id_categoria serial4 NOT NULL,
	nome_categoria varchar(256) NOT NULL,
	tempo_max_emprestimos int4 NOT NULL,
	num_livros_emprestado int4 NOT NULL,
	CONSTRAINT categorias_pk PRIMARY KEY (id_categoria)
);

-- Permissions

ALTER TABLE public.categorias OWNER TO postgres;
GRANT ALL ON TABLE public.categorias TO postgres;


-- public.funcionarios definition

-- Drop table

-- DROP TABLE public.funcionarios;

CREATE TABLE public.funcionarios (
	id_funcionario int4 NOT NULL DEFAULT nextval('funcionarios_id_funcionarios_seq'::regclass),
	nome varchar(256) NOT NULL,
	cpf bpchar(11) NOT NULL,
	email varchar(256) NOT NULL,
	tipo_funcionario varchar(256) NOT NULL,
	CONSTRAINT funcionarios_pk PRIMARY KEY (id_funcionario)
);

-- Permissions

ALTER TABLE public.funcionarios OWNER TO postgres;
GRANT ALL ON TABLE public.funcionarios TO postgres;


-- public.telefones definition

-- Drop table

-- DROP TABLE public.telefones;

CREATE TABLE public.telefones (
	id_telefone serial4 NOT NULL,
	telefone bpchar(11) NULL,
	CONSTRAINT telefones_pk PRIMARY KEY (id_telefone)
);

-- Permissions

ALTER TABLE public.telefones OWNER TO postgres;
GRANT ALL ON TABLE public.telefones TO postgres;


-- public.funcionarios_tem_telefones definition

-- Drop table

-- DROP TABLE public.funcionarios_tem_telefones;

CREATE TABLE public.funcionarios_tem_telefones (
	id serial4 NOT NULL,
	id_telefone int4 NOT NULL,
	id_funcionario int4 NOT NULL,
	CONSTRAINT funcionarios_tem_telefones_pk PRIMARY KEY (id),
	CONSTRAINT funcionarios_tem_telefones_fk FOREIGN KEY (id_funcionario) REFERENCES public.funcionarios(id_funcionario) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT funcionarios_tem_telefones_fk_1 FOREIGN KEY (id_telefone) REFERENCES public.telefones(id_telefone) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.funcionarios_tem_telefones OWNER TO postgres;
GRANT ALL ON TABLE public.funcionarios_tem_telefones TO postgres;


-- public.livros definition

-- Drop table

-- DROP TABLE public.livros;

CREATE TABLE public.livros (
	id_livro serial4 NOT NULL,
	titulo varchar(256) NOT NULL,
	editora varchar(256) NOT NULL,
	isbn bpchar(13) NOT NULL,
	id_funcionario int4 NOT NULL,
	CONSTRAINT livros_pk PRIMARY KEY (id_livro),
	CONSTRAINT livros_fk FOREIGN KEY (id_funcionario) REFERENCES public.funcionarios(id_funcionario) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.livros OWNER TO postgres;
GRANT ALL ON TABLE public.livros TO postgres;


-- public.livros_tem_autores definition

-- Drop table

-- DROP TABLE public.livros_tem_autores;

CREATE TABLE public.livros_tem_autores (
	id serial4 NOT NULL,
	id_livro int4 NOT NULL,
	id_autor int4 NOT NULL,
	CONSTRAINT livros_tem_autores_pk PRIMARY KEY (id),
	CONSTRAINT livros_tem_autores_fk FOREIGN KEY (id_livro) REFERENCES public.livros(id_livro) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT livros_tem_autores_fk_1 FOREIGN KEY (id_autor) REFERENCES public.autores(id_autor) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.livros_tem_autores OWNER TO postgres;
GRANT ALL ON TABLE public.livros_tem_autores TO postgres;


-- public.supervisao definition

-- Drop table

-- DROP TABLE public.supervisao;

CREATE TABLE public.supervisao (
	id_supervisao serial4 NOT NULL,
	id_bibliotecario int4 NOT NULL,
	id_assistente int4 NOT NULL,
	CONSTRAINT supervisao_pk PRIMARY KEY (id_supervisao),
	CONSTRAINT supervisao_fk FOREIGN KEY (id_bibliotecario) REFERENCES public.funcionarios(id_funcionario),
	CONSTRAINT supervisao_fk_1 FOREIGN KEY (id_assistente) REFERENCES public.funcionarios(id_funcionario)
);

-- Permissions

ALTER TABLE public.supervisao OWNER TO postgres;
GRANT ALL ON TABLE public.supervisao TO postgres;


-- public.usuarios definition

-- Drop table

-- DROP TABLE public.usuarios;

CREATE TABLE public.usuarios (
	id_usuario serial4 NOT NULL,
	nome varchar(256) NOT NULL,
	cpf bpchar(11) NOT NULL,
	email varchar(256) NOT NULL,
	endereco varchar(256) NOT NULL,
	id_categoria int4 NOT NULL,
	CONSTRAINT usuarios_pk PRIMARY KEY (id_usuario),
	CONSTRAINT usuarios_fk FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.usuarios OWNER TO postgres;
GRANT ALL ON TABLE public.usuarios TO postgres;


-- public.usuarios_tem_telefone definition

-- Drop table

-- DROP TABLE public.usuarios_tem_telefone;

CREATE TABLE public.usuarios_tem_telefone (
	id serial4 NOT NULL,
	id_usuario int4 NOT NULL,
	id_telefone int4 NOT NULL,
	CONSTRAINT usuarios_tem_telefone_pk PRIMARY KEY (id),
	CONSTRAINT usuarios_tem_telefone_fk FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT usuarios_tem_telefone_fk_1 FOREIGN KEY (id_telefone) REFERENCES public.telefones(id_telefone) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.usuarios_tem_telefone OWNER TO postgres;
GRANT ALL ON TABLE public.usuarios_tem_telefone TO postgres;


-- public.emprestimos definition

-- Drop table

-- DROP TABLE public.emprestimos;

CREATE TABLE public.emprestimos (
	id_emprestimo serial4 NOT NULL,
	data_emprestimo date NOT NULL,
	num_renovacoes int4 NOT NULL,
	data_devolucao date NOT NULL,
	id_usuario int4 NOT NULL,
	CONSTRAINT emprestimos_pk PRIMARY KEY (id_emprestimo),
	CONSTRAINT emprestimos_fk FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE SET NULL ON UPDATE SET NULL
);

-- Permissions

ALTER TABLE public.emprestimos OWNER TO postgres;
GRANT ALL ON TABLE public.emprestimos TO postgres;


-- public.exemplares definition

-- Drop table

-- DROP TABLE public.exemplares;

CREATE TABLE public.exemplares (
	id_exemplar serial4 NOT NULL,
	num_exemplar int4 NOT NULL,
	coleção varchar(256) NOT NULL,
	id_livro int4 NOT NULL,
	id_funcionario int4 NOT NULL,
	CONSTRAINT exemplares_pk PRIMARY KEY (id_exemplar),
	CONSTRAINT exemplares_fk FOREIGN KEY (id_livro) REFERENCES public.livros(id_livro) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT exemplares_fk_1 FOREIGN KEY (id_funcionario) REFERENCES public.funcionarios(id_funcionario) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.exemplares OWNER TO postgres;
GRANT ALL ON TABLE public.exemplares TO postgres;


-- public.multas definition

-- Drop table

-- DROP TABLE public.multas;

CREATE TABLE public.multas (
	id_multa serial4 NOT NULL,
	data_emissao date NOT NULL,
	pago bool NOT NULL,
	id_emprestimo int4 NOT NULL,
	CONSTRAINT multas_pk PRIMARY KEY (id_multa),
	CONSTRAINT multas_fk FOREIGN KEY (id_emprestimo) REFERENCES public.emprestimos(id_emprestimo) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.multas OWNER TO postgres;
GRANT ALL ON TABLE public.multas TO postgres;


-- public.reservas definition

-- Drop table

-- DROP TABLE public.reservas;

CREATE TABLE public.reservas (
	id_reserva serial4 NOT NULL,
	data_reserva date NOT NULL,
	id_usuario int4 NOT NULL,
	id_exemplar serial4 NOT NULL,
	CONSTRAINT reservas_pk PRIMARY KEY (id_reserva),
	CONSTRAINT reservas_fk FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT reservas_fk_1 FOREIGN KEY (id_exemplar) REFERENCES public.exemplares(id_exemplar) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.reservas OWNER TO postgres;
GRANT ALL ON TABLE public.reservas TO postgres;


-- public.emprestimos_tem_exemplares definition

-- Drop table

-- DROP TABLE public.emprestimos_tem_exemplares;

CREATE TABLE public.emprestimos_tem_exemplares (
	id serial4 NOT NULL,
	id_emprestimo int4 NOT NULL,
	id_exemplar int4 NOT NULL,
	CONSTRAINT emprestimos_tem_exemplares_pk PRIMARY KEY (id),
	CONSTRAINT emprestimos_tem_exemplares_fk FOREIGN KEY (id_emprestimo) REFERENCES public.emprestimos(id_emprestimo) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT emprestimos_tem_exemplares_fk_1 FOREIGN KEY (id_exemplar) REFERENCES public.exemplares(id_exemplar) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Permissions

ALTER TABLE public.emprestimos_tem_exemplares OWNER TO postgres;
GRANT ALL ON TABLE public.emprestimos_tem_exemplares TO postgres;




-- Permissions

GRANT ALL ON SCHEMA public TO pg_database_owner;
GRANT USAGE ON SCHEMA public TO public;