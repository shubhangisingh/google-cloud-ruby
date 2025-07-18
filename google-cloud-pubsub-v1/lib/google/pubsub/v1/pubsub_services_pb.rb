# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/pubsub/v1/pubsub.proto for package 'Google.Cloud.PubSub.V1'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/pubsub/v1/pubsub_pb'

module Google
  module Cloud
    module PubSub
      module V1
        module Publisher
          # The service that an application uses to manipulate topics, and to send
          # messages to a topic.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.pubsub.v1.Publisher'

            # Creates the given topic with the given name. See the [resource name rules]
            # (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
            rpc :CreateTopic, ::Google::Cloud::PubSub::V1::Topic, ::Google::Cloud::PubSub::V1::Topic
            # Updates an existing topic by updating the fields specified in the update
            # mask. Note that certain properties of a topic are not modifiable.
            rpc :UpdateTopic, ::Google::Cloud::PubSub::V1::UpdateTopicRequest, ::Google::Cloud::PubSub::V1::Topic
            # Adds one or more messages to the topic. Returns `NOT_FOUND` if the topic
            # does not exist.
            rpc :Publish, ::Google::Cloud::PubSub::V1::PublishRequest, ::Google::Cloud::PubSub::V1::PublishResponse
            # Gets the configuration of a topic.
            rpc :GetTopic, ::Google::Cloud::PubSub::V1::GetTopicRequest, ::Google::Cloud::PubSub::V1::Topic
            # Lists matching topics.
            rpc :ListTopics, ::Google::Cloud::PubSub::V1::ListTopicsRequest, ::Google::Cloud::PubSub::V1::ListTopicsResponse
            # Lists the names of the attached subscriptions on this topic.
            rpc :ListTopicSubscriptions, ::Google::Cloud::PubSub::V1::ListTopicSubscriptionsRequest, ::Google::Cloud::PubSub::V1::ListTopicSubscriptionsResponse
            # Lists the names of the snapshots on this topic. Snapshots are used in
            # [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
            # which allow you to manage message acknowledgments in bulk. That is, you can
            # set the acknowledgment state of messages in an existing subscription to the
            # state captured by a snapshot.
            rpc :ListTopicSnapshots, ::Google::Cloud::PubSub::V1::ListTopicSnapshotsRequest, ::Google::Cloud::PubSub::V1::ListTopicSnapshotsResponse
            # Deletes the topic with the given name. Returns `NOT_FOUND` if the topic
            # does not exist. After a topic is deleted, a new topic may be created with
            # the same name; this is an entirely new topic with none of the old
            # configuration or subscriptions. Existing subscriptions to this topic are
            # not deleted, but their `topic` field is set to `_deleted-topic_`.
            rpc :DeleteTopic, ::Google::Cloud::PubSub::V1::DeleteTopicRequest, ::Google::Protobuf::Empty
            # Detaches a subscription from this topic. All messages retained in the
            # subscription are dropped. Subsequent `Pull` and `StreamingPull` requests
            # will return FAILED_PRECONDITION. If the subscription is a push
            # subscription, pushes to the endpoint will stop.
            rpc :DetachSubscription, ::Google::Cloud::PubSub::V1::DetachSubscriptionRequest, ::Google::Cloud::PubSub::V1::DetachSubscriptionResponse
          end

          Stub = Service.rpc_stub_class
        end
        module Subscriber
          # The service that an application uses to manipulate subscriptions and to
          # consume messages from a subscription via the `Pull` method or by
          # establishing a bi-directional stream using the `StreamingPull` method.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.pubsub.v1.Subscriber'

            # Creates a subscription to a given topic. See the [resource name rules]
            # (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
            # If the subscription already exists, returns `ALREADY_EXISTS`.
            # If the corresponding topic doesn't exist, returns `NOT_FOUND`.
            #
            # If the name is not provided in the request, the server will assign a random
            # name for this subscription on the same project as the topic, conforming
            # to the [resource name format]
            # (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The
            # generated name is populated in the returned Subscription object. Note that
            # for REST API requests, you must specify a name in the request.
            rpc :CreateSubscription, ::Google::Cloud::PubSub::V1::Subscription, ::Google::Cloud::PubSub::V1::Subscription
            # Gets the configuration details of a subscription.
            rpc :GetSubscription, ::Google::Cloud::PubSub::V1::GetSubscriptionRequest, ::Google::Cloud::PubSub::V1::Subscription
            # Updates an existing subscription by updating the fields specified in the
            # update mask. Note that certain properties of a subscription, such as its
            # topic, are not modifiable.
            rpc :UpdateSubscription, ::Google::Cloud::PubSub::V1::UpdateSubscriptionRequest, ::Google::Cloud::PubSub::V1::Subscription
            # Lists matching subscriptions.
            rpc :ListSubscriptions, ::Google::Cloud::PubSub::V1::ListSubscriptionsRequest, ::Google::Cloud::PubSub::V1::ListSubscriptionsResponse
            # Deletes an existing subscription. All messages retained in the subscription
            # are immediately dropped. Calls to `Pull` after deletion will return
            # `NOT_FOUND`. After a subscription is deleted, a new one may be created with
            # the same name, but the new one has no association with the old
            # subscription or its topic unless the same topic is specified.
            rpc :DeleteSubscription, ::Google::Cloud::PubSub::V1::DeleteSubscriptionRequest, ::Google::Protobuf::Empty
            # Modifies the ack deadline for a specific message. This method is useful
            # to indicate that more time is needed to process a message by the
            # subscriber, or to make the message available for redelivery if the
            # processing was interrupted. Note that this does not modify the
            # subscription-level `ackDeadlineSeconds` used for subsequent messages.
            rpc :ModifyAckDeadline, ::Google::Cloud::PubSub::V1::ModifyAckDeadlineRequest, ::Google::Protobuf::Empty
            # Acknowledges the messages associated with the `ack_ids` in the
            # `AcknowledgeRequest`. The Pub/Sub system can remove the relevant messages
            # from the subscription.
            #
            # Acknowledging a message whose ack deadline has expired may succeed,
            # but such a message may be redelivered later. Acknowledging a message more
            # than once will not result in an error.
            rpc :Acknowledge, ::Google::Cloud::PubSub::V1::AcknowledgeRequest, ::Google::Protobuf::Empty
            # Pulls messages from the server.
            rpc :Pull, ::Google::Cloud::PubSub::V1::PullRequest, ::Google::Cloud::PubSub::V1::PullResponse
            # Establishes a stream with the server, which sends messages down to the
            # client. The client streams acknowledgments and ack deadline modifications
            # back to the server. The server will close the stream and return the status
            # on any error. The server may close the stream with status `UNAVAILABLE` to
            # reassign server-side resources, in which case, the client should
            # re-establish the stream. Flow control can be achieved by configuring the
            # underlying RPC channel.
            rpc :StreamingPull, stream(::Google::Cloud::PubSub::V1::StreamingPullRequest), stream(::Google::Cloud::PubSub::V1::StreamingPullResponse)
            # Modifies the `PushConfig` for a specified subscription.
            #
            # This may be used to change a push subscription to a pull one (signified by
            # an empty `PushConfig`) or vice versa, or change the endpoint URL and other
            # attributes of a push subscription. Messages will accumulate for delivery
            # continuously through the call regardless of changes to the `PushConfig`.
            rpc :ModifyPushConfig, ::Google::Cloud::PubSub::V1::ModifyPushConfigRequest, ::Google::Protobuf::Empty
            # Gets the configuration details of a snapshot. Snapshots are used in
            # [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
            # which allow you to manage message acknowledgments in bulk. That is, you can
            # set the acknowledgment state of messages in an existing subscription to the
            # state captured by a snapshot.
            rpc :GetSnapshot, ::Google::Cloud::PubSub::V1::GetSnapshotRequest, ::Google::Cloud::PubSub::V1::Snapshot
            # Lists the existing snapshots. Snapshots are used in [Seek](
            # https://cloud.google.com/pubsub/docs/replay-overview) operations, which
            # allow you to manage message acknowledgments in bulk. That is, you can set
            # the acknowledgment state of messages in an existing subscription to the
            # state captured by a snapshot.
            rpc :ListSnapshots, ::Google::Cloud::PubSub::V1::ListSnapshotsRequest, ::Google::Cloud::PubSub::V1::ListSnapshotsResponse
            # Creates a snapshot from the requested subscription. Snapshots are used in
            # [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
            # which allow you to manage message acknowledgments in bulk. That is, you can
            # set the acknowledgment state of messages in an existing subscription to the
            # state captured by a snapshot.
            # If the snapshot already exists, returns `ALREADY_EXISTS`.
            # If the requested subscription doesn't exist, returns `NOT_FOUND`.
            # If the backlog in the subscription is too old -- and the resulting snapshot
            # would expire in less than 1 hour -- then `FAILED_PRECONDITION` is returned.
            # See also the `Snapshot.expire_time` field. If the name is not provided in
            # the request, the server will assign a random
            # name for this snapshot on the same project as the subscription, conforming
            # to the [resource name format]
            # (https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names). The
            # generated name is populated in the returned Snapshot object. Note that for
            # REST API requests, you must specify a name in the request.
            rpc :CreateSnapshot, ::Google::Cloud::PubSub::V1::CreateSnapshotRequest, ::Google::Cloud::PubSub::V1::Snapshot
            # Updates an existing snapshot by updating the fields specified in the update
            # mask. Snapshots are used in
            # [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
            # which allow you to manage message acknowledgments in bulk. That is, you can
            # set the acknowledgment state of messages in an existing subscription to the
            # state captured by a snapshot.
            rpc :UpdateSnapshot, ::Google::Cloud::PubSub::V1::UpdateSnapshotRequest, ::Google::Cloud::PubSub::V1::Snapshot
            # Removes an existing snapshot. Snapshots are used in [Seek]
            # (https://cloud.google.com/pubsub/docs/replay-overview) operations, which
            # allow you to manage message acknowledgments in bulk. That is, you can set
            # the acknowledgment state of messages in an existing subscription to the
            # state captured by a snapshot.
            # When the snapshot is deleted, all messages retained in the snapshot
            # are immediately dropped. After a snapshot is deleted, a new one may be
            # created with the same name, but the new one has no association with the old
            # snapshot or its subscription, unless the same subscription is specified.
            rpc :DeleteSnapshot, ::Google::Cloud::PubSub::V1::DeleteSnapshotRequest, ::Google::Protobuf::Empty
            # Seeks an existing subscription to a point in time or to a given snapshot,
            # whichever is provided in the request. Snapshots are used in [Seek]
            # (https://cloud.google.com/pubsub/docs/replay-overview) operations, which
            # allow you to manage message acknowledgments in bulk. That is, you can set
            # the acknowledgment state of messages in an existing subscription to the
            # state captured by a snapshot. Note that both the subscription and the
            # snapshot must be on the same topic.
            rpc :Seek, ::Google::Cloud::PubSub::V1::SeekRequest, ::Google::Cloud::PubSub::V1::SeekResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
