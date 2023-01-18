-- Etapa 4

-- 4.1
create table varones
select * from nacimientos where sexo = 'Masculino';

create table mujeres
select * from nacimientos where sexo = 'Femenino';

create table indeterminados
select * from nacimientos where sexo = 'Indeterminado';

drop table nacimientos;
