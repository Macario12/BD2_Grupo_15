# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#220920 18:45:35 server id 1  end_log_pos 126 CRC32 0xecb94ad6 	Start: binlog v 4, server v 8.0.30 created 220920 18:45:35 at startup
ROLLBACK/*!*/;
BINLOG '
TwoqYw8BAAAAegAAAH4AAAAAAAQAOC4wLjMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAABPCipjEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAdZKuew=
'/*!*/;
# at 126
#220920 18:45:35 server id 1  end_log_pos 157 CRC32 0x6b705a69 	Previous-GTIDs
# [empty]
# at 157
#220920 18:57:23 server id 1  end_log_pos 234 CRC32 0x5b07c941 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=no	original_committed_timestamp=1663700243118969	immediate_commit_timestamp=1663700243118969	transaction_length=215
# original_commit_timestamp=1663700243118969 (2022-09-20 18:57:23.118969 UTC)
# immediate_commit_timestamp=1663700243118969 (2022-09-20 18:57:23.118969 UTC)
/*!80001 SET @@session.original_commit_timestamp=1663700243118969*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 234
#220920 18:57:23 server id 1  end_log_pos 372 CRC32 0xe3e6dff1 	Query	thread_id=15	exec_time=0	error_code=0	Xid = 48
SET TIMESTAMP=1663700243/*!*/;
SET @@session.pseudo_thread_id=15/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
/*!80016 SET @@session.default_table_encryption=0*//*!*/;
CREATE DATABASE Proyecto2Bases
/*!*/;
# at 372
#220920 18:57:32 server id 1  end_log_pos 451 CRC32 0x4adecc24 	Anonymous_GTID	last_committed=1	sequence_number=2	rbr_only=no	original_committed_timestamp=1663700252273358	immediate_commit_timestamp=1663700252273358	transaction_length=286
# original_commit_timestamp=1663700252273358 (2022-09-20 18:57:32.273358 UTC)
# immediate_commit_timestamp=1663700252273358 (2022-09-20 18:57:32.273358 UTC)
/*!80001 SET @@session.original_commit_timestamp=1663700252273358*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 451
#220920 18:57:32 server id 1  end_log_pos 658 CRC32 0xe8a75538 	Query	thread_id=15	exec_time=0	error_code=0	Xid = 52
use `Proyecto2Bases`/*!*/;
SET TIMESTAMP=1663700252/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE HABITACION(
	idHabitacion int primary key auto_increment,
    habitacion varchar(50)
)
/*!*/;
# at 658
#220920 18:57:32 server id 1  end_log_pos 737 CRC32 0xf41bbff0 	Anonymous_GTID	last_committed=2	sequence_number=3	rbr_only=no	original_committed_timestamp=1663700252410993	immediate_commit_timestamp=1663700252410993	transaction_length=377
# original_commit_timestamp=1663700252410993 (2022-09-20 18:57:32.410993 UTC)
# immediate_commit_timestamp=1663700252410993 (2022-09-20 18:57:32.410993 UTC)
/*!80001 SET @@session.original_commit_timestamp=1663700252410993*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 737
#220920 18:57:32 server id 1  end_log_pos 1035 CRC32 0xe20db0d6 	Query	thread_id=15	exec_time=0	error_code=0	Xid = 53
SET TIMESTAMP=1663700252/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE LOG_HABITACION(
	timestampx VARCHAR(100),
    statusx VARCHAR(45),
    idHabitacion int,
    FOREIGN KEY (idHabitacion) REFERENCES HABITACION (idHabitacion) ON DELETE CASCADE 
)
/*!*/;
# at 1035
#220920 18:57:32 server id 1  end_log_pos 1114 CRC32 0x400b51b1 	Anonymous_GTID	last_committed=3	sequence_number=4	rbr_only=no	original_committed_timestamp=1663700252554227	immediate_commit_timestamp=1663700252554227	transaction_length=292
# original_commit_timestamp=1663700252554227 (2022-09-20 18:57:32.554227 UTC)
# immediate_commit_timestamp=1663700252554227 (2022-09-20 18:57:32.554227 UTC)
/*!80001 SET @@session.original_commit_timestamp=1663700252554227*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1114
#220920 18:57:32 server id 1  end_log_pos 1327 CRC32 0xa057bf51 	Query	thread_id=15	exec_time=0	error_code=0	Xid = 54
SET TIMESTAMP=1663700252/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE PACIENTE(
	idPaciente int primary key auto_increment,
    edad INT,
    genero VARCHAR(20)
)
/*!*/;
# at 1327
#220920 18:57:32 server id 1  end_log_pos 1406 CRC32 0x888d4195 	Anonymous_GTID	last_committed=4	sequence_number=5	rbr_only=no	original_committed_timestamp=1663700252698375	immediate_commit_timestamp=1663700252698375	transaction_length=573
# original_commit_timestamp=1663700252698375 (2022-09-20 18:57:32.698375 UTC)
# immediate_commit_timestamp=1663700252698375 (2022-09-20 18:57:32.698375 UTC)
/*!80001 SET @@session.original_commit_timestamp=1663700252698375*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 1406
#220920 18:57:32 server id 1  end_log_pos 1900 CRC32 0x925ccb71 	Query	thread_id=15	exec_time=0	error_code=0	Xid = 55
SET TIMESTAMP=1663700252/*!*/;
/*!80013 SET @@session.sql_require_primary_key=0*//*!*/;
CREATE TABLE LOG_ACTIVIDAD(
	id_log_actividad INT PRIMARY KEY auto_increment,
    timestampx VARCHAR(100),
    actividad VARCHAR(500),
    PACIENTE_idPaciente INT,
    HABITACION_idHabitacion INT,
    FOREIGN KEY (HABITACION_idHabitacion) REFERENCES HABITACION (idHabitacion) ON DELETE CASCADE,
    FOREIGN KEY (PACIENTE_idPaciente) REFERENCES PACIENTE (idPaciente) ON DELETE CASCADE 
)
/*!*/;
# at 1900
#220920 19:09:35 server id 1  end_log_pos 1923 CRC32 0xf177c68b 	Stop
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
