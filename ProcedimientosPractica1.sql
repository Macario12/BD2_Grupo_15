--=====================================================
--					SP para creacion de nuevos roles.
--=====================================================
CREATE PROCEDURE TR4
	@RoleName varchar(max)
AS
BEGIN
	IF NOT EXISTS (SELECT 0 FROM practica1.Roles WHERE RoleName = @RoleName)
	BEGIN
		INSERT INTO practica1.Roles VALUES(NEWID(),@RoleName)
		SELECT 'Ya agregó exitosamente el rol '+@RoleName
	END 
	ELSE
	BEGIN
		SELECT 'Ya existe el rol '+@RoleName
	END
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

		SELECT 'Se agregó el usuario con el correo' + @Email
	END
	ELSE
	BEGIN
		SELECT 'Ya existe un usuario con el correo' + @Email
	END
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
	IF NOT EXISTS (SELECT 0 FROM practica1.Course WHERE CodCourse = @CodCourse)
	BEGIN
		INSERT INTO practica1.Course VALUES (@CodCourse,@Name,@CreditsRequired)

		SELECT 'Se agregó el curso ' + @Name
	END
	ELSE
	BEGIN
		SELECT 'Ya existe el curso ' + @Name
	END
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
END
GO
