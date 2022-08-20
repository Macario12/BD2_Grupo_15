--=====================================================
--					Acciones Tabla Course
--=====================================================
CREATE TRIGGER practica1.Trigger1
ON [practica1].[Course]
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla Course')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla Course')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla Course')
	END
END
GO

--=====================================================
--					Acciones Tabla CourseAssignment
--=====================================================
CREATE TRIGGER practica1.Trigger2
ON [practica1].CourseAssignment
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla CourseAssignment')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla CourseAssignment')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla CourseAssignment')
	END
END
GO


--=====================================================
--					Acciones Tabla CourseTutor
--=====================================================
CREATE TRIGGER practica1.Trigger3
ON [practica1].CourseTutor
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla CourseTutor')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla CourseTutor')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla CourseTutor')
	END
END
GO

--=====================================================
--					Acciones Tabla Notification
--=====================================================
CREATE TRIGGER practica1.Trigger4
ON [practica1].Notification
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla Notification')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla Notification')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla Notification')
	END
END
GO

--=====================================================
--					Acciones Tabla ProfileStudent
--=====================================================
CREATE TRIGGER practica1.Trigger5
ON [practica1].ProfileStudent
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla ProfileStudent')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla ProfileStudent')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla ProfileStudent')
	END
END
GO

--=====================================================
--					Acciones Tabla Roles
--=====================================================
CREATE TRIGGER practica1.Trigger6
ON [practica1].Roles
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla Roles')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla Roles')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla Roles')
	END
END
GO

--=====================================================
--					Acciones Tabla TFA
--=====================================================
CREATE TRIGGER practica1.Trigger7
ON [practica1].TFA
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla TFA')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla TFA')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla TFA')
	END
END
GO

--=====================================================
--					Acciones Tabla TutorProfile
--=====================================================
CREATE TRIGGER practica1.Trigger8
ON [practica1].TutorProfile
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla TutorProfile')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla TutorProfile')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla TutorProfile')
	END
END
GO

--=====================================================
--					Acciones Tabla UsuarioRole
--=====================================================
CREATE TRIGGER practica1.Trigger9
ON [practica1].UsuarioRole
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla UsuarioRole')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla UsuarioRole')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla UsuarioRole')
	END
END
GO

--=====================================================
--					Acciones Tabla Usuarios
--=====================================================
CREATE TRIGGER practica1.Trigger10
ON [practica1].Usuarios
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
	IF EXISTS(SELECT * from INSERTED)
	BEGIN
		IF EXISTS(SELECT * from DELETED)
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se actualizó en la tabla Usuarios')
			END
		ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se insertó en la tabla Usuarios')
			END
    END
	ELSE
	BEGIN
		INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'Se eliminó en la tabla Usuarios')
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
				SELECT 'Ya agregó exitosamente el rol '+@RoleName
			END 
			ELSE
			BEGIN
				INSERT INTO [practica1].[HistoryLog] VALUES (GETDATE(),'la transacción fue exitosa para procedimiento TR4')
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
CREATE PROCEDURE TR2
	@Email varchar(max),
	@CodCourse int
AS
BEGIN
BEGIN TRANSACTION
		BEGIN TRY
	IF EXISTS (SELECT 0 FROM practica1.Usuarios WHERE Email = @Email)
	BEGIN
		IF EXISTS (SELECT 0 FROM practica1.Usuarios WHERE EmailConfirmed = 1)
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
		IF EXISTS (SELECT 0 FROM practica1.Usuarios WHERE EmailConfirmed = 1)
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

				IF EXISTS (SELECT CodCourse FROM practica1.Course WHERE CodCourse = @CodCourse)
				BEGIN
					IF EXISTS (SELECT CodCourse FROM practica1.Course WHERE CreditsRequired <= @CreditosEstudiante)
					BEGIN
						INSERT INTO practica1.CourseAssignment VALUES (@IDUsuario,@CreditosEstudiante)

						-- se envia notificación a alumno
						INSERT INTO practica1.Notification VALUES (@IDUsuario, 'Se a asignado al curso '+CAST(@CodCourse AS nvarchar),GETDATE())

						-- Se obtiene el curso
						DECLARE @IdTutor uniqueidentifier
						SET @IdTutor = (SELECT TutorId FROM practica1.CourseTutor WHERE CourseCodCourse = @CodCourse)

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
