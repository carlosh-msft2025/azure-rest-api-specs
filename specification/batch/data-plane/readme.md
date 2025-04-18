# Batch

> see https://aka.ms/autorest

This is the AutoRest configuration file for Batch.

---

## Getting Started

To build the SDK for Batch, simply [Install AutoRest](https://aka.ms/autorest/install) and in this folder, run:

> `autorest`

To see additional help and options, run:

> `autorest --help`

---

## Configuration

### Basic Information

These are the global settings for the Batch API.

``` yaml
title: BatchServiceClient
openapi-type: data-plane
tag: package-2024-07
```

### Tag: package-2024-07.20.0

These settings apply only when `--tag=package-2024-07.20.0` is specified on the command line.

```yaml $(tag) == 'package-2024-07.20.0-preview'
input-file:
  - Azure.Batch/preview/2024-07-01.20.0/BatchService.json
```

### Tag: package-2024-07

These settings apply only when `--tag=package-2024-07` is specified on the command line.

```yaml $(tag) == 'package-2024-07'
input-file:
  - Microsoft.Batch/stable/2024-07-01.20.0/BatchService.json
```

### Tag: package-2024-02.19.0-preview

These settings apply only when `--tag=package-2024-02.19.0-preview` is specified on the command line.

```yaml $(tag) == 'package-2024-02.19.0-preview'
input-file:
  - Azure.Batch/preview/2024-02-01.19.0/BatchService.json
```

### Tag: package-2024-02

These settings apply only when `--tag=package-2024-02` is specified on the command line.

```yaml $(tag) == 'package-2024-02'
input-file:
  - Microsoft.Batch/stable/2024-02-01.19.0/BatchService.json
```

### Tag: package-2023-11

These settings apply only when `--tag=package-2023-11` is specified on the command line.

```yaml $(tag) == 'package-2023-11'
input-file:
  - Microsoft.Batch/stable/2023-11-01.18.0/BatchService.json
```

### Tag: package-2023-05.17.0

These settings apply only when `--tag=package-2023-05.17.0` is specified on the command line.

``` yaml $(tag) == 'package-2023-05.17.0'
input-file:
  - Microsoft.Batch/stable/2023-05-01.17.0/BatchService.json
```

### Tag: package-2022-10.16.0

These settings apply only when `--tag=package-2022-10.16.0` is specified on the command line.

``` yaml $(tag) == 'package-2022-10.16.0'
input-file:
  - Microsoft.Batch/stable/2022-10-01.16.0/BatchService.json
```

### Tag: package-2022-01.15.0

These settings apply only when `--tag=package-2022-01.15.0` is specified on the command line.

``` yaml $(tag) == 'package-2022-01.15.0'
input-file:
- Microsoft.Batch/stable/2022-01-01.15.0/BatchService.json
```

### Tag: package-2021-06.14.0

These settings apply only when `--tag=package-2021-06.14.0` is specified on the command line.

``` yaml $(tag) == 'package-2021-06.14.0'
input-file:
- Microsoft.Batch/stable/2021-06-01.14.0/BatchService.json
```

### Tag: package-2020-09.12.0

These settings apply only when `--tag=package-2020-09.12.0` is specified on the command line.

``` yaml $(tag) == 'package-2020-09.12.0'
input-file:
- Microsoft.Batch/stable/2020-09-01.12.0/BatchService.json
```

### Tag: package-2020-03.11.0

These settings apply only when `--tag=package-2020-03.11.0` is specified on the command line.

``` yaml $(tag) == 'package-2020-03.11.0'
input-file:
- Microsoft.Batch/stable/2020-03-01.11.0/BatchService.json
```

### Tag: package-2019-08.10.0

These settings apply only when `--tag=package-2019-08.10.0` is specified on the command line.

``` yaml $(tag) == 'package-2019-08.10.0'
input-file:
- Microsoft.Batch/stable/2019-08-01.10.0/BatchService.json
```

### Tag: package-2019-06.9.0

These settings apply only when `--tag=package-2019-06.9.0` is specified on the command line.

``` yaml $(tag) == 'package-2019-06.9.0'
input-file:
- Microsoft.Batch/stable/2019-06-01.9.0/BatchService.json
```

### Tag: package-2018-12.8.0

These settings apply only when `--tag=package-2018-12.8.0` is specified on the command line.

``` yaml $(tag) == 'package-2018-12.8.0'
input-file:
- Microsoft.Batch/stable/2018-12-01.8.0/BatchService.json
```

### Tag: package-2018-08.7.0

These settings apply only when `--tag=package-2018-08.7.0` is specified on the command line.

``` yaml $(tag) == 'package-2018-08.7.0'
input-file:
- Microsoft.Batch/stable/2018-08-01.7.0/BatchService.json
```

### Tag: package-2018-03.6.1

These settings apply only when `--tag=package-2018-03.6.1` is specified on the command line.

``` yaml $(tag) == 'package-2018-03.6.1'
input-file:
- Microsoft.Batch/stable/2018-03-01.6.1/BatchService.json
```

### Tag: package-2017-09.6.0

These settings apply only when `--tag=package-2017-09.6.0` is specified on the command line.

``` yaml $(tag) == 'package-2017-09.6.0'
input-file:
- Microsoft.Batch/stable/2017-09-01.6.0/BatchService.json
```

### Tag: package-2017-06.5.1

These settings apply only when `--tag=package-2017-06.5.1` is specified on the command line.

``` yaml $(tag) == 'package-2017-06.5.1'
input-file:
- Microsoft.Batch/stable/2017-06-01.5.1/BatchService.json
```

## Suppression

Note that this setting should be removed once [this GitHub bug](https://github.com/Azure/azure-openapi-validator/issues/68) is fixed.

``` yaml
directive:
  - suppress: R1001
    where:
      - $.paths["/jobschedules/{jobScheduleId}/jobs"].get.operationId
    reason: Breaking change.

  - suppress: R1003
    where:
      - $.paths["/jobs/{jobId}/addtaskcollection"].post.operationId
    reason: Breaking change.

  - suppress: R1006
    where:
      - $.paths["/jobs/{jobId}"].put.operationId
      - $.paths["/jobs/{jobId}/tasks/{taskId}"].put.operationId
      - $.paths["/jobschedules/{jobScheduleId}"].put.operationId
      - $.paths["/pools/{poolId}/nodes/{nodeId}/users/{userName}"].put.operationId
    reason: Breaking change.

  - suppress: R1007
    where:
      - $.paths["/jobs/{jobId}"].patch.operationId
      - $.paths["/jobschedules/{jobScheduleId}"].patch.operationId
      - $.paths["/pools/{poolId}"].patch.operationId
    reason: Breaking change.

  - suppress: R2001
    where:
      - $.definitions.NodeFile.properties.properties
    reason: Breaking change.

  - suppress: R2004
    where:
      - $.paths["/jobs/{jobId}/tasks/{taskId}/files/{filePath}"].get.produces[1]
      - $.paths["/pools/{poolId}/nodes/{nodeId}/files/{filePath}"].get.produces[1]
      - $.paths["/pools/{poolId}/nodes/{nodeId}/rdp"].get.produces[1]
    reason: This is not an ARM API.

  - suppress: R2007
    where:
      - $.paths["/jobschedules/{jobScheduleId}"].delete
      - $.paths["/certificates(thumbprintAlgorithm={thumbprintAlgorithm},thumbprint={thumbprint})"].delete
      - $.paths["/jobschedules/{jobScheduleId}/terminate"].post
      - $.paths["/jobs/{jobId}"].delete
      - $.paths["/jobs/{jobId}/disable"].post
      - $.paths["/jobs/{jobId}/enable"].post
      - $.paths["/jobs/{jobId}/terminate"].post
      - $.paths["/pools/{poolId}"].delete
      - $.paths["/pools/{poolId}/resize"].post
      - $.paths["/pools/{poolId}/stopresize"].post
      - $.paths["/pools/{poolId}/removenodes"].post
      - $.paths["/pools/{poolId}/nodes/{nodeId}/reboot"].post
      - $.paths["/pools/{poolId}/nodes/{nodeId}/reimage"].post
      - $.paths["/pools/{poolId}/nodes/{nodeId}/start"].post
      - $.paths["/pools/{poolId}/nodes/{nodeId}/deallocate"].post
    reason: Service does not return 200, nor supply location header.

  - suppress: R2017
    where:
      - $.paths["/jobschedules/{jobScheduleId}"].put
      - $.paths["/jobs/{jobId}"].put
      - $.paths["/jobs/{jobId}/tasks/{taskId}"].put
      - $.paths["/pools/{poolId}/nodes/{nodeId}/users/{userName}"].put
    reason: Matching service response.

  - suppress: R2018 # XmsEnumValidation
    where:
      - $.definitions.AADToken.properties.type
    reason: Single-value enums are expressed to force the values to be used for de/serialization but should not be exposed or settable by the a client.

  - suppress: R2029
    where:
     - $.paths["/applications/{applicationId}"].get
     - $.paths["/jobs/{jobId}/tasks/{taskId}/subtasksinfo"].get
    reason: Not pageable.

  - suppress: R2054
    reason: The security definition already matches the required structure exactly.

  # Note that this setting should be removed once [this GitHub bug](https://github.com/Azure/azure-openapi-validator/issues/68) is fixed.
  - suppress: R2063
    reason: Bug in linter

  # Note that this setting should be removed once [this GitHub bug](https://github.com/Azure/azure-openapi-validator/issues/69) is fixed.
  - suppress: R2064
    reason: This is a data plane swagger specification, LRO's do not apply

  - suppress: R2066
    where:
      - $.paths["/certificates"].post.operationId
      - $.paths["/certificates(thumbprintAlgorithm={thumbprintAlgorithm},thumbprint={thumbprint})"].post.operationId
      - $.paths["/certificates(thumbprintAlgorithm={thumbprintAlgorithm},thumbprint={thumbprint})/canceldelete"].post.operationId
      - $.paths["/jobs"].post.operationId
      - $.paths["/jobschedules"].post.operationId
      - $.paths["/jobs/{jobId}/tasks"].post.operationId
      - $.paths["/jobs/{jobId}/addtaskcollection"].post.operationId
      - $.paths["/pools"].post.operationId
      - $.paths["/pools/{poolId}/nodes/{nodeId}/users"].post.operationId
    reason: This is fine as long as the OperationIds are all unique (as they presently are), and fixing it would likely involve a breaking change.

  - suppress: R3016
    where: $..["odata.nextLink"]
    reason: The casing of this property is not incorrect.

  - suppress: R3016
    where:
      - $..["publicFQDN"]
      - $.definitions.ImageInformation.properties.nodeAgentSKUId
      - $.definitions.JobStatistics.properties.kernelCPUTime
      - $.definitions.JobStatistics.properties.userCPUTime
      - $.definitions.JobScheduleStatistics.properties.kernelCPUTime
      - $.definitions.JobScheduleStatistics.properties.userCPUTime
      - $.definitions.PoolEndpointConfiguration.properties.inboundNATPools
      - $.definitions.ResourceStatistics.properties.avgCPUPercentage
      - $.definitions.TaskStatistics.properties.userCPUTime
      - $.definitions.TaskStatistics.properties.kernelCPUTime
      - $.definitions.VirtualMachineConfiguration.properties.nodeAgentSKUId
    reason: The suggested casing of this property is worse than the casing that we're using

  - suppress: R3018
    reason: This would be a big breaking change, and there are too many existing instances (over 100) to enumerate here.

  - suppress: R3023
    reason: This is not an ARM API.

  - suppress: R4007
    reason: We essentially are following the error schema, and this would be a big breaking change.

  - suppress: R4011
    where:
      - $.paths["/certificates(thumbprintAlgorithm={thumbprintAlgorithm},thumbprint={thumbprint})"].delete.responses
      - $.paths["/jobs/{jobId}/tasks/{taskId}/files/{filePath}"].delete.responses
      - $.paths["/pools/{poolId}/nodes/{nodeId}/files/{filePath}"].delete.responses
      - $.paths["/jobschedules/{jobScheduleId}"].delete.responses
      - $.paths["/jobs/{jobId}"].delete.responses
      - $.paths["/pools/{poolId}"].delete.responses
      - $.paths["/jobs/{jobId}/tasks/{taskId}"].delete.responses
      - $.paths["/pools/{poolId}/nodes/{nodeId}/users/{userName}"].delete.responses
    reason: These delete operations have the required responses. Looks like a bug with the validator.

suppressions:
 - code: OperationIdNounVerb
   from: BatchService.json
   reason: This rule is an ARM specific API validation rule and does not apply to data plane API validation.
 - code: LroExtension
   from: BatchService.json
   where: 
     - $.paths["/pools/{poolId}/nodes/{nodeId}/start"].post
     - $.paths["/pools/{poolId}/nodes/{nodeId}/deallocate"].post
     - $.paths["/certificates(thumbprintAlgorithm={thumbprintAlgorithm},thumbprint={thumbprint})"].delete
   reason: Service does not return 200, nor supply location header.

```

### Tag: package-2017-05.5.0

These settings apply only when `--tag=package-2017-05.5.0` is specified on the command line.

``` yaml $(tag) == 'package-2017-05.5.0'
input-file:
- Microsoft.Batch/stable/2017-05-01.5.0/BatchService.json
```

### Tag: package-2017-01.4.0

These settings apply only when `--tag=package-2017-01.4.0` is specified on the command line.

``` yaml $(tag) == 'package-2017-01.4.0'
input-file:
- Microsoft.Batch/stable/2017-01-01.4.0/BatchService.json
```

### Tag: package-2016-07.3.1

These settings apply only when `--tag=package-2016-07.3.1` is specified on the command line.

``` yaml $(tag) == 'package-2016-07.3.1'
input-file:
- Microsoft.Batch/stable/2016-07-01.3.1/BatchService.json
```

### Tag: package-2016-02.3.0

These settings apply only when `--tag=package-2016-02.3.0` is specified on the command line.

``` yaml $(tag) == 'package-2016-02.3.0'
input-file:
- Microsoft.Batch/stable/2016-02-01.3.0/BatchService.json
```

### Tag: package-2015-12.2.2

These settings apply only when `--tag=package-2015-12.2.2` is specified on the command line.

``` yaml $(tag) == 'package-2015-12.2.2'
input-file:
- Microsoft.Batch/stable/2015-12-01.2.2/BatchService.json
```

---

## Code Generation

## C#

These settings apply only when `--csharp` is specified on the command line.
Please also specify `--csharp-sdks-folder=<path to "SDKs" directory of your azure-sdk-for-net clone>`.

``` yaml $(csharp)
csharp:
  azure-arm: true
  license-header: MICROSOFT_MIT_NO_VERSION
  payload-flattening-threshold: 1
  namespace: Microsoft.Azure.Batch.Protocol
  output-folder: $(csharp-sdks-folder)/batch/Microsoft.Azure.Batch/src/GeneratedProtocol
  clear-output-folder: true
  client-side-validation: false
```

## Python

These settings apply only when `--python` is specified on the command line.
Please also specify `--python-sdks-folder=<path to the root directory of your azure-sdk-for-python clone>`.
Use `--python-mode=update` if you already have a setup.py and just want to update the code itself.

``` yaml $(python)
python-mode: create
python:
  azure-arm: true
  license-header: MICROSOFT_MIT_NO_VERSION
  payload-flattening-threshold: 2
  namespace: azure.batch
  package-name: azure-batch
  clear-output-folder: true
```

``` yaml $(python) && $(python-mode) == 'update'
python:
  no-namespace-folders: true
  output-folder: $(python-sdks-folder)/azure-batch/azure/batch
```

``` yaml $(python) && $(python-mode) == 'create'
python:
  basic-setup-py: true
  output-folder: $(python-sdks-folder)/azure-batch
```

## Go

See configuration in [readme.go.md](./readme.go.md)

## Java

These settings apply only when `--java` is specified on the command line.
Please also specify `--java-sdks-folder=<path to root folder of your azure-sdk-for-java repo>`.

``` yaml $(java) && $(openapi-type) == 'management-plane'
java:
  azure-arm: true
  license-header: MICROSOFT_MIT_NO_VERSION
  namespace: com.microsoft.azure.batch
  output-folder: $(java-sdks-folder)/sdk/batch/azure-resourcemanager-batch
  payload-flattening-threshold: 1
  generate-license-txt: true
  clear-output-folder: true
```

These settings apply only when `--java` is specified on the command line.
Please also specify `--java-sdks-folder=<path to root folder of your azure-sdk-for-java repo>`.

``` yaml $(java) && $(openapi-type) == 'data-plane'
java:
  azure-arm: true
  namespace: com.microsoft.azure.batch.protocol
  license-header: MICROSOFT_MIT_NO_CODEGEN
  payload-flattening-threshold: 1
  output-folder: $(java-sdks-folder)/sdk/batch/microsoft-azure-batch
```

## Multi-API/Profile support for AutoRest v3 generators

AutoRest V3 generators require the use of `--tag=all-api-versions` to select api files.

This block is updated by an automatic script. Edits may be lost!

``` yaml $(tag) == 'all-api-versions' /*autogenerated*/
# include the azure profile definitions from the standard location
require: $(this-folder)/../../../profiles/readme.md

# all the input files across all versions
input-file:
  - $(this-folder)/Microsoft.Batch/stable/2020-09-01.12.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2020-03-01.11.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2019-08-01.10.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2019-06-01.9.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2018-12-01.8.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2018-08-01.7.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2018-03-01.6.1/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2017-09-01.6.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2017-06-01.5.1/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2017-05-01.5.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2017-01-01.4.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2016-07-01.3.1/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2016-02-01.3.0/BatchService.json
  - $(this-folder)/Microsoft.Batch/stable/2015-12-01.2.2/BatchService.json

```

If there are files that should not be in the `all-api-versions` set,
uncomment the  `exclude-file` section below and add the file paths.

``` yaml $(tag) == 'all-api-versions'
#exclude-file: 
#  - $(this-folder)/Microsoft.Example/stable/2010-01-01/somefile.json
```
