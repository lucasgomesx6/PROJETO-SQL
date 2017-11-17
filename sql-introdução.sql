USE LMS;
go


INSERT INTO Cursos( id, sigla , nome)
	VALUES	(1,'ADM' ,'Administração');
			(2 ,'ADS' , 'Análise e Desenvolvimento de Sistemas');
			(3,'BD' , 'Banco de Dados');
			(4 ,'GTI', 'Gestão da Tecnologia da Informação');
			(5,'JD', 'Jogos Digitais');
			(6 ,'PG' , 'Processos Gerenciais');
			(7,'PM', 'Produção Multimídia');
			(8 ,'RC', 'Redes de Computadores');
			(9,'SI', 'Sistemas de Informação');
			
 


INSERT INTO Aluno (id, ra, nome, emil,  celular, id_curso)
	
	VALUES	('17001', 'Lucas Gomes', 'Lucas@hotmail.com', '11-98561-9611', 1);
			('17002', 'André Sousa', 'Andre@hotmail.com', '11-97387-1148', 1);
			('17003', 'Lucas Lavor', 'Lavor@hotmail.com','11-94802-0012', 1);
			('17004', 'Evandro Ferraz', 'Evandro@hotmail.com', '11-94715-1591', 1);
			('17005','Eduardo Correia','Edu@hotmail.com','11-98684-7425', 1 );
			('17006','Mariana Fagundes', 'Mari@hotmail.com','11-98486-0555', 1);
			('17007', 'Gabriel Alves Pereira', 'Gabriel@hotmail.com','11-94969-3508', 1);
			



INSERT INTO Disciplina(id,nome, carga_horaria, teoria, pratica, emenda, competencias,
						habilidades, conteudo, bibliografia_basica, bibliografia_complementar)
	
	VALUES	(1,'Linguagem de Programação I ', 90, 040, 050,
	'Conceitos e objetivos. Gerar  um programa : programação Java, tecnica de refinamentos , decompor um problema .',
	 'Realizar a criação de um programa ' ,
	 'Criação de um programa em linguagem Java',
	 'Introdução e técnicas da Linguagem de Programação I',
	 'Kernighan, B. & Ritchie, D. C - A linguagem de programação padrão ANSI. Editora Campus, 1990.',
	 'Kernighan, B. & Ritchie, D. C - A linguagem de programação padrão ANSI. Editora Campus, 1990.' );

	 (2,'Fundamentos de Banco de Dados', 90, 040, 050, 'Conceitos e objetivos:
	 Dominio fundamentos B.D e Modelagem: fundamentos de banco de dados e como colocar em pratica eles.',
	 'Realizar de projetos de B.D', 
	 'Elaboração de Projetos Lógico de B.D',
	 'Introdução a Fundamentos de Banco de Dados ',
	 ' KORTH, H. F.; SILBERSCHATZ, A.; SUDARSHAN, S.. Sistema de Banco de Dados. 5a ed., Campus, 2006.'
	 'DATE, C. J.. Introdução a Sistemas de Banco de Dados. Elsevier Editora, 2004.');

	 (3,'Comunicação e Expressão' , 90, 040,050, 'Conceitos e objetivos:
	 A Língua Portuguesa como meio de expressão e comunicação na ciência.Familiarizar os alunos com aspectos da Língua Portuguesa',
	 'Redjir textos com os princípios de coesão',
	 'Elaboração de textos objetivos, concisos e claros',
	 'Introdução a Comunicação e Expressão',
	 'FIORIN, J. L.; SAVIOLI, F. P. Para entender o Texto: Leitura e Redação. Editora Atica, São Paulo, 1995. '
	 'LARA, G. M. P. Introdução ao Texto Técnico e Cientifico (apostila). Editora UFMG, Belo Horizonte, 2005.');

	 (4,'Matemática Aplicada' , 90, 040,050, 'Conceitos e objetivos:
	 Conhecer os conceitos fundamentais de lógica formal.Dominar os métodos matemáticos',
	 'Realizar operações de análise de conjuntos de dados',
	 'Subsidiar o profissional de informática no entendimento e programação de sistemas que envolvam cálculos.'
	 'Introdução a Matemática Aplicada',
	 'BAUDOIN, Margaret E. et all. Reader’s Choice. Michigan. Michigan Press, 1984.',
	 'GLENDINNING, Eric H. & McEwAN, John. Basic English for Computing. Oxford. Oxford University
	  Press, 1999');

	  (5,'Tecnologia Web', 90, 040,050 , 'Conceitos e objetivos:
	  conhecer e dominar as principais etapas para a construção e publicação de um site para a web',
	  ' Estudo de HTML/XHTML,CSS E JavaScript',
	  ' Realização de criação de sites Webs'
	  'Introdução a Tecnologia Web',
	  'Amaral, A., Montardo, S., Recuero, R. Blogs.com. Estudos sobre blogs e comunicação., SP, Momento Editorial, 2009.'
	  'Bruno, F. Rastros digitais sob a perspectiva da teoria ator-rede. Revista Famecos, v. 19, n. 3, p. 681, 2012. ');






INSERT INTO Professor (id, ra , apelido, nome , email , celular)
	
	
	VALUES	(3,18001, 'Japa' , 'Takai', 'takai@hotmail.com', '11-98765-4321');
			(4, 18002 , 'Zé ' , 'Jozé' , 'joze@hotmail.com',  '11-91234-5678');
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
(1, 1, 1, 'Conceito de  Linguagem de programação :', '2017-11-17', '2017-11-17');
(2, 2, 1, 'Conceito de Fundamentos de Banco de Dados :', '2017-11-20', '2017-11-20');
(3, 3, 1, 'Conceito de  Comunicação e Expressão :', '2017-11-21', '2017-11-21');
(4, 4, 1, 'Conceito de Matemática Aplicada:', '2017-11-22', '2017-11-22');
(5, 5, 1, 'Conceito de Tecnoligia Web', '2017-11-23', '2017-11-23');


INSERT INTO ArquivosQuestao(id_questao, arquivo)
VALUES
(1,' Redja um texto sobre o que é para você Linguagem de programação. E o que será util .');
(2,' Redja um texto sobre o que é para você Fundamentos de Banco de Dados. E o que será util .');
(3,' Redja um texto sobre o que é para você Comunicação e Expressão. E o que será util .');
(4,' Redja um texto sobre o que é para você Matemática Aplicada. E o que será util .');
(5,' Redja um texto sobre o que é para você Tecnoligia Web. E o que será util .');


INSERT INTO Resposta(id, id_aluno, id_questao, data_avaliacao, nota, avaliacao, descricao, data_envio)
VALUES
(1, 1, 1, '2017-11-17', 08.00, 'Avaliação Bimestral', 'Conceito de  Linguagem de programação', '2017-12-02');
(2, 2, 2, '2017-11-20', 07.30, 'Avaliação Bimestral', 'Conceito de Fundamentos de Banco de Dados', '2017-12-02');
(3, 3, 3, '2017-11-21', 10.00, 'Avaliação Bimestral', 'Conceito de  Comunicação e Expressão ', '2017-12-02');
(4, 4, 4, '2017-11-22', 04.00, 'Avaliação Bimestral', 'Conceito de Matemática Aplicada', '2017-12-02');
(5, 5, 5,  '2017-11-23', 02.50, 'Avaliação Bimestral', 'Conceito de Tecnologia Web', '2017-12-02');	


INSERT INTO ArquivosResposta(ID_RESPOSTA, ARQUIVO)
VALUES
(1, 'Uma linguagem de programação é um método padronizado para comunicar instruções para um computador.
 É um conjunto de regras sintáticas e semânticas usadas para definir um programa de computador. 
 Linguagens de programação podem ser usadas para expressar algoritmos com precisão.');
 
 (2, 'Já um sistema de gerenciamento de banco de dados (SGBD) é um software que possui recursos
  capazes de manipular as informações do banco de dados e interagir com o usuário.Por último, 
 temos que conceituar um sistema de banco de dados como o conjunto de quatro 
 componentes básicos: dados, hardware, software e usuários.');

 (3,'Comunicação é uma palavra derivada do termo latino "communicare", que significa "partilhar, 
 participar algo, tornar comum". Através da comunicação, os seres humanos
  e os animais partilham diferentes informações entre si, tornando o ato de comunicar 
  uma atividade essencial para a vida em sociedade.');

  (4,'Tais aplicações incluem cálculo numérico, matemática voltada a engenharia, programação linear, 
  otimização, modelagem contínua, biomatemática e bioinformática, teoria da informação, 
  teoria dos jogos, probabilidade e estatística, matemática financeira, criptografia, 
  combinatória e até mesmo geometria finita até certo ');

  (5,'O termo Web 2.0 surgiu, pela primeira vez, em outubro de 2004, durante uma “conferência de idéias”, 
  entre a O’Reilly Media e a MediaLive International, ambas empresas produtoras de eventos, conferências e 
  conteúdos relacionados principalmente às tecnologias da informação. Os objetivos principais dos organizadores
  deste evento eram analisar as recentes características da rede, reconhecer tendências, e prever as possíveis
  inovações que iriam prevalecer no mundo virtual nos próximos anos. A partir de então, a expressão se tornou
  popular, nomeou uma série de conferências sobre o tema e chamou a atenção de jornalistas, programadores, 
  empresas de softwares, usuários, entre outros, no mundo inteiro.');













