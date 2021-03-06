curso_list = [
	[ "Administraçao: Administraçao de Empresas","Bacharelado"],
	[ "Administraçao: Comercio Internacional","Bacharelado"],
	[ "Administraçao: Empreendedorismo e Sucessao","Bacharelado"],
	[ "Administraçao: Gestao de Tecnologia da Informaçao","Bacharelado"],
	[ "Administraçao: Marketing","Bacharelado"],
	[ "Arquitetura e Urbanismo","Bacharelado"],
	[ "Ciencia da Computaçao","Bacharelado"],
	[ "Ciencia e Inovaçao em Alimentos","Bacharelado"],
	[ "Ciencias Aeronauticas","Bacharelado"],
	[ "Ciencias Biologicas","Bacharelado/Licenciatura"],
	[ "Ciencias Contabeis - Controladoria e Finanças","Bacharelado"],
	[ "Ciencias Economicas","Bacharelado"],
	[ "Ciencias Sociais","Licenciatura/Bacharelado"],
	[ "Comunicaçao Social: Jornalismo","Bacharelado"],
	[ "Comunicaçao Social: Publicidade e Propaganda","Bacharelado"],
	[ "Comunicaçao Social: Relaçoes Públicas","Bacharelado"],
	[ "Direito","Bacharelado"],
	[ "Educaçao Fisica","Bacharelado/Licenciatura"],
	[ "Enfermagem","Bacharelado"],
	[ "Engenharia Civil","Bacharelado"],
	[ "Engenharia de Computaçao","Bacharelado"],
	[ "Engenharia de Controle e Automaçao","Bacharelado"],
	[ "Engenharia de Software","Bacharelado"],
	[ "Engenharia Eletrica","Bacharelado"],
	[ "Engenharia Mecânica","Bacharelado"],
	[ "Engenharia de Produçao","Bacharelado"],
	[ "Engenharia Quimica","Bacharelado"],
	[ "Escrita Criativa","Tecnologo"],
	[ "Farmacia","Bacharelado"],
	[ "Filosofia","Bacharelado/Licenciatura"],
	[ "Fisica","Licenciatura"],
	[ "Fisica - Formaçao em Fisica Medica","Bacharelado"],
	[ "Fisica - Formaçao em Geofisica","Bacharelado"],
	[ "Fisioterapia","Bacharelado"],
	[ "Gastronomia","Tecnologo"],
	[ "Geografia","Bacharelado/Licenciatura"],
	[ "Gestao de Turismo","Tecnologo"],
	[ "Historia","Bacharelado/Licenciatura"],
	[ "Hotelaria","Tecnologo"],
	[ "Letras","Licenciatura"],
	[ "Matematica","Licenciatura"],
	[ "Matematica - Formaçao em Matematica Empresarial","Bacharelado"],
	[ "Medicina","Bacharelado"],
	[ "Nutriçao","Bacharelado"],
	[ "Odontologia","Bacharelado"],
	[ "Pedagogia","Licenciatura"],
	[ "Produçao Audiovisual / Cinema e Video","Tecnologo"],
	[ "Psicologia","Bacharelado"],
	[ "Quimica","Licenciatura"],
	[ "Quimica - Formaçao em Quimica Industrial","Bacharelado"],
	[ "Serviço Social","Bacharelado"],
	[ "Sistemas de Informaçao","Bacharelado"],
	[ "Teologia","Bacharelado"]
]

curso_list.each do |curso|
	Curso.create(nome: curso[0], grau:curso[1])
end

disciplina_list = [
	["Algebra Matricial",2,2],
	["Algoritmos e Programaçao I",6,1],
	["Algoritmos e Programaçao II",6,2],
	["Algoritmos e Programaçao III",6,3],
	["Avaliacao de Desempenho de Sistemas",4,7],
	["Compiladores",4,4],
	["Complexidade e Otimizacao",4,4],
	["Computacao Grafica I",4,4],
	["Computacao Grafica II",2,5],
	["Calculo A",4,1],
	["Calculo B",4,1],
	["Desenvolvimento de Sistemas",4,6],
	["Empreendimentos Empresariais",4,8],
	["Entretenimento Digital",2,6],
	["Geometria Analitica",2,1],
	["Gerencia de Projetos de Software",4,5],
	["Humanismo e Cultura Religiosa",4,7],
	["Implementacao de Banco de Dados",4,6],
	["Inteligencia Artificial",4,6],
	["Introducao A Ciencia da Computacao",4,1],
	["Laboratorio de Banco de Dados I",2,3],
	["Laboratorio de Redes de Computadores",2,6],
	["Linguagens Formais",4,2],
	["Logica para Computacao",4,2],
	["Matematica Discreta (Cc)",4,1],
	["Metodos Computacionais (Cc)",4,6],
	["Metodos Formais para Computacao",4,5],
	["Modelagem Conceit. e Proj. de Banco Dados",4,4],
	["Modelagem de Software",4,3],
	["Metodos Estatisticos",4,5],
	["Organizacao e Arquit. de Computadores I",4,2],
	["Organizacao e Arquit. de Computadores II",4,3],
	["Organizacao e Arquit. de Computadores III",4,4],
	["Paradigmas de Linguagens de Programaçao",4,3],
	["Programaçao Distribuida",4,8],
	["Programaçao Paralela",2,7],
	["Programaçao de Perifericos (Cc)",2,6],
	["Programaçao para Software Basico",4,3],
	["Projeto de Interfaces",2,5],
	["Redes de Computadores I",4,5],
	["Redes de Computadores II",4,6],
	["Redes de Computadores III",4,7],
	["Sistemas Embarcados",4,8],
	["Sistemas Operacionais (Cc)",4,5],
	["Teoria da Computacao",4,3],
	["Trabalho de Conclusao I",4,7],
	["Trabalho de Conclusao II",4,8],
	["Tecnicas de Programaçao",4,4],
	["Ética e Filosofia da Ciencia",4,8]
]

disciplina_list.each do |disciplina|
	disc = Disciplina.create(nome: disciplina[0], creditos:disciplina[1], semestre: disciplina[2])
	Curriculo.create(codigo: '4406', curso_id: 7, disciplina_id: disc.id)
	Turma.create(horario: "3JK5JK", numero: 128, disciplina_id: disc.id)
	Turma.create(horario: "3JK5JK", numero: 138, disciplina_id: disc.id)	
	Turma.create(horario: "2JK4JK", numero: 148, disciplina_id: disc.id)		
	Turma.create(horario: "4LM6LM", numero: 158, disciplina_id: disc.id)		
	Turma.create(horario: "2NP6NP", numero: 168, disciplina_id: disc.id)			
	Turma.create(horario: "3JK5JK", numero: 178, disciplina_id: disc.id)			
	Turma.create(horario: "7ABCD", numero: 188, disciplina_id: disc.id)		
	Turma.create(horario: "2JK3JK", numero: 198, disciplina_id: disc.id)
	Turma.create(horario: "2JK4JK6JK", numero: 228, disciplina_id: disc.id)
	Turma.create(horario: "2JK4JK6JK", numero: 238, disciplina_id: disc.id)
	Turma.create(horario: "6LMNP", numero: 248, disciplina_id: disc.id)
	Turma.create(horario: "2LM4LM", numero: 258, disciplina_id: disc.id)
	Turma.create(horario: "3NP5NP", numero: 268, disciplina_id: disc.id)	
	Turma.create(horario: "2JK6JK", numero: 278, disciplina_id: disc.id)
	Turma.create(horario: "3LM3NP", numero: 288, disciplina_id: disc.id)
	Turma.create(horario: "3LM3NP", numero: 298, disciplina_id: disc.id)
end
