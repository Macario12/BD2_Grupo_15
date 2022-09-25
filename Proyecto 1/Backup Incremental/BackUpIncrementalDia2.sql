# The proper term is pseudo_replica_mode, but we use this compatibility alias
# to make the statement usable on server versions 8.0.24 and older.
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=1*/;
/*!50003 SET @OLD_COMPLETION_TYPE=@@COMPLETION_TYPE,COMPLETION_TYPE=0*/;
DELIMITER /*!*/;
# at 4
#220925  5:49:29 server id 1  end_log_pos 126 CRC32 0x0e0104c1 	Start: binlog v 4, server v 8.0.30 created 220925  5:49:29
BINLOG '
6esvYw8BAAAAegAAAH4AAAAAAAQAOC4wLjMwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAEwANAAgAAAAABAAEAAAAYgAEGggAAAAICAgCAAAACgoKKioAEjQA
CigAAcEEAQ4=
'/*!*/;
# at 126
#220925  5:49:29 server id 1  end_log_pos 157 CRC32 0x55176298 	Previous-GTIDs
# [empty]
# at 157
#220925  5:51:27 server id 1  end_log_pos 236 CRC32 0x903b8131 	Anonymous_GTID	last_committed=0	sequence_number=1	rbr_only=yes	original_committed_timestamp=1664085087400353	immediate_commit_timestamp=1664085087400353	transaction_length=713
/*!50718 SET TRANSACTION ISOLATION LEVEL READ COMMITTED*//*!*/;
# original_commit_timestamp=1664085087400353 (2022-09-25 05:51:27.400353 UTC)
# immediate_commit_timestamp=1664085087400353 (2022-09-25 05:51:27.400353 UTC)
/*!80001 SET @@session.original_commit_timestamp=1664085087400353*//*!*/;
/*!80014 SET @@session.original_server_version=80030*//*!*/;
/*!80014 SET @@session.immediate_server_version=80030*//*!*/;
SET @@SESSION.GTID_NEXT= 'ANONYMOUS'/*!*/;
# at 236
#220925  5:51:27 server id 1  end_log_pos 323 CRC32 0xc9b77dca 	Query	thread_id=95	exec_time=0	error_code=0
SET TIMESTAMP=1664085087/*!*/;
SET @@session.pseudo_thread_id=95/*!*/;
SET @@session.foreign_key_checks=1, @@session.sql_auto_is_null=0, @@session.unique_checks=1, @@session.autocommit=1/*!*/;
SET @@session.sql_mode=1168113696/*!*/;
SET @@session.auto_increment_increment=1, @@session.auto_increment_offset=1/*!*/;
/*!\C utf8mb4 *//*!*/;
SET @@session.character_set_client=255,@@session.collation_connection=255,@@session.collation_server=255/*!*/;
SET @@session.lc_time_names=0/*!*/;
SET @@session.collation_database=DEFAULT/*!*/;
/*!80011 SET @@session.default_collation_for_utf8mb4=255*//*!*/;
BEGIN
/*!*/;
# at 323
#220925  5:51:27 server id 1  end_log_pos 397 CRC32 0xa1c74b2d 	Table_map: `Proyecto2Bases`.`HABITACION` mapped to number 284
# at 397
#220925  5:51:27 server id 1  end_log_pos 839 CRC32 0xce535271 	Write_rows: table id 284 flags: STMT_END_F

BINLOG '
X+wvYxMBAAAASgAAAI0BAAAAABwBAAAAAAMADlByb3llY3RvMkJhc2VzAApIQUJJVEFDSU9OAAID
DwLIAAIBAQACA/z/AC1Lx6E=
X+wvYx4BAAAAugEAAEcDAAAAABwBAAAAAAEAAgAC/wABAAAAE1NhbGEgZGUgZXhhbWVuZXMgMQ0A
AgAAABNTYWxhIGRlIGV4YW1lbmVzIDINAAMAAAATU2FsYSBkZSBleGFtZW5lcyAzDQAEAAAAE1Nh
bGEgZGUgZXhhbWVuZXMgNA0ABQAAABNTYWxhIGRlIGltYWdlbmVzIDENAAYAAAAZU2FsYSBkZSBw
cm9jZWRpbWllbnRvcyAxDQAHAAAAGVNhbGEgZGUgcHJvY2VkaW1pZW50b3MgMg0ACAAAABlTYWxh
IGRlIHByb2NlZGltaWVudG9zIDMNAAkAAAAZU2FsYSBkZSBwcm9jZWRpbWllbnRvcyA0DQAKAAAA
ClJlY2VwY2lvbg0ACwAAAAxMYWJvcmF0b3Jpbw0ADAAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7Nu
IDENAA0AAAAZRXN0YWNpw7NuIGRlIHJldmlzacOzbiAyDQAOAAAAGUVzdGFjacOzbiBkZSByZXZp
c2nDs24gMw0ADwAAABlFc3RhY2nDs24gZGUgcmV2aXNpw7NuIDQNcVJTzg==
'/*!*/;
# at 839
#220925  5:51:27 server id 1  end_log_pos 870 CRC32 0x22a74848 	Xid = 5998
COMMIT/*!*/;
# at 870
#220925  5:51:43 server id 1  end_log_pos 914 CRC32 0x6f9cec4b 	Rotate to binlog.000017  pos: 4
SET @@SESSION.GTID_NEXT= 'AUTOMATIC' /* added by mysqlbinlog */ /*!*/;
DELIMITER ;
# End of log file
/*!50003 SET COMPLETION_TYPE=@OLD_COMPLETION_TYPE*/;
/*!50530 SET @@SESSION.PSEUDO_SLAVE_MODE=0*/;
