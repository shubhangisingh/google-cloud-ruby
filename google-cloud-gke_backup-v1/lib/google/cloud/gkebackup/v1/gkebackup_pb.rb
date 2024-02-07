# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkebackup/v1/gkebackup.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkebackup/v1/backup_pb'
require 'google/cloud/gkebackup/v1/backup_plan_pb'
require 'google/cloud/gkebackup/v1/restore_pb'
require 'google/cloud/gkebackup/v1/restore_plan_pb'
require 'google/cloud/gkebackup/v1/volume_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n)google/cloud/gkebackup/v1/gkebackup.proto\x12\x19google.cloud.gkebackup.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/gkebackup/v1/backup.proto\x1a+google/cloud/gkebackup/v1/backup_plan.proto\x1a\'google/cloud/gkebackup/v1/restore.proto\x1a,google/cloud/gkebackup/v1/restore_plan.proto\x1a&google/cloud/gkebackup/v1/volume.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\"\xb2\x01\n\x17\x43reateBackupPlanRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12?\n\x0b\x62\x61\x63kup_plan\x18\x02 \x01(\x0b\x32%.google.cloud.gkebackup.v1.BackupPlanB\x03\xe0\x41\x02\x12\x1b\n\x0e\x62\x61\x63kup_plan_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\x9c\x01\n\x16ListBackupPlansRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x84\x01\n\x17ListBackupPlansResponse\x12;\n\x0c\x62\x61\x63kup_plans\x18\x01 \x03(\x0b\x32%.google.cloud.gkebackup.v1.BackupPlan\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Q\n\x14GetBackupPlanRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#gkebackup.googleapis.com/BackupPlan\"\x8b\x01\n\x17UpdateBackupPlanRequest\x12?\n\x0b\x62\x61\x63kup_plan\x18\x01 \x01(\x0b\x32%.google.cloud.gkebackup.v1.BackupPlanB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"b\n\x17\x44\x65leteBackupPlanRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#gkebackup.googleapis.com/BackupPlan\x12\x0c\n\x04\x65tag\x18\x02 \x01(\t\"\x98\x01\n\x13\x43reateBackupRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#gkebackup.googleapis.com/BackupPlan\x12\x31\n\x06\x62\x61\x63kup\x18\x02 \x01(\x0b\x32!.google.cloud.gkebackup.v1.Backup\x12\x11\n\tbackup_id\x18\x03 \x01(\t\"\x9a\x01\n\x12ListBackupsRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#gkebackup.googleapis.com/BackupPlan\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"b\n\x13ListBackupsResponse\x12\x32\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32!.google.cloud.gkebackup.v1.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"I\n\x10GetBackupRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fgkebackup.googleapis.com/Backup\"~\n\x13UpdateBackupRequest\x12\x36\n\x06\x62\x61\x63kup\x18\x01 \x01(\x0b\x32!.google.cloud.gkebackup.v1.BackupB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"i\n\x13\x44\x65leteBackupRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fgkebackup.googleapis.com/Backup\x12\x0c\n\x04\x65tag\x18\x02 \x01(\t\x12\r\n\x05\x66orce\x18\x03 \x01(\x08\"\x9c\x01\n\x18ListVolumeBackupsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fgkebackup.googleapis.com/Backup\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"u\n\x19ListVolumeBackupsResponse\x12?\n\x0evolume_backups\x18\x01 \x03(\x0b\x32\'.google.cloud.gkebackup.v1.VolumeBackup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"U\n\x16GetVolumeBackupRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%gkebackup.googleapis.com/VolumeBackup\"\xb6\x01\n\x18\x43reateRestorePlanRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x41\n\x0crestore_plan\x18\x02 \x01(\x0b\x32&.google.cloud.gkebackup.v1.RestorePlanB\x03\xe0\x41\x02\x12\x1c\n\x0frestore_plan_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\x9d\x01\n\x17ListRestorePlansRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x87\x01\n\x18ListRestorePlansResponse\x12=\n\rrestore_plans\x18\x01 \x03(\x0b\x32&.google.cloud.gkebackup.v1.RestorePlan\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"S\n\x15GetRestorePlanRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$gkebackup.googleapis.com/RestorePlan\"\x8e\x01\n\x18UpdateRestorePlanRequest\x12\x41\n\x0crestore_plan\x18\x01 \x01(\x0b\x32&.google.cloud.gkebackup.v1.RestorePlanB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"s\n\x18\x44\x65leteRestorePlanRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$gkebackup.googleapis.com/RestorePlan\x12\x0c\n\x04\x65tag\x18\x02 \x01(\t\x12\r\n\x05\x66orce\x18\x03 \x01(\x08\"\xa7\x01\n\x14\x43reateRestoreRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$gkebackup.googleapis.com/RestorePlan\x12\x38\n\x07restore\x18\x02 \x01(\x0b\x32\".google.cloud.gkebackup.v1.RestoreB\x03\xe0\x41\x02\x12\x17\n\nrestore_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\x9c\x01\n\x13ListRestoresRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$gkebackup.googleapis.com/RestorePlan\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"z\n\x14ListRestoresResponse\x12\x34\n\x08restores\x18\x01 \x03(\x0b\x32\".google.cloud.gkebackup.v1.Restore\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"K\n\x11GetRestoreRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n gkebackup.googleapis.com/Restore\"\x81\x01\n\x14UpdateRestoreRequest\x12\x38\n\x07restore\x18\x01 \x01(\x0b\x32\".google.cloud.gkebackup.v1.RestoreB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"k\n\x14\x44\x65leteRestoreRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n gkebackup.googleapis.com/Restore\x12\x0c\n\x04\x65tag\x18\x02 \x01(\t\x12\r\n\x05\x66orce\x18\x03 \x01(\x08\"\x9e\x01\n\x19ListVolumeRestoresRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n gkebackup.googleapis.com/Restore\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"x\n\x1aListVolumeRestoresResponse\x12\x41\n\x0fvolume_restores\x18\x01 \x03(\x0b\x32(.google.cloud.gkebackup.v1.VolumeRestore\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"W\n\x17GetVolumeRestoreRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&gkebackup.googleapis.com/VolumeRestore2\xc5(\n\x0c\x42\x61\x63kupForGKE\x12\xf2\x01\n\x10\x43reateBackupPlan\x12\x32.google.cloud.gkebackup.v1.CreateBackupPlanRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x01\xca\x41\x1f\n\nBackupPlan\x12\x11OperationMetadata\xda\x41!parent,backup_plan,backup_plan_id\x82\xd3\xe4\x93\x02>\"//v1/{parent=projects/*/locations/*}/backupPlans:\x0b\x62\x61\x63kup_plan\x12\xba\x01\n\x0fListBackupPlans\x12\x31.google.cloud.gkebackup.v1.ListBackupPlansRequest\x1a\x32.google.cloud.gkebackup.v1.ListBackupPlansResponse\"@\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x31\x12//v1/{parent=projects/*/locations/*}/backupPlans\x12\xa7\x01\n\rGetBackupPlan\x12/.google.cloud.gkebackup.v1.GetBackupPlanRequest\x1a%.google.cloud.gkebackup.v1.BackupPlan\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/backupPlans/*}\x12\xf4\x01\n\x10UpdateBackupPlan\x12\x32.google.cloud.gkebackup.v1.UpdateBackupPlanRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\xca\x41\x1f\n\nBackupPlan\x12\x11OperationMetadata\xda\x41\x17\x62\x61\x63kup_plan,update_mask\x82\xd3\xe4\x93\x02J2;/v1/{backup_plan.name=projects/*/locations/*/backupPlans/*}:\x0b\x62\x61\x63kup_plan\x12\xd2\x01\n\x10\x44\x65leteBackupPlan\x12\x32.google.cloud.gkebackup.v1.DeleteBackupPlanRequest\x1a\x1d.google.longrunning.Operation\"k\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31*//v1/{name=projects/*/locations/*/backupPlans/*}\x12\xe1\x01\n\x0c\x43reateBackup\x12..google.cloud.gkebackup.v1.CreateBackupRequest\x1a\x1d.google.longrunning.Operation\"\x81\x01\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\xda\x41\x17parent,backup,backup_id\x82\xd3\xe4\x93\x02\x43\"9/v1/{parent=projects/*/locations/*/backupPlans/*}/backups:\x06\x62\x61\x63kup\x12\xb8\x01\n\x0bListBackups\x12-.google.cloud.gkebackup.v1.ListBackupsRequest\x1a..google.cloud.gkebackup.v1.ListBackupsResponse\"J\xda\x41\x06parent\x82\xd3\xe4\x93\x02;\x12\x39/v1/{parent=projects/*/locations/*/backupPlans/*}/backups\x12\xa5\x01\n\tGetBackup\x12+.google.cloud.gkebackup.v1.GetBackupRequest\x1a!.google.cloud.gkebackup.v1.Backup\"H\xda\x41\x04name\x82\xd3\xe4\x93\x02;\x12\x39/v1/{name=projects/*/locations/*/backupPlans/*/backups/*}\x12\xe3\x01\n\x0cUpdateBackup\x12..google.cloud.gkebackup.v1.UpdateBackupRequest\x1a\x1d.google.longrunning.Operation\"\x83\x01\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\xda\x41\x12\x62\x61\x63kup,update_mask\x82\xd3\xe4\x93\x02J2@/v1/{backup.name=projects/*/locations/*/backupPlans/*/backups/*}:\x06\x62\x61\x63kup\x12\xd4\x01\n\x0c\x44\x65leteBackup\x12..google.cloud.gkebackup.v1.DeleteBackupRequest\x1a\x1d.google.longrunning.Operation\"u\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02;*9/v1/{name=projects/*/locations/*/backupPlans/*/backups/*}\x12\xda\x01\n\x11ListVolumeBackups\x12\x33.google.cloud.gkebackup.v1.ListVolumeBackupsRequest\x1a\x34.google.cloud.gkebackup.v1.ListVolumeBackupsResponse\"Z\xda\x41\x06parent\x82\xd3\xe4\x93\x02K\x12I/v1/{parent=projects/*/locations/*/backupPlans/*/backups/*}/volumeBackups\x12\xc7\x01\n\x0fGetVolumeBackup\x12\x31.google.cloud.gkebackup.v1.GetVolumeBackupRequest\x1a\'.google.cloud.gkebackup.v1.VolumeBackup\"X\xda\x41\x04name\x82\xd3\xe4\x93\x02K\x12I/v1/{name=projects/*/locations/*/backupPlans/*/backups/*/volumeBackups/*}\x12\xf9\x01\n\x11\x43reateRestorePlan\x12\x33.google.cloud.gkebackup.v1.CreateRestorePlanRequest\x1a\x1d.google.longrunning.Operation\"\x8f\x01\xca\x41 \n\x0bRestorePlan\x12\x11OperationMetadata\xda\x41#parent,restore_plan,restore_plan_id\x82\xd3\xe4\x93\x02@\"0/v1/{parent=projects/*/locations/*}/restorePlans:\x0crestore_plan\x12\xbe\x01\n\x10ListRestorePlans\x12\x32.google.cloud.gkebackup.v1.ListRestorePlansRequest\x1a\x33.google.cloud.gkebackup.v1.ListRestorePlansResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/restorePlans\x12\xab\x01\n\x0eGetRestorePlan\x12\x30.google.cloud.gkebackup.v1.GetRestorePlanRequest\x1a&.google.cloud.gkebackup.v1.RestorePlan\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/restorePlans/*}\x12\xfb\x01\n\x11UpdateRestorePlan\x12\x33.google.cloud.gkebackup.v1.UpdateRestorePlanRequest\x1a\x1d.google.longrunning.Operation\"\x91\x01\xca\x41 \n\x0bRestorePlan\x12\x11OperationMetadata\xda\x41\x18restore_plan,update_mask\x82\xd3\xe4\x93\x02M2=/v1/{restore_plan.name=projects/*/locations/*/restorePlans/*}:\x0crestore_plan\x12\xd5\x01\n\x11\x44\x65leteRestorePlan\x12\x33.google.cloud.gkebackup.v1.DeleteRestorePlanRequest\x1a\x1d.google.longrunning.Operation\"l\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/restorePlans/*}\x12\xe9\x01\n\rCreateRestore\x12/.google.cloud.gkebackup.v1.CreateRestoreRequest\x1a\x1d.google.longrunning.Operation\"\x87\x01\xca\x41\x1c\n\x07Restore\x12\x11OperationMetadata\xda\x41\x19parent,restore,restore_id\x82\xd3\xe4\x93\x02\x46\";/v1/{parent=projects/*/locations/*/restorePlans/*}/restores:\x07restore\x12\xbd\x01\n\x0cListRestores\x12..google.cloud.gkebackup.v1.ListRestoresRequest\x1a/.google.cloud.gkebackup.v1.ListRestoresResponse\"L\xda\x41\x06parent\x82\xd3\xe4\x93\x02=\x12;/v1/{parent=projects/*/locations/*/restorePlans/*}/restores\x12\xaa\x01\n\nGetRestore\x12,.google.cloud.gkebackup.v1.GetRestoreRequest\x1a\".google.cloud.gkebackup.v1.Restore\"J\xda\x41\x04name\x82\xd3\xe4\x93\x02=\x12;/v1/{name=projects/*/locations/*/restorePlans/*/restores/*}\x12\xeb\x01\n\rUpdateRestore\x12/.google.cloud.gkebackup.v1.UpdateRestoreRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\xca\x41\x1c\n\x07Restore\x12\x11OperationMetadata\xda\x41\x13restore,update_mask\x82\xd3\xe4\x93\x02N2C/v1/{restore.name=projects/*/locations/*/restorePlans/*/restores/*}:\x07restore\x12\xd8\x01\n\rDeleteRestore\x12/.google.cloud.gkebackup.v1.DeleteRestoreRequest\x1a\x1d.google.longrunning.Operation\"w\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02=*;/v1/{name=projects/*/locations/*/restorePlans/*/restores/*}\x12\xe0\x01\n\x12ListVolumeRestores\x12\x34.google.cloud.gkebackup.v1.ListVolumeRestoresRequest\x1a\x35.google.cloud.gkebackup.v1.ListVolumeRestoresResponse\"]\xda\x41\x06parent\x82\xd3\xe4\x93\x02N\x12L/v1/{parent=projects/*/locations/*/restorePlans/*/restores/*}/volumeRestores\x12\xcd\x01\n\x10GetVolumeRestore\x12\x32.google.cloud.gkebackup.v1.GetVolumeRestoreRequest\x1a(.google.cloud.gkebackup.v1.VolumeRestore\"[\xda\x41\x04name\x82\xd3\xe4\x93\x02N\x12L/v1/{name=projects/*/locations/*/restorePlans/*/restores/*/volumeRestores/*}\x1aL\xca\x41\x18gkebackup.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa1\x03\n\x1d\x63om.google.cloud.gkebackup.v1B\x0eGKEBackupProtoP\x01Z;cloud.google.com/go/gkebackup/apiv1/gkebackuppb;gkebackuppb\xaa\x02\x19Google.Cloud.GkeBackup.V1\xca\x02\x19Google\\Cloud\\GkeBackup\\V1\xea\x02\x1cGoogle::Cloud::GkeBackup::V1\xea\x41^\n container.googleapis.com/Cluster\x12:projects/{project}/locations/{location}/clusters/{cluster}\xea\x41x\n!cloudkms.googleapis.com/CryptoKey\x12Sprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.gkebackup.v1.BackupPlan", "google/cloud/gkebackup/v1/backup_plan.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.gkebackup.v1.Backup", "google/cloud/gkebackup/v1/backup.proto"],
    ["google.cloud.gkebackup.v1.VolumeBackup", "google/cloud/gkebackup/v1/volume.proto"],
    ["google.cloud.gkebackup.v1.RestorePlan", "google/cloud/gkebackup/v1/restore_plan.proto"],
    ["google.cloud.gkebackup.v1.Restore", "google/cloud/gkebackup/v1/restore.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module GkeBackup
      module V1
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.OperationMetadata").msgclass
        CreateBackupPlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.CreateBackupPlanRequest").msgclass
        ListBackupPlansRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListBackupPlansRequest").msgclass
        ListBackupPlansResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListBackupPlansResponse").msgclass
        GetBackupPlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.GetBackupPlanRequest").msgclass
        UpdateBackupPlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.UpdateBackupPlanRequest").msgclass
        DeleteBackupPlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.DeleteBackupPlanRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.CreateBackupRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.GetBackupRequest").msgclass
        UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.UpdateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.DeleteBackupRequest").msgclass
        ListVolumeBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListVolumeBackupsRequest").msgclass
        ListVolumeBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListVolumeBackupsResponse").msgclass
        GetVolumeBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.GetVolumeBackupRequest").msgclass
        CreateRestorePlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.CreateRestorePlanRequest").msgclass
        ListRestorePlansRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListRestorePlansRequest").msgclass
        ListRestorePlansResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListRestorePlansResponse").msgclass
        GetRestorePlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.GetRestorePlanRequest").msgclass
        UpdateRestorePlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.UpdateRestorePlanRequest").msgclass
        DeleteRestorePlanRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.DeleteRestorePlanRequest").msgclass
        CreateRestoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.CreateRestoreRequest").msgclass
        ListRestoresRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListRestoresRequest").msgclass
        ListRestoresResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListRestoresResponse").msgclass
        GetRestoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.GetRestoreRequest").msgclass
        UpdateRestoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.UpdateRestoreRequest").msgclass
        DeleteRestoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.DeleteRestoreRequest").msgclass
        ListVolumeRestoresRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListVolumeRestoresRequest").msgclass
        ListVolumeRestoresResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.ListVolumeRestoresResponse").msgclass
        GetVolumeRestoreRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkebackup.v1.GetVolumeRestoreRequest").msgclass
      end
    end
  end
end
