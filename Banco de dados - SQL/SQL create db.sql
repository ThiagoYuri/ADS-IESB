create database db_sqlIESB
go
use db_sqlIESB
go



-----------------------------
-------------Paciente-----------------
---------------------------

create table Convenio(
Id int primary key not null,
nome varchar(400)not null
)
go

create table Paciente(
CPF int primary key not null,
RG int not null unique,
nome varchar(400) not null,
endereco varchar not null,
data_nacimento date not null,
sexo int not null, 
IdMatricula int unique not null,
-----
fk_idConvenio int foreign key references Convenio(Id),
)
go


------------------------------
--Medico
------------------------------
create table Especialidade(
Id int primary key not null,
nome varchar(400)not null,
)
go

create table  Medico(
CRM int primary key not null,
nome varchar(400) not null,
endereco varchar not null,
dias_atendimento varchar not null,
horarios_atendimento varchar not null,
--especialidade
fk_idEspecialidade int foreign key references Especialidade(Id)
)
go

-------------------------
-------------------------
create table Telefone(
Id int primary key not null,
numero int not null,
--foreing key
fk_idPaciente int ,
fk_idMedico int ,
foreign key (fk_idPaciente) references Paciente(CPF),
foreign key (fk_idMedico) references Medico(CRM)
)
go

create table Consulta(
Id int primary key not null,
data_consulta datetime not null,
-----
fk_idPaciente int foreign key references Paciente(CPF),
fk_idMedico int foreign key references Medico(CRM),
)
