select  *  from  auxilio_emergencial;


select  count(1)  from auxilio_emergencial;  -- quantidade de municipios

select  count(1)  from  auxilio_emergencial
where valor > 1000000.00;

select  count(1)  from  auxilio_emergencial
where valor > 10000000.00;

select sum(valor)  from  auxilio_emergencial;

select  municipio, max(valor)  from  auxilio_emergencial
group by municipio  order by 2 desc limit 5 ;


select  municipio, min(valor)  from  auxilio_emergencial
group by municipio  order by 2  limit 5 ;


select  municipio, 
 cast((valor/ (select sum(valor)  from  auxilio_emergencial)  ) * 100
 as decimal(18,4))from  auxilio_emergencial
group by municipio, valor  order by 2 desc limit 5 ;


