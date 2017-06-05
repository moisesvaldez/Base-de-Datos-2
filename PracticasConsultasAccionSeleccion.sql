
USE GESTION;
GO



--1. Inserte una nueva escuela

Insert Into Escuela(Codigo_Escuela,Nombre_Escuela,Calle_Escuela,Altura_Escuela,Domicilio_Guia)
Values('1','Cruz Grandez','Calle Rodolfo Jimenez','50','Villa Mella');

SELECT *FROM Escuela;
GO

--2. Agregue un nuevo Guia

Insert Into Guia(Codigo_Guia,Nombre_Guia,Apellido_Guia,Sueldo_Hora)
Values('1','Moises','Valdez','150');

SELECT *FROM Guia;
GO


--3. Inserte los datos de una escuela existente (nombre y domicilio) pero con un nuevo código. 


Insert Into Escuela(Codigo_Escuela,Nombre_Escuela,Calle_Escuela,Altura_Escuela,Domicilio_Guia)
Values('2','Cruz Grandez','Calle Rodolfo Jimenez','50','Villa Mella');

--4. Borre todos los teléfonos que se encuentren en la tabla telefono_Escuela 
--e inserte para todas las escuelas cargadas el teléfono 1111-1111. 


CREATE TABLE Telefono_Escuela
(
  Codigo_Escuela INT PRIMARY KEY NOT NULL,
  Telefono_Escuela VARCHAR(50) NOT NULL
  );
  
  INSERT INTO Telefono_Escuela(Codigo_Escuela,Telefono_Escuela)
  VALUES('1','8095554444'),
		('2','8093459643'),
		('3','8295674353');
		
		ALTER TABLE Telefono_Escuela
		DROP COLUMN Telefono_Escuela;
		
		SELECT *FROM Telefono_Escuela;
		
		ALTER TABLE Telefono_Escuela
		ADD Telefono_Escuela VARCHAR(50);
		
		
		INSERT INTO Telefono_Escuela(Telefono_Escuela)
		VALUES('11111-11111'),
			  ('1111111111'),
			  ('1111111111');
		
	
  --5. EJERCICIOS: UPDATE  Actualice el teléfono de una de las escuelas por el número 5445-3223. 

	 UPDATE Telefono_Escuela
	 SET Telefono_Escuela = '5445-3223'
	 WHERE Codigo_Escuela = 1;
	 
	 
  --6. Actualice la fecha de una reserva que usted seleccione por 23/12/2004 
 
	SELECT *FROM Reserva;

	INSERT INTO Reserva (Numero_Reserva,Fecha_Visita_Reservada,Hora_Visita_Reservada,Codigo_Escuela)
	VALUES ('1','05/30/2017','07:00','1');
	
	UPDATE Reserva
	 SET Fecha_Visita_Reservada = '23/12/2004'
	 WHERE Numero_Reserva = 1;
	 
	 //Correr Update 
	 
  --7. Debe realizarse un descuento en el arancel por alumno de $2 para todas las reservas de más de 10 alumnos. 
  
 
  
  
  
	 
	 
	
	
	
