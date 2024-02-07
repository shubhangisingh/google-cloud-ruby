# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/inventory/v1/key_dashboard_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/kms/v1/resources_pb'


descriptor_data = "\n9google/cloud/kms/inventory/v1/key_dashboard_service.proto\x12\x1dgoogle.cloud.kms.inventory.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/kms/v1/resources.proto\"\x8d\x01\n\x15ListCryptoKeysRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"f\n\x16ListCryptoKeysResponse\x12\x33\n\x0b\x63rypto_keys\x18\x01 \x03(\x0b\x32\x1e.google.cloud.kms.v1.CryptoKey\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\x9b\x02\n\x13KeyDashboardService\x12\xb2\x01\n\x0eListCryptoKeys\x12\x34.google.cloud.kms.inventory.v1.ListCryptoKeysRequest\x1a\x35.google.cloud.kms.inventory.v1.ListCryptoKeysResponse\"3\xda\x41\x06parent\x82\xd3\xe4\x93\x02$\x12\"/v1/{parent=projects/*}/cryptoKeys\x1aO\xca\x41\x1bkmsinventory.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc3\x01\n!com.google.cloud.kms.inventory.v1B\x18KeyDashboardServiceProtoP\x01Z?cloud.google.com/go/kms/inventory/apiv1/inventorypb;inventorypb\xf8\x01\x01\xaa\x02\x1dGoogle.Cloud.Kms.Inventory.V1\xca\x02\x1dGoogle\\Cloud\\Kms\\Inventory\\V1b\x06proto3"

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
    ["google.cloud.kms.v1.CryptoKey", "google/cloud/kms/v1/resources.proto"],
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
    module Kms
      module Inventory
        module V1
          ListCryptoKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.ListCryptoKeysRequest").msgclass
          ListCryptoKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.inventory.v1.ListCryptoKeysResponse").msgclass
        end
      end
    end
  end
end
