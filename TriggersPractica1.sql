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

