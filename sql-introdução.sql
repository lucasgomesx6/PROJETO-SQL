USE LMS;
go


INSERT INTO Cursos( id, sigla , nome)
	VALUES	(1,'ADM' ,'Administra��o');
			(2 ,'ADS' , 'An�lise e Desenvolvimento de Sistemas');
			(3,'BD' , 'Banco de Dados');
			(4 ,'GTI', 'Gest�o da Tecnologia da Informa��o');
			(5,'JD', 'Jogos Digitais');
			(6 ,'PG' , 'Processos Gerenciais');
			(7,'PM', 'Produ��o Multim�dia');
			(8 ,'RC', 'Redes de Computadores');
			(9,'SI', 'Sistemas de Informa��o');
			
 


INSERT INTO Aluno (id, ra, nome, emil,  celular, id_curso)
	
	VALUES	('17001', 'Lucas Gomes', 'Lucas@hotmail.com', '11-98561-9611', 1);
			('17002', 'Andr� Sousa', 'Andre@hotmail.com', '11-97387-1148', 1);
			('17003', 'Lucas Lavor', 'Lavor@hotmail.com','11-94802-0012', 1);
			('17004', 'Evandro Ferraz', 'Evandro@hotmail.com', '11-94715-1591', 1);
			('17005','Eduardo Correia','Edu@hotmail.com','11-98684-7425', 1 );
			('17006','Mariana Fagundes', 'Mari@hotmail.com','11-98486-0555', 1);
			('17007', 'Gabriel Alves Pereira', 'Gabriel@hotmail.com','11-94969-3508', 1);
			



INSERT INTO Disciplina(id,nome, carga_horaria, teoria, pratica, emenda, competencias,
						habilidades, conteudo, bibliografia_basica, bibliografia_complementar)
	
	VALUES	(1,'Linguagem de Programa��o I ', 90, 040, 050,
	'Conceitos e objetivos. Gerar  um programa : programa��o Java, tecnica de refinamentos , decompor um problema .',
	 'Realizar a cria��o de um programa ' ,
	 'Cria��o de um programa em linguagem Java',
	 'Introdu��o e t�cnicas da Linguagem de Programa��o I',
	 'Kernighan, B. & Ritchie, D. C - A linguagem de programa��o padr�o ANSI. Editora Campus, 1990.',
	 'Kernighan, B. & Ritchie, D. C - A linguagem de programa��o padr�o ANSI. Editora Campus, 1990.' );

	 (2,'Fundamentos de Banco de Dados', 90, 040, 050, 'Conceitos e objetivos:
	 Dominio fundamentos B.D e Modelagem: fundamentos de banco de dados e como colocar em pratica eles.',
	 'Realizar de projetos de B.D', 
	 'Elabora��o de Projetos L�gico de B.D',
	 'Introdu��o a Fundamentos de Banco de Dados ',
	 ' KORTH, H. F.; SILBERSCHATZ, A.; SUDARSHAN, S.. Sistema de Banco de Dados. 5a ed., Campus, 2006.'
	 'DATE, C. J.. Introdu��o a Sistemas de Banco de Dados. Elsevier Editora, 2004.');

	 (3,'Comunica��o e Express�o' , 90, 040,050, 'Conceitos e objetivos:
	 A L�ngua Portuguesa como meio de express�o e comunica��o na ci�ncia.Familiarizar os alunos com aspectos da L�ngua Portuguesa',
	 'Redjir textos com os princ�pios de coes�o',
	 'Elabora��o de textos objetivos, concisos e claros',
	 'Introdu��o a Comunica��o e Express�o',
	 'FIORIN, J. L.; SAVIOLI, F. P. Para entender o Texto: Leitura e Reda��o. Editora Atica, S�o Paulo, 1995. '
	 'LARA, G. M. P. Introdu��o ao Texto T�cnico e Cientifico (apostila). Editora UFMG, Belo Horizonte, 2005.');

	 (4,'Matem�tica Aplicada' , 90, 040,050, 'Conceitos e objetivos:
	 Conhecer os conceitos fundamentais de l�gica formal.Dominar os m�todos matem�ticos',
	 'Realizar opera��es de an�lise de conjuntos de dados',
	 'Subsidiar o profissional de inform�tica no entendimento e programa��o de sistemas que envolvam c�lculos.'
	 'Introdu��o a Matem�tica Aplicada',
	 'BAUDOIN, Margaret E. et all. Reader�s Choice. Michigan. Michigan Press, 1984.',
	 'GLENDINNING, Eric H. & McEwAN, John. Basic English for Computing. Oxford. Oxford University
	  Press, 1999');

	  (5,'Tecnologia Web', 90, 040,050 , 'Conceitos e objetivos:
	  conhecer e dominar as principais etapas para a constru��o e publica��o de um site para a web',
	  ' Estudo de HTML/XHTML,CSS E JavaScript',
	  ' Realiza��o de cria��o de sites Webs'
	  'Introdu��o a Tecnologia Web',
	  'Amaral, A., Montardo, S., Recuero, R. Blogs.com. Estudos sobre blogs e comunica��o., SP, Momento Editorial, 2009.'
	  'Bruno, F. Rastros digitais sob a perspectiva da teoria ator-rede. Revista Famecos, v. 19, n. 3, p. 681, 2012. ');






INSERT INTO Professor (id, ra , apelido, nome , email , celular)
	
	
	VALUES	(3,18001, 'Japa' , 'Takai', 'takai@hotmail.com', '11-98765-4321');
			(4, 18002 , 'Z� ' , 'Joz�' , 'joze@hotmail.com',  '11-91234-5678');
			(5, 18003 , 'Lu' ,  'Luciana','luciana@hotmail.com', '11-95432-2987');
			(6, 18004 , 'Carlon' , 'Carlos', 'carlos@hotmail.com', '11-96789-5142');
			(7, 18005 , ' Ale', 'Alexandre' , 'ale@hotmail.com', '11-96429-9176');







INSERT INTO  GradeCurricular(id_curso, ano, semestre)
	
	VALUES	(1, 2017, 'primeiro');
			(2, 2017, 'segundo');
			(3, 2016, 'segundo');
			(4, 2016, 'primeiro');
			(5 , 2015, 'segundo');
			(6, 2014, 'primeiro');
			(7, 2014, 'segundo');
			(8, 2013, 'segundo');
			(9, 2013, 'primeiro');
			


INSERT INTO Periodo(id_grade, numero)
	VALUES	(2,1);
			(1,2);
			(5,3);
			(7,4);
			(9,5);




INSERT INTO PeriodoDisciplina(id_periodo, id_disciplina,)
	VALUES
		(1,5);
		(2,4);
		(3,3);
		(4,2);
		(5,1);





INSERT INTO DisciplinaOfertada(id_disciplina, ano, semestre)
VALUES

	(1, 2017, 'segundo');
	(2, 2016, 'segundo');
	(3, 2016, 'primeiro');
	(4 , 2015, 'segundo');
	(5 , 2015, 'primeiro');

INSERT INTO Turma(id_turma,id_disciplina,id_professor, turno)
VALUES
(1, 2, 3, 'Noturno');
(2, 1, 4, 'Noturno');
(3, 3, 5, 'Matutino');
(4, 4, 6, 'Noturno');
(5, 5, 7, 'matutino');


INSERT INTO CursoTurma(id_curso, id_turma)
VALUES
(1,1);
(2,2);
(3,3);
(4,4);
(5,5);
(6,2);
(7,3);
(8,1);
(9,5);

INSERT INTO Questao( id, id_turma, numero, data_aplicada, data_limite_entrega, descricao)
VALUES
(1, 1, 1, 'Conceito de  Linguagem de programa��o :', '2017-11-17', '2017-11-17');
(2, 2, 1, 'Conceito de Fundamentos de Banco de Dados :', '2017-11-20', '2017-11-20');
(3, 3, 1, 'Conceito de  Comunica��o e Express�o :', '2017-11-21', '2017-11-21');
(4, 4, 1, 'Conceito de Matem�tica Aplicada:', '2017-11-22', '2017-11-22');
(5, 5, 1, 'Conceito de Tecnoligia Web', '2017-11-23', '2017-11-23');


INSERT INTO ArquivosQuestao(id_questao, arquivo)
VALUES
(1,' Redja um texto sobre o que � para voc� Linguagem de programa��o. E o que ser� util .');
(2,' Redja um texto sobre o que � para voc� Fundamentos de Banco de Dados. E o que ser� util .');
(3,' Redja um texto sobre o que � para voc� Comunica��o e Express�o. E o que ser� util .');
(4,' Redja um texto sobre o que � para voc� Matem�tica Aplicada. E o que ser� util .');
(5,' Redja um texto sobre o que � para voc� Tecnoligia Web. E o que ser� util .');


INSERT INTO Resposta(id, id_aluno, id_questao, data_avaliacao, nota, avaliacao, descricao, data_envio)
VALUES
(1, 1, 1, '2017-11-17', 08.00, 'Avalia��o Bimestral', 'Conceito de  Linguagem de programa��o', '2017-12-02');
(2, 2, 2, '2017-11-20', 07.30, 'Avalia��o Bimestral', 'Conceito de Fundamentos de Banco de Dados', '2017-12-02');
(3, 3, 3, '2017-11-21', 10.00, 'Avalia��o Bimestral', 'Conceito de  Comunica��o e Express�o ', '2017-12-02');
(4, 4, 4, '2017-11-22', 04.00, 'Avalia��o Bimestral', 'Conceito de Matem�tica Aplicada', '2017-12-02');
(5, 5, 5,  '2017-11-23', 02.50, 'Avalia��o Bimestral', 'Conceito de Tecnologia Web', '2017-12-02');	


INSERT INTO ArquivosResposta(ID_RESPOSTA, ARQUIVO)
VALUES
(1, 'Uma linguagem de programa��o � um m�todo padronizado para comunicar instru��es para um computador.
 � um conjunto de regras sint�ticas e sem�nticas usadas para definir um programa de computador. 
 Linguagens de programa��o podem ser usadas para expressar algoritmos com precis�o.');
 
 (2, 'J� um sistema de gerenciamento de banco de dados (SGBD) � um software que possui recursos
  capazes de manipular as informa��es do banco de dados e interagir com o usu�rio.Por �ltimo, 
 temos que conceituar um sistema de banco de dados como o conjunto de quatro 
 componentes b�sicos: dados, hardware, software e usu�rios.');

 (3,'Comunica��o � uma palavra derivada do termo latino "communicare", que significa "partilhar, 
 participar algo, tornar comum". Atrav�s da comunica��o, os seres humanos
  e os animais partilham diferentes informa��es entre si, tornando o ato de comunicar 
  uma atividade essencial para a vida em sociedade.');

  (4,'Tais aplica��es incluem c�lculo num�rico, matem�tica voltada a engenharia, programa��o linear, 
  otimiza��o, modelagem cont�nua, biomatem�tica e bioinform�tica, teoria da informa��o, 
  teoria dos jogos, probabilidade e estat�stica, matem�tica financeira, criptografia, 
  combinat�ria e at� mesmo geometria finita at� certo ');

  (5,'O termo Web 2.0 surgiu, pela primeira vez, em outubro de 2004, durante uma �confer�ncia de id�ias�, 
  entre a O�Reilly Media e a MediaLive International, ambas empresas produtoras de eventos, confer�ncias e 
  conte�dos relacionados principalmente �s tecnologias da informa��o. Os objetivos principais dos organizadores
  deste evento eram analisar as recentes caracter�sticas da rede, reconhecer tend�ncias, e prever as poss�veis
  inova��es que iriam prevalecer no mundo virtual nos pr�ximos anos. A partir de ent�o, a express�o se tornou
  popular, nomeou uma s�rie de confer�ncias sobre o tema e chamou a aten��o de jornalistas, programadores, 
  empresas de softwares, usu�rios, entre outros, no mundo inteiro.');













