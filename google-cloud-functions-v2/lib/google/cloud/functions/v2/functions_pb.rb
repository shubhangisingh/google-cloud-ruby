# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/functions/v2/functions.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/any_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n)google/cloud/functions/v2/functions.proto\x12\x19google.cloud.functions.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x19google/protobuf/any.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x87\x07\n\x08\x46unction\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12<\n\x0c\x62uild_config\x18\x03 \x01(\x0b\x32&.google.cloud.functions.v2.BuildConfig\x12@\n\x0eservice_config\x18\x04 \x01(\x0b\x32(.google.cloud.functions.v2.ServiceConfig\x12>\n\revent_trigger\x18\x05 \x01(\x0b\x32\'.google.cloud.functions.v2.EventTrigger\x12=\n\x05state\x18\x06 \x01(\x0e\x32).google.cloud.functions.v2.Function.StateB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12?\n\x06labels\x18\x08 \x03(\x0b\x32/.google.cloud.functions.v2.Function.LabelsEntry\x12\x44\n\x0estate_messages\x18\t \x03(\x0b\x32\'.google.cloud.functions.v2.StateMessageB\x03\xe0\x41\x03\x12;\n\x0b\x65nvironment\x18\n \x01(\x0e\x32&.google.cloud.functions.v2.Environment\x12\x10\n\x03url\x18\x0e \x01(\tB\x03\xe0\x41\x03\x12<\n\x0ckms_key_name\x18\x19 \x01(\tB&\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"`\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x43TIVE\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\x12\r\n\tDEPLOYING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x0b\n\x07UNKNOWN\x10\x05:~\xea\x41{\n&cloudfunctions.googleapis.com/Function\x12<projects/{project}/locations/{location}/functions/{function}*\tfunctions2\x08\x66unction\"\xb9\x01\n\x0cStateMessage\x12\x42\n\x08severity\x18\x01 \x01(\x0e\x32\x30.google.cloud.functions.v2.StateMessage.Severity\x12\x0c\n\x04type\x18\x02 \x01(\t\x12\x0f\n\x07message\x18\x03 \x01(\t\"F\n\x08Severity\x12\x18\n\x14SEVERITY_UNSPECIFIED\x10\x00\x12\t\n\x05\x45RROR\x10\x01\x12\x0b\n\x07WARNING\x10\x02\x12\x08\n\x04INFO\x10\x03\"C\n\rStorageSource\x12\x0e\n\x06\x62ucket\x18\x01 \x01(\t\x12\x0e\n\x06object\x18\x02 \x01(\t\x12\x12\n\ngeneration\x18\x03 \x01(\x03\"\xa3\x01\n\nRepoSource\x12\x15\n\x0b\x62ranch_name\x18\x03 \x01(\tH\x00\x12\x12\n\x08tag_name\x18\x04 \x01(\tH\x00\x12\x14\n\ncommit_sha\x18\x05 \x01(\tH\x00\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x11\n\trepo_name\x18\x02 \x01(\t\x12\x0b\n\x03\x64ir\x18\x06 \x01(\t\x12\x14\n\x0cinvert_regex\x18\x07 \x01(\x08\x42\n\n\x08revision\"\x94\x01\n\x06Source\x12\x42\n\x0estorage_source\x18\x01 \x01(\x0b\x32(.google.cloud.functions.v2.StorageSourceH\x00\x12<\n\x0brepo_source\x18\x02 \x01(\x0b\x32%.google.cloud.functions.v2.RepoSourceH\x00\x42\x08\n\x06source\"\xa2\x01\n\x10SourceProvenance\x12I\n\x17resolved_storage_source\x18\x01 \x01(\x0b\x32(.google.cloud.functions.v2.StorageSource\x12\x43\n\x14resolved_repo_source\x18\x02 \x01(\x0b\x32%.google.cloud.functions.v2.RepoSource\"\xc7\x05\n\x0b\x42uildConfig\x12\x36\n\x05\x62uild\x18\x01 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1f\x63loudbuild.googleapis.com/Build\x12\x0f\n\x07runtime\x18\x02 \x01(\t\x12\x13\n\x0b\x65ntry_point\x18\x03 \x01(\t\x12\x31\n\x06source\x18\x04 \x01(\x0b\x32!.google.cloud.functions.v2.Source\x12K\n\x11source_provenance\x18\x08 \x01(\x0b\x32+.google.cloud.functions.v2.SourceProvenanceB\x03\xe0\x41\x03\x12>\n\x0bworker_pool\x18\x05 \x01(\tB)\xfa\x41&\n$cloudbuild.googleapis.com/WorkerPool\x12_\n\x15\x65nvironment_variables\x18\x06 \x03(\x0b\x32@.google.cloud.functions.v2.BuildConfig.EnvironmentVariablesEntry\x12N\n\x0f\x64ocker_registry\x18\n \x01(\x0e\x32\x35.google.cloud.functions.v2.BuildConfig.DockerRegistry\x12J\n\x11\x64ocker_repository\x18\x07 \x01(\tB/\xfa\x41,\n*artifactregistry.googleapis.com/Repository\x1a;\n\x19\x45nvironmentVariablesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"`\n\x0e\x44ockerRegistry\x12\x1f\n\x1b\x44OCKER_REGISTRY_UNSPECIFIED\x10\x00\x12\x16\n\x12\x43ONTAINER_REGISTRY\x10\x01\x12\x15\n\x11\x41RTIFACT_REGISTRY\x10\x02\"\xaa\n\n\rServiceConfig\x12\x33\n\x07service\x18\x01 \x01(\tB\"\xe0\x41\x03\xfa\x41\x1c\n\x1arun.googleapis.com/Service\x12\x17\n\x0ftimeout_seconds\x18\x02 \x01(\x05\x12\x18\n\x10\x61vailable_memory\x18\r \x01(\t\x12\x15\n\ravailable_cpu\x18\x16 \x01(\t\x12\x61\n\x15\x65nvironment_variables\x18\x04 \x03(\x0b\x32\x42.google.cloud.functions.v2.ServiceConfig.EnvironmentVariablesEntry\x12\x1a\n\x12max_instance_count\x18\x05 \x01(\x05\x12\x1a\n\x12min_instance_count\x18\x0c \x01(\x05\x12>\n\rvpc_connector\x18\x06 \x01(\tB\'\xfa\x41$\n\"vpcaccess.googleapis.com/Connector\x12j\n\x1dvpc_connector_egress_settings\x18\x07 \x01(\x0e\x32\x43.google.cloud.functions.v2.ServiceConfig.VpcConnectorEgressSettings\x12R\n\x10ingress_settings\x18\x08 \x01(\x0e\x32\x38.google.cloud.functions.v2.ServiceConfig.IngressSettings\x12\x10\n\x03uri\x18\t \x01(\tB\x03\xe0\x41\x03\x12\x1d\n\x15service_account_email\x18\n \x01(\t\x12&\n\x1e\x61ll_traffic_on_latest_revision\x18\x10 \x01(\x08\x12M\n\x1csecret_environment_variables\x18\x11 \x03(\x0b\x32\'.google.cloud.functions.v2.SecretEnvVar\x12?\n\x0esecret_volumes\x18\x13 \x03(\x0b\x32\'.google.cloud.functions.v2.SecretVolume\x12\x15\n\x08revision\x18\x12 \x01(\tB\x03\xe0\x41\x03\x12(\n max_instance_request_concurrency\x18\x14 \x01(\x05\x12N\n\x0esecurity_level\x18\x15 \x01(\x0e\x32\x36.google.cloud.functions.v2.ServiceConfig.SecurityLevel\x1a;\n\x19\x45nvironmentVariablesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"u\n\x1aVpcConnectorEgressSettings\x12-\n)VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED\x10\x00\x12\x17\n\x13PRIVATE_RANGES_ONLY\x10\x01\x12\x0f\n\x0b\x41LL_TRAFFIC\x10\x02\"x\n\x0fIngressSettings\x12 \n\x1cINGRESS_SETTINGS_UNSPECIFIED\x10\x00\x12\r\n\tALLOW_ALL\x10\x01\x12\x17\n\x13\x41LLOW_INTERNAL_ONLY\x10\x02\x12\x1b\n\x17\x41LLOW_INTERNAL_AND_GCLB\x10\x03\"W\n\rSecurityLevel\x12\x1e\n\x1aSECURITY_LEVEL_UNSPECIFIED\x10\x00\x12\x11\n\rSECURE_ALWAYS\x10\x01\x12\x13\n\x0fSECURE_OPTIONAL\x10\x02\"P\n\x0cSecretEnvVar\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x12\n\nproject_id\x18\x02 \x01(\t\x12\x0e\n\x06secret\x18\x03 \x01(\t\x12\x0f\n\x07version\x18\x04 \x01(\t\"\xbf\x01\n\x0cSecretVolume\x12\x12\n\nmount_path\x18\x01 \x01(\t\x12\x12\n\nproject_id\x18\x02 \x01(\t\x12\x0e\n\x06secret\x18\x03 \x01(\t\x12G\n\x08versions\x18\x04 \x03(\x0b\x32\x35.google.cloud.functions.v2.SecretVolume.SecretVersion\x1a.\n\rSecretVersion\x12\x0f\n\x07version\x18\x01 \x01(\t\x12\x0c\n\x04path\x18\x02 \x01(\t\"\x85\x04\n\x0c\x45ventTrigger\x12\x38\n\x07trigger\x18\x01 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1f\x65ventarc.googleapis.com/Trigger\x12\x16\n\x0etrigger_region\x18\x02 \x01(\t\x12\x17\n\nevent_type\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12=\n\revent_filters\x18\x04 \x03(\x0b\x32&.google.cloud.functions.v2.EventFilter\x12\x39\n\x0cpubsub_topic\x18\x05 \x01(\tB#\xe0\x41\x01\xfa\x41\x1d\n\x1bpubsub.googleapis.com/Topic\x12\"\n\x15service_account_email\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12N\n\x0cretry_policy\x18\x07 \x01(\x0e\x32\x33.google.cloud.functions.v2.EventTrigger.RetryPolicyB\x03\xe0\x41\x01\x12\x38\n\x07\x63hannel\x18\x08 \x01(\tB\'\xe0\x41\x01\xfa\x41!\n\x1f\x65ventarc.googleapis.com/Channel\"b\n\x0bRetryPolicy\x12\x1c\n\x18RETRY_POLICY_UNSPECIFIED\x10\x00\x12\x1d\n\x19RETRY_POLICY_DO_NOT_RETRY\x10\x01\x12\x16\n\x12RETRY_POLICY_RETRY\x10\x02\"P\n\x0b\x45ventFilter\x12\x16\n\tattribute\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05value\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08operator\x18\x03 \x01(\tB\x03\xe0\x41\x01\"R\n\x12GetFunctionRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&cloudfunctions.googleapis.com/Function\"\x9f\x01\n\x14ListFunctionsRequest\x12>\n\x06parent\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\x12&cloudfunctions.googleapis.com/Function\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"}\n\x15ListFunctionsResponse\x12\x36\n\tfunctions\x18\x01 \x03(\x0b\x32#.google.cloud.functions.v2.Function\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xa3\x01\n\x15\x43reateFunctionRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12:\n\x08\x66unction\x18\x02 \x01(\x0b\x32#.google.cloud.functions.v2.FunctionB\x03\xe0\x41\x02\x12\x13\n\x0b\x66unction_id\x18\x03 \x01(\t\"\x84\x01\n\x15UpdateFunctionRequest\x12:\n\x08\x66unction\x18\x01 \x01(\x0b\x32#.google.cloud.functions.v2.FunctionB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"U\n\x15\x44\x65leteFunctionRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&cloudfunctions.googleapis.com/Function\"\x93\x01\n\x18GenerateUploadUrlRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12<\n\x0ckms_key_name\x18\x02 \x01(\tB&\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\"q\n\x19GenerateUploadUrlResponse\x12\x12\n\nupload_url\x18\x01 \x01(\t\x12@\n\x0estorage_source\x18\x02 \x01(\x0b\x32(.google.cloud.functions.v2.StorageSource\"Z\n\x1aGenerateDownloadUrlRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&cloudfunctions.googleapis.com/Function\"3\n\x1bGenerateDownloadUrlResponse\x12\x14\n\x0c\x64ownload_url\x18\x01 \x01(\t\"`\n\x13ListRuntimesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\"\xae\x03\n\x14ListRuntimesResponse\x12I\n\x08runtimes\x18\x01 \x03(\x0b\x32\x37.google.cloud.functions.v2.ListRuntimesResponse.Runtime\x1a\xc9\x01\n\x07Runtime\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x05 \x01(\t\x12K\n\x05stage\x18\x02 \x01(\x0e\x32<.google.cloud.functions.v2.ListRuntimesResponse.RuntimeStage\x12\x10\n\x08warnings\x18\x03 \x03(\t\x12;\n\x0b\x65nvironment\x18\x04 \x01(\x0e\x32&.google.cloud.functions.v2.Environment\"\x7f\n\x0cRuntimeStage\x12\x1d\n\x19RUNTIME_STAGE_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x44\x45VELOPMENT\x10\x01\x12\t\n\x05\x41LPHA\x10\x02\x12\x08\n\x04\x42\x45TA\x10\x03\x12\x06\n\x02GA\x10\x04\x12\x0e\n\nDEPRECATED\x10\x05\x12\x12\n\x0e\x44\x45\x43OMMISSIONED\x10\x06\"\xb8\x02\n\x11OperationMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x0e\n\x06target\x18\x03 \x01(\t\x12\x0c\n\x04verb\x18\x04 \x01(\t\x12\x15\n\rstatus_detail\x18\x05 \x01(\t\x12\x18\n\x10\x63\x61ncel_requested\x18\x06 \x01(\x08\x12\x13\n\x0b\x61pi_version\x18\x07 \x01(\t\x12.\n\x10request_resource\x18\x08 \x01(\x0b\x32\x14.google.protobuf.Any\x12\x30\n\x06stages\x18\t \x03(\x0b\x32 .google.cloud.functions.v2.Stage\"P\n\x10LocationMetadata\x12<\n\x0c\x65nvironments\x18\x01 \x03(\x0e\x32&.google.cloud.functions.v2.Environment\"\xc4\x03\n\x05Stage\x12\x33\n\x04name\x18\x01 \x01(\x0e\x32%.google.cloud.functions.v2.Stage.Name\x12\x0f\n\x07message\x18\x02 \x01(\t\x12\x35\n\x05state\x18\x03 \x01(\x0e\x32&.google.cloud.functions.v2.Stage.State\x12\x10\n\x08resource\x18\x04 \x01(\t\x12\x14\n\x0cresource_uri\x18\x05 \x01(\t\x12?\n\x0estate_messages\x18\x06 \x03(\x0b\x32\'.google.cloud.functions.v2.StateMessage\"\x84\x01\n\x04Name\x12\x14\n\x10NAME_UNSPECIFIED\x10\x00\x12\x15\n\x11\x41RTIFACT_REGISTRY\x10\x01\x12\t\n\x05\x42UILD\x10\x02\x12\x0b\n\x07SERVICE\x10\x03\x12\x0b\n\x07TRIGGER\x10\x04\x12\x14\n\x10SERVICE_ROLLBACK\x10\x05\x12\x14\n\x10TRIGGER_ROLLBACK\x10\x06\"N\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0f\n\x0bNOT_STARTED\x10\x01\x12\x0f\n\x0bIN_PROGRESS\x10\x02\x12\x0c\n\x08\x43OMPLETE\x10\x03*@\n\x0b\x45nvironment\x12\x1b\n\x17\x45NVIRONMENT_UNSPECIFIED\x10\x00\x12\t\n\x05GEN_1\x10\x01\x12\t\n\x05GEN_2\x10\x02\x32\xaa\x0e\n\x0f\x46unctionService\x12\x9f\x01\n\x0bGetFunction\x12-.google.cloud.functions.v2.GetFunctionRequest\x1a#.google.cloud.functions.v2.Function\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v2/{name=projects/*/locations/*/functions/*}\x12\xb2\x01\n\rListFunctions\x12/.google.cloud.functions.v2.ListFunctionsRequest\x1a\x30.google.cloud.functions.v2.ListFunctionsResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v2/{parent=projects/*/locations/*}/functions\x12\x95\x02\n\x0e\x43reateFunction\x12\x30.google.cloud.functions.v2.CreateFunctionRequest\x1a\x1d.google.longrunning.Operation\"\xb1\x01\xca\x41Q\n\"google.cloud.functions.v2.Function\x12+google.cloud.functions.v2.OperationMetadata\xda\x41\x1bparent,function,function_id\x82\xd3\xe4\x93\x02\x39\"-/v2/{parent=projects/*/locations/*}/functions:\x08\x66unction\x12\x97\x02\n\x0eUpdateFunction\x12\x30.google.cloud.functions.v2.UpdateFunctionRequest\x1a\x1d.google.longrunning.Operation\"\xb3\x01\xca\x41Q\n\"google.cloud.functions.v2.Function\x12+google.cloud.functions.v2.OperationMetadata\xda\x41\x14\x66unction,update_mask\x82\xd3\xe4\x93\x02\x42\x32\x36/v2/{function.name=projects/*/locations/*/functions/*}:\x08\x66unction\x12\xe7\x01\n\x0e\x44\x65leteFunction\x12\x30.google.cloud.functions.v2.DeleteFunctionRequest\x1a\x1d.google.longrunning.Operation\"\x83\x01\xca\x41\x44\n\x15google.protobuf.Empty\x12+google.cloud.functions.v2.OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02/*-/v2/{name=projects/*/locations/*/functions/*}\x12\xca\x01\n\x11GenerateUploadUrl\x12\x33.google.cloud.functions.v2.GenerateUploadUrlRequest\x1a\x34.google.cloud.functions.v2.GenerateUploadUrlResponse\"J\x82\xd3\xe4\x93\x02\x44\"?/v2/{parent=projects/*/locations/*}/functions:generateUploadUrl:\x01*\x12\xd2\x01\n\x13GenerateDownloadUrl\x12\x35.google.cloud.functions.v2.GenerateDownloadUrlRequest\x1a\x36.google.cloud.functions.v2.GenerateDownloadUrlResponse\"L\x82\xd3\xe4\x93\x02\x46\"A/v2/{name=projects/*/locations/*/functions/*}:generateDownloadUrl:\x01*\x12\xae\x01\n\x0cListRuntimes\x12..google.cloud.functions.v2.ListRuntimesRequest\x1a/.google.cloud.functions.v2.ListRuntimesResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v2/{parent=projects/*/locations/*}/runtimes\x1aQ\xca\x41\x1d\x63loudfunctions.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xee\x07\n\x1d\x63om.google.cloud.functions.v2B\x0e\x46unctionsProtoP\x01Z;cloud.google.com/go/functions/apiv2/functionspb;functionspb\xa2\x02\x03GCF\xea\x41o\n*artifactregistry.googleapis.com/Repository\x12\x41projects/{project}/locations/{location}/repositories/{repository}\xea\x41Y\n\x1f\x63loudbuild.googleapis.com/Build\x12\x36projects/{project}/locations/{location}/builds/{build}\xea\x41i\n$cloudbuild.googleapis.com/WorkerPool\x12\x41projects/{project}/locations/{location}/workerPools/{worker_pool}\xea\x41X\n\x1arun.googleapis.com/Service\x12:projects/{project}/locations/{location}/services/{service}\xea\x41\x64\n\"vpcaccess.googleapis.com/Connector\x12>projects/{project}/locations/{location}/connectors/{connector}\xea\x41]\n\x1f\x65ventarc.googleapis.com/Trigger\x12:projects/{project}/locations/{location}/triggers/{trigger}\xea\x41]\n\x1f\x65ventarc.googleapis.com/Channel\x12:projects/{project}/locations/{location}/channels/{channel}\xea\x41@\n\x1bpubsub.googleapis.com/Topic\x12!projects/{project}/topics/{topic}\xea\x41x\n!cloudkms.googleapis.com/CryptoKey\x12Sprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Any", "google/protobuf/any.proto"],
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
    module Functions
      module V2
        Function = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.Function").msgclass
        Function::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.Function.State").enummodule
        StateMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.StateMessage").msgclass
        StateMessage::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.StateMessage.Severity").enummodule
        StorageSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.StorageSource").msgclass
        RepoSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.RepoSource").msgclass
        Source = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.Source").msgclass
        SourceProvenance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.SourceProvenance").msgclass
        BuildConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.BuildConfig").msgclass
        BuildConfig::DockerRegistry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.BuildConfig.DockerRegistry").enummodule
        ServiceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ServiceConfig").msgclass
        ServiceConfig::VpcConnectorEgressSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ServiceConfig.VpcConnectorEgressSettings").enummodule
        ServiceConfig::IngressSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ServiceConfig.IngressSettings").enummodule
        ServiceConfig::SecurityLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ServiceConfig.SecurityLevel").enummodule
        SecretEnvVar = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.SecretEnvVar").msgclass
        SecretVolume = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.SecretVolume").msgclass
        SecretVolume::SecretVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.SecretVolume.SecretVersion").msgclass
        EventTrigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.EventTrigger").msgclass
        EventTrigger::RetryPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.EventTrigger.RetryPolicy").enummodule
        EventFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.EventFilter").msgclass
        GetFunctionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.GetFunctionRequest").msgclass
        ListFunctionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ListFunctionsRequest").msgclass
        ListFunctionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ListFunctionsResponse").msgclass
        CreateFunctionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.CreateFunctionRequest").msgclass
        UpdateFunctionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.UpdateFunctionRequest").msgclass
        DeleteFunctionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.DeleteFunctionRequest").msgclass
        GenerateUploadUrlRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.GenerateUploadUrlRequest").msgclass
        GenerateUploadUrlResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.GenerateUploadUrlResponse").msgclass
        GenerateDownloadUrlRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.GenerateDownloadUrlRequest").msgclass
        GenerateDownloadUrlResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.GenerateDownloadUrlResponse").msgclass
        ListRuntimesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ListRuntimesRequest").msgclass
        ListRuntimesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ListRuntimesResponse").msgclass
        ListRuntimesResponse::Runtime = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ListRuntimesResponse.Runtime").msgclass
        ListRuntimesResponse::RuntimeStage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.ListRuntimesResponse.RuntimeStage").enummodule
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.OperationMetadata").msgclass
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.LocationMetadata").msgclass
        Stage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.Stage").msgclass
        Stage::Name = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.Stage.Name").enummodule
        Stage::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.Stage.State").enummodule
        Environment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.functions.v2.Environment").enummodule
      end
    end
  end
end
