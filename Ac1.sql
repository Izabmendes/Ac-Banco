create database Empresa
 
use Empresa

create table Clientes(
	id int primary key identity(1,1),
	nome Varchar(35)
)

create table Computadores(
  id int primary key identity(1,1),
  idCliente int,
  constraint fk_computadores_cliente foreign key (idCliente) references Clientes(id),
)

 
create table Peças(
  id int primary key identity(1,1),
  Peça Varchar(50)
)
  
create table ComputadoresPeças(
  id int primary key identity(1,1),
  idComputador int,
  idPeça int,
  constraint fk_ComputadoresPeças_Peças foreign key (idPeças) references Peças(id),
  constraint fk_ComputadoresPeças_Computador foreign key (idComputador) references Computadores(id),
)

 insert into Clientes (nome)
values('Julia')

insert into Clientes (nome)
values('Melissa')

insert into Clientes (nome)
values('Alex')

insert into Clientes (nome)
values('Matheus')

insert into Clientes (nome)
values('Jaqueline')
 
select*from Clientes

insert into Computadores (idCliente)
values(1)

insert into Computadores (idCliente)
values(2)

insert into Computadores (idCliente)
values(3)

insert into Computadores (idCliente)
values(4)

insert into Computadores (idCliente)
values(5)
 
select*from Computadores

insert into Peças (Peça)
values('HD')

insert into Peças (Peça)
values('Processador')

insert into Peças (Peça)
values('Placa Mãe')

insert into Peças (Peça)
values('Placa de Video')

insert into Peças (Peça)
values('Gabinete')
 
select*from Peças
 
 
insert into ComputadoresPeças (idComputador, idPeça)
values(1 , 2)

insert into ComputadoresPeças (idComputador, idPeça)
values( 1, 1)

insert into ComputadoresPeças (idComputador, idPeça)
values( 1, 3)

insert into ComputadoresPeças (idComputador, idPeça)
values( 2, 4)

insert into ComputadoresPeças (idComputador, idPeça)
values( 2, 1)

insert into ComputadoresPeças (idComputador, idPeça)
values( 3, 4)

insert into ComputadoresPeças (idComputador, idPeça)
values( 4, 5)

insert into ComputadoresPeças (idComputador, idPeça)
values( 4, 1)

insert into ComputadoresPeças (idComputador, idPeça)
values( 5, 3)
 
select computadores.id, Clientes.nome  from computadores
inner join Clientes on Computadores.idCliente = Clientes.id
 
 
select computadores.id, Clientes.nome  from computadores
inner join Clientes on Computadores.idCliente = Clientes.id
where Clientes.id = 1
 
 
select ComputadoresPeças.idComputador, Peças.Peça from ComputadoresPeças
inner join Peças on ComputadoresPeças.idPeça = Peças.id
where Peças.id = 1
 
 
select ComputadoresPeças.idComputador, Clientes.nome, Peças.Peça from ComputadoresPeças
inner join Computadores on ComputadoresPeças.idComputador = Computadores.id
inner join Clientes on Computadores.idCliente = Clientes.id
inner join Peças on  ComputadoresPeças.idPeça = Peças.id
where Clientes.id = 1
 
 
select Clientes.id, Clientes.nome, Peças.Peça from Computadores
inner join Clientes on Computadores.idCliente = Clientes.id
inner join ComputadoresPeças on Computadores.id = ComputadoresPeças.idComputador
inner join Peças on ComputadoresPeças.idPeça = Peças.id
where Peças.id=1
