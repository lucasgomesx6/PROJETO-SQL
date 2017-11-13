CREATE DATABASE LMS;

GO

USE LMS

GO

CREATE TABLE Curso (

	id SMALLINT,
	sigla VARCHAR(5),
	nome VARCHAR(50),
	CONSTRAINT pkidcurso PRIMARY KEY(id),
	CONSTRAINT uqsiglacurso UNIQUE(sigla),
	CONSTRAINT uqnomecurso UNIQUE(nome)
);

CREATE TABLE Aluno (
	
	id INT,
	ra INT,
	nome VARCHAR(120),
	email VARCHAR(80),
	celular CHAR(11),
	id_curso SMALLINT,
	CONSTRAINT pkidaluno PRIMARY KEY (id),
	CONSTRAINT uqraaluno UNIQUE (ra),
	CONSTRAINT fkid_curso FOREIGN KEY (id_curso)
	REFERENCES Curso (id)
);

CREATE TABLE Disciplina (

	id SMALLINT,
	nome VARCHAR(240),
	carga_horaria TINYINT,
	teoria DECIMAL(3),
	pratica DECIMAL(3),
	ementa TEXT,
	competencias TEXT,
	habilidades TEXT,
	conteudo TEXT,
	bibliografia_basica TEXT,
	bibliografia_complementar TEXT,
	CONSTRAINT pkiddisciplina PRIMARY KEY (id),
	CONSTRAINT uqnomedisciplina UNIQUE (nome)
);

CREATE TABLE Professor (

	id SMALLINT,
	ra INT,
	apelido VARCHAR(30),
	nome VARCHAR(120),
	email VARCHAR(80),
	celular CHAR(11),
	CONSTRAINT pkraprofessor PRIMARY KEY (id),
	CONSTRAINT uqraprofessor UNIQUE (ra),
	CONSTRAINT uqapelidoprofessor UNIQUE (apelido)
);

CREATE TABLE GradeCurricular (
	
	id SMALLINT,
	id_curso SMALLINT,
	ano SMALLINT,
	semestre CHAR(1),
	CONSTRAINT pkidgrade PRIMARY KEY (id),
	CONSTRAINT fkid_cursograde FOREIGN KEY (id_curso)
	REFERENCES Curso (id),
	CONSTRAINT uqanograde UNIQUE (ano),
	CONSTRAINT uqsemestregrade UNIQUE (semestre)

);

CREATE TABLE Periodo (

	id SMALLINT,
	id_grade SMALLINT,
	numero TINYINT,
	CONSTRAINT pkidperiodo PRIMARY KEY (id),
	CONSTRAINT fkid_gradeperiodo FOREIGN KEY (id_grade)
	REFERENCES GradeCurricular (id),
	CONSTRAINT uqnumeroperiodo UNIQUE (numero)

);

CREATE TABLE PeriodoDisciplina (

	id SMALLINT,
	id_periodo SMALLINT,
	id_disciplina SMALLINT,
	CONSTRAINT pkidperiododisciplina PRIMARY KEY (id),
	CONSTRAINT fkid_periododisciplina FOREIGN KEY (id_periodo)
	REFERENCES Periodo (id),
	CONSTRAINT fkid_disciplinaperiodo FOREIGN KEY (id_disciplina)
	REFERENCES Disciplina (id)

);

CREATE TABLE DisciplinaOfertada (

	id SMALLINT,
	id_disciplina SMALLINT,
	ano SMALLINT,
	semestre CHAR(1),
	CONSTRAINT pkiddisciplinaofertada PRIMARY KEY (id),
	CONSTRAINT fkid_disciplinaofertada FOREIGN KEY (id_disciplina)
	REFERENCES Disciplina (id),
	CONSTRAINT uqanodisciplinaofertada UNIQUE (ano),
	CONSTRAINT uqsemestredisciplinaofertada UNIQUE (semestre)

);

CREATE TABLE Turma (

	id SMALLINT,
	id_disciplinaofertada SMALLINT,
	id_turma CHAR(1),
	turno VARCHAR(15),
	id_professor SMALLINT,
	CONSTRAINT pkidturma PRIMARY KEY (id),
	CONSTRAINT fkid_do FOREIGN KEY (id_disciplinaofertada)
	REFERENCES DisciplinaOfertada (id),
	CONSTRAINT uqturma UNIQUE (id_turma),
	CONSTRAINT fkid_professorturma FOREIGN KEY (id_professor)
	REFERENCES Professor (id)

);

CREATE TABLE CursoTurma (

	id SMALLINT,
	id_turma SMALLINT,
	id_curso SMALLINT,
	CONSTRAINT pkidcursoturma PRIMARY KEY (id),
	CONSTRAINT fkturmacurso FOREIGN KEY (id_turma)
	REFERENCES Turma (id),
 	CONSTRAINT fkid_cursoturma FOREIGN KEY (id_curso)
	REFERENCES Curso (id)

);

CREATE TABLE Questao (

   	id SMALLINT,
   	id_turma SMALLINT,
   	numero INT,
   	data_limite_entrega DATE,
   	descricao TEXT,
   	data DATE,
   	CONSTRAINT pkidquestao PRIMARY KEY (id),
   	CONSTRAINT fkturmaquestao FOREIGN KEY (id_turma)
   	REFERENCES Turma (id),
   	CONSTRAINT uqnumeroquestao UNIQUE (numero)

);

CREATE TABLE ArquivosQuestao (

   	id SMALLINT,
   	id_questao SMALLINT,
   	arquivo VARCHAR(500),
   	CONSTRAINT pkidarquivosquestao PRIMARY KEY (id),
   	CONSTRAINT fkquestaoarquivos FOREIGN KEY (id_questao)
   	REFERENCES Questao (id),
   	CONSTRAINT uqarquivosquestao UNIQUE (arquivo)
 
);

CREATE TABLE Matricula (

   	id SMALLINT,
   	id_aluno INT,
   	id_turma SMALLINT,
   	CONSTRAINT pkidmatricula PRIMARY KEY (id),
   	CONSTRAINT fkalunomatricula FOREIGN KEY (id_aluno)
   	REFERENCES Aluno (id),
   	CONSTRAINT fkturmamatricula FOREIGN KEY (id_turma)
   	REFERENCES Turma (id)

);

CREATE TABLE Resposta (

	id SMALLINT,
	id_aluno INT,
	id_questao SMALLINT,
	data_avaliacao DATE,
	nota DECIMAL(4,2),
	avaliacao TEXT,
	descricao TEXT,
	data_de_envio DATE,
	CONSTRAINT pkidresposta PRIMARY KEY (id),
	CONSTRAINT fkalunoresposta FOREIGN KEY (id_aluno)
	REFERENCES Aluno (id),
	CONSTRAINT fkquestaoresposta FOREIGN KEY (id_questao)
	REFERENCES Questao (id)

);

CREATE TABLE ArquivosResposta (

	id SMALLINT,
	id_resposta SMALLINT,
	arquivo VARCHAR(500),
	CONSTRAINT pkidarquivosresposta PRIMARY KEY (id),
	CONSTRAINT fkrespostaarquivos FOREIGN KEY (id_resposta)
	REFERENCES Resposta (id),
	CONSTRAINT uqarquivoarquivosresposta UNIQUE (arquivo)

);