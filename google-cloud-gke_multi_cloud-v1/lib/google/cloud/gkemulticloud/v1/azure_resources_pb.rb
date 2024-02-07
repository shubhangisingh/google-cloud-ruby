# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkemulticloud/v1/azure_resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkemulticloud/v1/common_resources_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/date_pb'


descriptor_data = "\n3google/cloud/gkemulticloud/v1/azure_resources.proto\x12\x1dgoogle.cloud.gkemulticloud.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x34google/cloud/gkemulticloud/v1/common_resources.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x16google/type/date.proto\"\xd5\x0c\n\x0c\x41zureCluster\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x19\n\x0c\x61zure_region\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x1e\n\x11resource_group_id\x18\x11 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x0c\x61zure_client\x18\x10 \x01(\tB\x03\xe0\x41\x01\x12N\n\nnetworking\x18\x04 \x01(\x0b\x32\x35.google.cloud.gkemulticloud.v1.AzureClusterNetworkingB\x03\xe0\x41\x02\x12L\n\rcontrol_plane\x18\x05 \x01(\x0b\x32\x30.google.cloud.gkemulticloud.v1.AzureControlPlaneB\x03\xe0\x41\x02\x12M\n\rauthorization\x18\x06 \x01(\x0b\x32\x31.google.cloud.gkemulticloud.v1.AzureAuthorizationB\x03\xe0\x41\x02\x12\x66\n\x1d\x61zure_services_authentication\x18\x16 \x01(\x0b\x32:.google.cloud.gkemulticloud.v1.AzureServicesAuthenticationB\x03\xe0\x41\x01\x12\x45\n\x05state\x18\x07 \x01(\x0e\x32\x31.google.cloud.gkemulticloud.v1.AzureCluster.StateB\x03\xe0\x41\x03\x12\x15\n\x08\x65ndpoint\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\t \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0breconciling\x18\n \x01(\x08\x42\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x0c\n\x04\x65tag\x18\r \x01(\t\x12V\n\x0b\x61nnotations\x18\x0e \x03(\x0b\x32<.google.cloud.gkemulticloud.v1.AzureCluster.AnnotationsEntryB\x03\xe0\x41\x01\x12\\\n\x18workload_identity_config\x18\x12 \x01(\x0b\x32\x35.google.cloud.gkemulticloud.v1.WorkloadIdentityConfigB\x03\xe0\x41\x03\x12#\n\x16\x63luster_ca_certificate\x18\x13 \x01(\tB\x03\xe0\x41\x03\x12\x38\n\x05\x66leet\x18\x14 \x01(\x0b\x32$.google.cloud.gkemulticloud.v1.FleetB\x03\xe0\x41\x02\x12T\n\x11managed_resources\x18\x15 \x01(\x0b\x32\x34.google.cloud.gkemulticloud.v1.AzureClusterResourcesB\x03\xe0\x41\x03\x12I\n\x0elogging_config\x18\x17 \x01(\x0b\x32,.google.cloud.gkemulticloud.v1.LoggingConfigB\x03\xe0\x41\x01\x12\x45\n\x06\x65rrors\x18\x18 \x03(\x0b\x32\x30.google.cloud.gkemulticloud.v1.AzureClusterErrorB\x03\xe0\x41\x03\x12O\n\x11monitoring_config\x18\x19 \x01(\x0b\x32/.google.cloud.gkemulticloud.v1.MonitoringConfigB\x03\xe0\x41\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"u\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x10\n\x0cPROVISIONING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\x0f\n\x0bRECONCILING\x10\x03\x12\x0c\n\x08STOPPING\x10\x04\x12\t\n\x05\x45RROR\x10\x05\x12\x0c\n\x08\x44\x45GRADED\x10\x06:u\xea\x41r\n)gkemulticloud.googleapis.com/AzureCluster\x12\x45projects/{project}/locations/{location}/azureClusters/{azure_cluster}\"\xb7\x01\n\x16\x41zureClusterNetworking\x12\x1f\n\x12virtual_network_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12$\n\x17pod_address_cidr_blocks\x18\x02 \x03(\tB\x03\xe0\x41\x02\x12(\n\x1bservice_address_cidr_blocks\x18\x03 \x03(\tB\x03\xe0\x41\x02\x12,\n\x1fservice_load_balancer_subnet_id\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\xa2\x06\n\x11\x41zureControlPlane\x12\x14\n\x07version\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tsubnet_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x14\n\x07vm_size\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x46\n\nssh_config\x18\x0b \x01(\x0b\x32-.google.cloud.gkemulticloud.v1.AzureSshConfigB\x03\xe0\x41\x02\x12J\n\x0broot_volume\x18\x04 \x01(\x0b\x32\x30.google.cloud.gkemulticloud.v1.AzureDiskTemplateB\x03\xe0\x41\x01\x12J\n\x0bmain_volume\x18\x05 \x01(\x0b\x32\x30.google.cloud.gkemulticloud.v1.AzureDiskTemplateB\x03\xe0\x41\x01\x12X\n\x13\x64\x61tabase_encryption\x18\n \x01(\x0b\x32\x36.google.cloud.gkemulticloud.v1.AzureDatabaseEncryptionB\x03\xe0\x41\x01\x12J\n\x0cproxy_config\x18\x0c \x01(\x0b\x32/.google.cloud.gkemulticloud.v1.AzureProxyConfigB\x03\xe0\x41\x01\x12T\n\x11\x63onfig_encryption\x18\x0e \x01(\x0b\x32\x34.google.cloud.gkemulticloud.v1.AzureConfigEncryptionB\x03\xe0\x41\x01\x12M\n\x04tags\x18\x07 \x03(\x0b\x32:.google.cloud.gkemulticloud.v1.AzureControlPlane.TagsEntryB\x03\xe0\x41\x01\x12P\n\x12replica_placements\x18\r \x03(\x0b\x32/.google.cloud.gkemulticloud.v1.ReplicaPlacementB\x03\xe0\x41\x01\x12\x1f\n\x12\x65ndpoint_subnet_id\x18\x0f \x01(\tB\x03\xe0\x41\x01\x1a+\n\tTagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"P\n\x10ReplicaPlacement\x12\x16\n\tsubnet_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12$\n\x17\x61zure_availability_zone\x18\x02 \x01(\tB\x03\xe0\x41\x02\"@\n\x10\x41zureProxyConfig\x12\x19\n\x11resource_group_id\x18\x01 \x01(\t\x12\x11\n\tsecret_id\x18\x02 \x01(\t\".\n\x17\x41zureDatabaseEncryption\x12\x13\n\x06key_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"E\n\x15\x41zureConfigEncryption\x12\x13\n\x06key_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\npublic_key\x18\x03 \x01(\tB\x03\xe0\x41\x01\"*\n\x11\x41zureDiskTemplate\x12\x15\n\x08size_gib\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\"\x85\x04\n\x0b\x41zureClient\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x16\n\ttenant_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0e\x61pplication_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0breconciling\x18\t \x01(\x08\x42\x03\xe0\x41\x03\x12U\n\x0b\x61nnotations\x18\x08 \x03(\x0b\x32;.google.cloud.gkemulticloud.v1.AzureClient.AnnotationsEntryB\x03\xe0\x41\x01\x12\x1c\n\x0fpem_certificate\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:r\xea\x41o\n(gkemulticloud.googleapis.com/AzureClient\x12\x43projects/{project}/locations/{location}/azureClients/{azure_client}\"\xac\x01\n\x12\x41zureAuthorization\x12I\n\x0b\x61\x64min_users\x18\x01 \x03(\x0b\x32/.google.cloud.gkemulticloud.v1.AzureClusterUserB\x03\xe0\x41\x01\x12K\n\x0c\x61\x64min_groups\x18\x02 \x03(\x0b\x32\x30.google.cloud.gkemulticloud.v1.AzureClusterGroupB\x03\xe0\x41\x01\"R\n\x1b\x41zureServicesAuthentication\x12\x16\n\ttenant_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0e\x61pplication_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\")\n\x10\x41zureClusterUser\x12\x15\n\x08username\x18\x01 \x01(\tB\x03\xe0\x41\x02\"\'\n\x11\x41zureClusterGroup\x12\x12\n\x05group\x18\x01 \x01(\tB\x03\xe0\x41\x02\"\xff\x08\n\rAzureNodePool\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x07version\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x43\n\x06\x63onfig\x18\x16 \x01(\x0b\x32..google.cloud.gkemulticloud.v1.AzureNodeConfigB\x03\xe0\x41\x02\x12\x16\n\tsubnet_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12Q\n\x0b\x61utoscaling\x18\x04 \x01(\x0b\x32\x37.google.cloud.gkemulticloud.v1.AzureNodePoolAutoscalingB\x03\xe0\x41\x02\x12\x46\n\x05state\x18\x06 \x01(\x0e\x32\x32.google.cloud.gkemulticloud.v1.AzureNodePool.StateB\x03\xe0\x41\x03\x12\x10\n\x03uid\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0breconciling\x18\t \x01(\x08\x42\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x0c\n\x04\x65tag\x18\x0c \x01(\t\x12W\n\x0b\x61nnotations\x18\r \x03(\x0b\x32=.google.cloud.gkemulticloud.v1.AzureNodePool.AnnotationsEntryB\x03\xe0\x41\x01\x12R\n\x13max_pods_constraint\x18\x15 \x01(\x0b\x32\x30.google.cloud.gkemulticloud.v1.MaxPodsConstraintB\x03\xe0\x41\x02\x12$\n\x17\x61zure_availability_zone\x18\x17 \x01(\tB\x03\xe0\x41\x01\x12\x46\n\x06\x65rrors\x18\x1d \x03(\x0b\x32\x31.google.cloud.gkemulticloud.v1.AzureNodePoolErrorB\x03\xe0\x41\x03\x12K\n\nmanagement\x18\x1e \x01(\x0b\x32\x32.google.cloud.gkemulticloud.v1.AzureNodeManagementB\x03\xe0\x41\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"u\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x10\n\x0cPROVISIONING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\x0f\n\x0bRECONCILING\x10\x03\x12\x0c\n\x08STOPPING\x10\x04\x12\t\n\x05\x45RROR\x10\x05\x12\x0c\n\x08\x44\x45GRADED\x10\x06:\x98\x01\xea\x41\x94\x01\n*gkemulticloud.googleapis.com/AzureNodePool\x12\x66projects/{project}/locations/{location}/azureClusters/{azure_cluster}/azureNodePools/{azure_node_pool}\"/\n\x13\x41zureNodeManagement\x12\x18\n\x0b\x61uto_repair\x18\x01 \x01(\x08\x42\x03\xe0\x41\x01\"\xaf\x05\n\x0f\x41zureNodeConfig\x12\x14\n\x07vm_size\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12J\n\x0broot_volume\x18\x02 \x01(\x0b\x32\x30.google.cloud.gkemulticloud.v1.AzureDiskTemplateB\x03\xe0\x41\x01\x12K\n\x04tags\x18\x03 \x03(\x0b\x32\x38.google.cloud.gkemulticloud.v1.AzureNodeConfig.TagsEntryB\x03\xe0\x41\x01\x12\x17\n\nimage_type\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12\x46\n\nssh_config\x18\x07 \x01(\x0b\x32-.google.cloud.gkemulticloud.v1.AzureSshConfigB\x03\xe0\x41\x02\x12J\n\x0cproxy_config\x18\t \x01(\x0b\x32/.google.cloud.gkemulticloud.v1.AzureProxyConfigB\x03\xe0\x41\x01\x12T\n\x11\x63onfig_encryption\x18\x0c \x01(\x0b\x32\x34.google.cloud.gkemulticloud.v1.AzureConfigEncryptionB\x03\xe0\x41\x01\x12=\n\x06taints\x18\n \x03(\x0b\x32(.google.cloud.gkemulticloud.v1.NodeTaintB\x03\xe0\x41\x01\x12O\n\x06labels\x18\x0b \x03(\x0b\x32:.google.cloud.gkemulticloud.v1.AzureNodeConfig.LabelsEntryB\x03\xe0\x41\x01\x1a+\n\tTagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"T\n\x18\x41zureNodePoolAutoscaling\x12\x1b\n\x0emin_node_count\x18\x01 \x01(\x05\x42\x03\xe0\x41\x02\x12\x1b\n\x0emax_node_count\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\"\xd6\x01\n\x11\x41zureOpenIdConfig\x12\x0e\n\x06issuer\x18\x01 \x01(\t\x12\x10\n\x08jwks_uri\x18\x02 \x01(\t\x12 \n\x18response_types_supported\x18\x03 \x03(\t\x12\x1f\n\x17subject_types_supported\x18\x04 \x03(\t\x12-\n%id_token_signing_alg_values_supported\x18\x05 \x03(\t\x12\x18\n\x10\x63laims_supported\x18\x06 \x03(\t\x12\x13\n\x0bgrant_types\x18\x07 \x03(\t\"D\n\x10\x41zureJsonWebKeys\x12\x30\n\x04keys\x18\x01 \x03(\x0b\x32\".google.cloud.gkemulticloud.v1.Jwk\"\xfe\x01\n\x11\x41zureServerConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12J\n\x0evalid_versions\x18\x02 \x03(\x0b\x32\x32.google.cloud.gkemulticloud.v1.AzureK8sVersionInfo\x12\x1f\n\x17supported_azure_regions\x18\x03 \x03(\t:n\xea\x41k\n.gkemulticloud.googleapis.com/AzureServerConfig\x12\x39projects/{project}/locations/{location}/azureServerConfig\"\xb6\x01\n\x13\x41zureK8sVersionInfo\x12\x0f\n\x07version\x18\x01 \x01(\t\x12\x14\n\x07\x65nabled\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x12\x18\n\x0b\x65nd_of_life\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x30\n\x10\x65nd_of_life_date\x18\x05 \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x01\x12,\n\x0crelease_date\x18\x06 \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x01\"-\n\x0e\x41zureSshConfig\x12\x1b\n\x0e\x61uthorized_key\x18\x01 \x01(\tB\x03\xe0\x41\x02\"y\n\x15\x41zureClusterResources\x12&\n\x19network_security_group_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x38\n+control_plane_application_security_group_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\"$\n\x11\x41zureClusterError\x12\x0f\n\x07message\x18\x01 \x01(\t\"%\n\x12\x41zureNodePoolError\x12\x0f\n\x07message\x18\x01 \x01(\tB\xe6\x01\n!com.google.cloud.gkemulticloud.v1B\x13\x41zureResourcesProtoP\x01ZGcloud.google.com/go/gkemulticloud/apiv1/gkemulticloudpb;gkemulticloudpb\xaa\x02\x1dGoogle.Cloud.GkeMultiCloud.V1\xca\x02\x1dGoogle\\Cloud\\GkeMultiCloud\\V1\xea\x02 Google::Cloud::GkeMultiCloud::V1b\x06proto3"

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
    ["google.cloud.gkemulticloud.v1.WorkloadIdentityConfig", "google/cloud/gkemulticloud/v1/common_resources.proto"],
    ["google.type.Date", "google/type/date.proto"],
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
    module GkeMultiCloud
      module V1
        AzureCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureCluster").msgclass
        AzureCluster::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureCluster.State").enummodule
        AzureClusterNetworking = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureClusterNetworking").msgclass
        AzureControlPlane = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureControlPlane").msgclass
        ReplicaPlacement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.ReplicaPlacement").msgclass
        AzureProxyConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureProxyConfig").msgclass
        AzureDatabaseEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureDatabaseEncryption").msgclass
        AzureConfigEncryption = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureConfigEncryption").msgclass
        AzureDiskTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureDiskTemplate").msgclass
        AzureClient = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureClient").msgclass
        AzureAuthorization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureAuthorization").msgclass
        AzureServicesAuthentication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureServicesAuthentication").msgclass
        AzureClusterUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureClusterUser").msgclass
        AzureClusterGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureClusterGroup").msgclass
        AzureNodePool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureNodePool").msgclass
        AzureNodePool::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureNodePool.State").enummodule
        AzureNodeManagement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureNodeManagement").msgclass
        AzureNodeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureNodeConfig").msgclass
        AzureNodePoolAutoscaling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureNodePoolAutoscaling").msgclass
        AzureOpenIdConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureOpenIdConfig").msgclass
        AzureJsonWebKeys = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureJsonWebKeys").msgclass
        AzureServerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureServerConfig").msgclass
        AzureK8sVersionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureK8sVersionInfo").msgclass
        AzureSshConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureSshConfig").msgclass
        AzureClusterResources = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureClusterResources").msgclass
        AzureClusterError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureClusterError").msgclass
        AzureNodePoolError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkemulticloud.v1.AzureNodePoolError").msgclass
      end
    end
  end
end
