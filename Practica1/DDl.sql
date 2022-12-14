--=====================================================
--					Acciones Tabla Course
--=====================================================
ALTER TRIGGER practica1.Trigger1
ON [practica1].[Course]
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As Varchar(250)
				SET @ValorActualizado = (SELECT Name FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+@ValorActualizado+' en la tabla Course')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As Varchar(250)
				SET @ValorInsertado = (SELECT Name FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +@ValorInsertado+' en la tabla Course')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As Varchar(250)
		SET @ValorEliminado = (SELECT Name FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminóel valor '+@ValorEliminado+' en la tabla Course ')
	END
END
GO


--=====================================================
--					Acciones Tabla CourseAssignment
--=====================================================
ALTER TRIGGER practica1.Trigger2
ON [practica1].CourseAssignment
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As int
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla CourseAssignment')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As int
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla CourseAssignment')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As int
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminóel valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla CourseAssignment ')
	END
END
GO


--=====================================================
--					Acciones Tabla CourseTutor
--=====================================================
ALTER TRIGGER practica1.Trigger3
ON [practica1].CourseTutor
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As int
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla CourseTutor')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As INT
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla CourseTutor')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As int
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla CourseTutor ')
	END
END
GO

--=====================================================
--					Acciones Tabla Notification
--=====================================================
ALTER TRIGGER practica1.Trigger4
ON [practica1].Notification
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As int
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla Notification')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As int
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla Notification')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As int
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla Notification ')
	END
END
GO

--=====================================================
--					Acciones Tabla ProfileStudent
--=====================================================
ALTER TRIGGER practica1.Trigger5
ON [practica1].ProfileStudent
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As int
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla ProfileStudent')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As int
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla ProfileStudent')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As int
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla ProfileStudent ')
	END
END
GO

--=====================================================
--					Acciones Tabla Roles
--=====================================================
ALTER TRIGGER practica1.Trigger6
ON [practica1].Roles
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As varchar(250)
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla Roles')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As varchar(250)
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla Roles')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As varchar(250)
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla Roles ')
	END
END
GO

--=====================================================
--					Acciones Tabla TFA
--=====================================================
ALTER TRIGGER practica1.Trigger7
ON [practica1].TFA
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As int
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla TFA')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As int
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla TFA')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As int
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla TFA ')
	END
END
GO

--=====================================================
--					Acciones Tabla TutorProfile
--=====================================================
ALTER TRIGGER practica1.Trigger8
ON [practica1].TutorProfile
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As int
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla TutorProfile')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As int
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla TutorProfile')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As int
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla TutorProfile ')
	END
END
GO

--=====================================================
--					Acciones Tabla UsuarioRole
--=====================================================
ALTER TRIGGER practica1.Trigger9
ON [practica1].UsuarioRole
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As int
				SET @ValorActualizado = (SELECT Id FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla UsuarioRole')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As int
				SET @ValorInsertado = (SELECT Id FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla UsuarioRole')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As int
		SET @ValorEliminado = (SELECT Id FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla UsuarioRole ')
	END
END
GO

--=====================================================
--					Acciones Tabla Usuarios
--=====================================================
ALTER TRIGGER practica1.Trigger10
ON [practica1].Usuarios
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				DECLARE @ValorActualizado As varchar(250)
				SET @ValorActualizado = (SELECT Email FROM DELETED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó el valor '+CAST(@ValorActualizado as nvarchar)+' en la tabla Roles')
			END
		ELSE
			BEGIN
				DECLARE @ValorInsertado As varchar(250)
				SET @ValorInsertado = (SELECT Email FROM INSERTED)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó el valor ' +CAST(@ValorInsertado as nvarchar)+' en la tabla Roles')
			END
    END
	ELSE
	BEGIN
		DECLARE @ValorEliminado As varchar(250)
		SET @ValorEliminado = (SELECT Email FROM DELETED)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó el valor '+CAST(@ValorEliminado as nvarchar)+' en la tabla Usuarios ')
	END
END
GO

-------------------------------- Procedimientos

--=====================================================
--					SP para creacion de nuevos roles.
--=====================================================
CREATE PROCEDURE TR4
	@RoleName varchar(max)
AS
BEGIN
	BEGIN TRANSACTION
		BEGIN TRY
			IF NOT EXISTS (SELECT 0 FROM practica1.Roles WHERE RoleName = @RoleName)
			BEGIN
				INSERT INTO practica1.Roles VALUES(NEWID(),@RoleName)
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue exitosa para procedimiento TR4')
				SELECT 'Ya agregó exitosamente el rol '+@RoleName
			END 
			ELSE
			BEGIN
				
				SELECT 'Ya existe el rol '+@RoleName
			END
		COMMIT TRANSACTION;
		END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
			INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue fallida para procedimiento TR4')
	END CATCH
END
GO

--=====================================================
--					SP para creacion de nuevos usuarios.
--=====================================================
CREATE PROCEDURE TR1
	@Firstname varchar(max),
	@Lastname varchar(max),
	@Email varchar(max),
	@DateOfBirth datetime2(7),
	@Password varchar(max),
	@Credits int
AS
BEGIN
BEGIN TRANSACTION
		BEGIN TRY
	IF NOT EXISTS (SELECT 0 FROM practica1.Usuarios WHERE Email = @Email)
	BEGIN
		-- Se crea el nuevo Usuario
		INSERT INTO practica1.Usuarios VALUES(NEWID(),@Firstname,@Lastname,@Email,@DateOfBirth,@Password,GETDATE(),0)
		-- Se obtiene el usuario
		DECLARE @IDUsuario uniqueidentifier
		SET @IDUsuario = (SELECT Id FROM practica1.Usuarios WHERE Email = @Email)

		-- Se agregan creditos
		INSERT INTO practica1.ProfileStudent VALUES (@IDUsuario,@Credits)
		-- Se le asigna un rol
		DECLARE @IdRole uniqueidentifier
		SET @IdRole = (SELECT Id FROM practica1.Roles WHERE RoleName = 'Student')
		INSERT INTO practica1.UsuarioRole VALUES (@IdRole,@IDUsuario,1)

		--TFA
		INSERT INTO practica1.TFA VALUES (@IDUsuario,0,GETDATE())

		-- Envio de correo
		INSERT INTO practica1.Notification VALUES (@IDUsuario, 'Se le a enviado un correo',GETDATE())
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue exitosa para procedimiento TR1')
		SELECT 'Se agregó el usuario con el correo' + @Email
	END
	ELSE
	BEGIN
		SELECT 'Ya existe un usuario con el correo' + @Email
	END
	COMMIT TRANSACTION;
		END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
			INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue fallida para procedimiento TR1')
	END CATCH
END
GO


--=====================================================
--					SP para creacion de nuevos cursos.
--=====================================================
CREATE PROCEDURE TR5
	@CodCourse int,
	@Name varchar(max),
	@CreditsRequired int
AS
BEGIN
BEGIN TRANSACTION
		BEGIN TRY
	IF NOT EXISTS (SELECT 0 FROM practica1.Course WHERE CodCourse = @CodCourse)
	BEGIN
		INSERT INTO practica1.Course VALUES (@CodCourse,@Name,@CreditsRequired)
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue exitosa para procedimiento TR5')
		SELECT 'Se agregó el curso ' + @Name
	END
	ELSE
	BEGIN
		SELECT 'Ya existe el curso ' + @Name
	END
	COMMIT TRANSACTION;
		END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
			INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue fallida para procedimiento TR5')
	END CATCH
END
GO

--=====================================================
--					SP para actualizacion de estudiante a Tutor.
--=====================================================
CREATE PROCEDURE [dbo].[TR2]
	@Email varchar(max),
	@CodCourse int
AS
BEGIN
BEGIN TRANSACTION
		BEGIN TRY
	IF EXISTS (SELECT 0 FROM practica1.Usuarios WHERE Email = @Email)
	BEGIN
		IF EXISTS (SELECT 0 FROM practica1.Usuarios WHERE EmailConfirmed = 1 AND Email = @Email)
		BEGIN
			IF EXISTS (SELECT CodCourse FROM practica1.Course WHERE CodCourse = @CodCourse)
			BEGIN
				-- Se obtiene el usuario
				DECLARE @IDUsuario uniqueidentifier
				SET @IDUsuario = (SELECT Id FROM practica1.Usuarios WHERE Email = @Email)

				-- Se obtiene el rol tutor
				DECLARE @IdRole uniqueidentifier
				SET @IdRole = (SELECT Id FROM practica1.Roles WHERE RoleName = 'Tutor')

				-- Se obtiene el curso
				DECLARE @IdCourse int
				SET @IdCourse = (SELECT CodCourse FROM practica1.Course WHERE CodCourse = @CodCourse)

				IF NOT EXISTS (SELECT 0 FROM practica1.CourseTutor WHERE TutorId = @IDUsuario AND CourseCodCourse = @IdCourse)
				BEGIN
					-- Se actualiza al estudiante commo tutor
					UPDATE practica1.UsuarioRole 
					SET RoleId = @IdRole
					WHERE UserId = @IDUsuario

					--Se le crea su Usuario tipo Tutor
					INSERT INTO practica1.TutorProfile VALUES(@IDUsuario, 'No se que es :u')
					--Se le asigna el curso al tutor.
					INSERT INTO practica1.CourseTutor VALUES (@IDUsuario,@IdCourse)

					-- se envia notificación
					INSERT INTO practica1.Notification VALUES (@IDUsuario, 'Se a cambiado su perfil a modo Tutor',GETDATE())

					INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue exitosa para procedimiento TR2')
				END ELSE
				BEGIN
					SELECT 'El tutor '+@Email+' ya cuenta con el curso ' + CAST(@CodCourse AS nvarchar) + ' Asignado'
				END
			END ELSE
			BEGIN
				SELECT 'No existe el curso con el codigo '+@CodCourse
			END
		END ELSE
		BEGIN
			SELECT 'La cuenta no esta activa'
		END
	END
	ELSE
	BEGIN
		SELECT 'No existe el usuario con el correo ' + @Email
	END
	COMMIT TRANSACTION;
		END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
			INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue fallida para procedimiento TR2')
	END CATCH
END
GO





--=====================================================
--					SP para asignaccion de cursos y notificaion.
--=====================================================
CREATE PROCEDURE TR3
	@Email varchar(max),
	@CodCourse int
AS
BEGIN
BEGIN TRANSACTION
		BEGIN TRY
	IF EXISTS (SELECT 0 FROM practica1.Usuarios WHERE Email = @Email)
	BEGIN
		IF EXISTS (SELECT 0 FROM practica1.Usuarios WHERE EmailConfirmed = 1 AND Email = @Email)
		BEGIN

				-- Se obtiene el usuario
				DECLARE @IDUsuario uniqueidentifier
				SET @IDUsuario = (SELECT Id FROM practica1.Usuarios WHERE Email = @Email)

				-- Se obtiene los creditos
				DECLARE @CreditosEstudiante int
				SET @CreditosEstudiante = (SELECT Credits FROM practica1.ProfileStudent WHERE UserId = @IDUsuario)

				-- Se obtiene el curso
				DECLARE @IdCourse int
				SET @IdCourse = (SELECT CodCourse FROM practica1.Course WHERE CodCourse = @CodCourse)

				IF EXISTS (SELECT 0 FROM practica1.Course WHERE CodCourse = @CodCourse)
				BEGIN
					IF EXISTS (SELECT 0 FROM practica1.Course WHERE CreditsRequired <= @CreditosEstudiante  AND CodCourse = @CodCourse)
					BEGIN
						INSERT INTO practica1.CourseAssignment (StudentId,CourseCodCourse) VALUES (@IDUsuario,@CodCourse)

						-- se envia notificación a alumno
						INSERT INTO practica1.Notification VALUES (@IDUsuario, 'Se a asignado al curso '+CAST(@CodCourse AS nvarchar),GETDATE())

						-- Se obtiene el curso
						DECLARE @IdTutor uniqueidentifier
						SET @IdTutor = (SELECT TOP 1 TutorId FROM practica1.CourseTutor WHERE CourseCodCourse = @CodCourse)

						-- se envia notificación a tutor
						INSERT INTO practica1.Notification VALUES (@IdTutor, 'Se a asignado un estudiante a tu curso '+CAST(@CodCourse AS nvarchar),GETDATE())

						INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue exitosa para procedimiento TR3')

						SELECT 'Se asignó el curso correctamento al estudiante ' + @Email
					END ELSE
					BEGIN
						SELECT 'No cuentas con los creditos necesarios para el curso '+@CodCourse
					END
				END ELSE
				BEGIN
					SELECT 'No existe el curso con el codigo '+@CodCourse
				END
		END ELSE
		BEGIN
			SELECT 'La cuenta no esta activa'
		END
	END
	ELSE
	BEGIN
		SELECT 'No existe el usuario con el correo ' + @Email
	END
	COMMIT TRANSACTION;
		END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
			INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue fallida para procedimiento TR3')
	END CATCH
END
GO


--=====================================================
--					SP para Validacion de Datos
--=====================================================
CREATE PROCEDURE TR6
AS
BEGIN
BEGIN TRANSACTION
	BEGIN TRY
				-- Validar letras para usuarios 
		ALTER TABLE practica1.Usuarios 
        	ADD CONSTRAINT V_LETRAS_USUARIOS CHECK (Firstname not like '%[^a-zA-Z]%' and Lastname not like '%[^a-zA-Z]%');
        		-- Validar letras para course
        ALTER TABLE practica1.Course 
        	ADD CONSTRAINT V_LETRAS_USUARIOS CHECK (Name not like '%[^a-zA-Z ]%');
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION;
			INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue fallida para procedimiento TR6')
	END CATCH
END
GO

-------------------------------- Funciones

--=====================================================
--					Func_course_usuario
--=====================================================
CREATE FUNCTION F1
(
	@CodCourse INT
)
RETURNS TABLE
AS
	RETURN 
		SELECT u.Id, u.Firstname, u.Lastname, u.Email, u.DateOfBirth
		FROM practica1.Course c
		INNER JOIN practica1.CourseAssignment ca ON ca.CourseCodCourse = c.CodCourse 
		INNER JOIN practica1.Usuarios u ON u.Id = ca.StudentId 
		WHERE c.CodCourse = @CodCourse;
--

ALTER FUNCTION [dbo].[F2]
(
	@CodTutor uniqueidentifier
)
RETURNS TABLE
AS
    RETURN(
        SELECT C.CodCourse, C.Name
        FROM practica1.Course C
        INNER JOIN practica1.CourseTutor AS CT ON C.CodCourse = CT.CourseCodCourse
        INNER JOIN practica1.Usuarios AS U ON CT.TutorId = U.Id
        INNER JOIN practica1.TutorProfile AS T ON U.Id = T.UserId
        WHERE T.UserId = @CodTutor
    )
GO


CREATE FUNCTION F3
(
	@CodUser VARCHAR(max)
)
RETURNS TABLE
AS
    RETURN(
        SELECT NO.Message, NO.Date
        FROM practica1.Notification AS NO
        INNER JOIN practica1.Usuarios AS U on U.Id = NO.UserId
        WHERE U.Id = @CodUser
    )



CREATE FUNCTION F4
()
RETURNS TABLE
AS
RETURN (SELECT Id,Date,Description  FROM practica1.HistoryLog)

CREATE FUNCTION F5
(
	@ID uniqueidentifier
)
RETURNS TABLE
AS
	RETURN (
	SELECT u.Firstname,u.Lastname,u.Email,u.DateOfBirth,p.Credits,r.RoleName FROM practica1.Usuarios u
	INNER JOIN practica1.ProfileStudent p ON p.UserId = u.Id
	INNER JOIN practica1.UsuarioRole ur ON ur.UserId = u.Id
	INNER JOIN practica1.Roles r ON ur.RoleId = r.Id
	WHERE u.Id = @ID
	)
