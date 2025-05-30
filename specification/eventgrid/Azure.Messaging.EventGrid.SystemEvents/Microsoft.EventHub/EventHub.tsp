import "@typespec/versioning";
using TypeSpec.Versioning;
/** Describes the schema of the Azure EventHub events published to Azure Event Grid. This corresponds to the Data property of an EventGridEvent. */
namespace Microsoft.EventGrid.SystemEvents;

/** Schema of the Data property of an EventGridEvent for a Microsoft.EventHub.CaptureFileCreated event. */
model EventHubCaptureFileCreatedEventData {
  /** The path to the capture file. */
  fileUrl: string;

  /** The file type of the capture file. */
  fileType: string;

  /** The shard ID. */
  partitionId: string;

  /** The file size. */
  @madeRequired(ServiceApiVersions.v2024_01_01)
  sizeInBytes: int32;

  /** The number of events in the file. */
  @madeRequired(ServiceApiVersions.v2024_01_01)
  eventCount: int32;

  /** The smallest sequence number from the queue. */
  @madeRequired(ServiceApiVersions.v2024_01_01)
  firstSequenceNumber: int32;

  /** The last sequence number from the queue. */
  @madeRequired(ServiceApiVersions.v2024_01_01)
  lastSequenceNumber: int32;

  /** The first time from the queue. */
  @madeRequired(ServiceApiVersions.v2024_01_01)
  firstEnqueueTime: utcDateTime;

  /** The last time from the queue. */
  @madeRequired(ServiceApiVersions.v2024_01_01)
  lastEnqueueTime: utcDateTime;
}
