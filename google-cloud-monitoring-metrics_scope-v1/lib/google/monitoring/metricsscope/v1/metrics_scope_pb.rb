# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/metricsscope/v1/metrics_scope.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n5google/monitoring/metricsscope/v1/metrics_scope.proto\x12!google.monitoring.metricsscope.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xbf\x02\n\x0cMetricsScope\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12T\n\x12monitored_projects\x18\x04 \x03(\x0b\x32\x33.google.monitoring.metricsscope.v1.MonitoredProjectB\x03\xe0\x41\x03:Z\xea\x41W\n&monitoring.googleapis.com/MetricsScope\x12-locations/global/metricsScope/{metrics_scope}\"\xcf\x01\n\x10MonitoredProject\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03:r\xea\x41o\n*monitoring.googleapis.com/MonitoredProject\x12\x41locations/global/metricsScopes/{metrics_scope}/projects/{project}B\x8f\x02\n%com.google.monitoring.metricsscope.v1B\x11MetricsScopeProtoP\x01ZOcloud.google.com/go/monitoring/metricsscope/apiv1/metricsscopepb;metricsscopepb\xaa\x02\'Google.Cloud.Monitoring.MetricsScope.V1\xca\x02\'Google\\Cloud\\Monitoring\\MetricsScope\\V1\xea\x02+Google::Cloud::Monitoring::MetricsScope::V1b\x06proto3"

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
    module Monitoring
      module MetricsScope
        module V1
          MetricsScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.metricsscope.v1.MetricsScope").msgclass
          MonitoredProject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.metricsscope.v1.MonitoredProject").msgclass
        end
      end
    end
  end
end
