# terraform-provider-dataset

The DataSet Terraform Provider allows you to provision assets within DataSet.

# Build and Install

[Golang is required](https://go.dev/doc/install).

	git clone git@github.com:scalyr/terraform-provider-dataset
	go build 
	mkdir -p ~/.terraform.d/plugins
	cp terraform-provider-dataset ~/.terraform.d/plugins/
	
# Provider Configuration

Different tokens are required for different resources. Having a `write_config_token` and a `write_log_token` will allow every resource.

## Schema

### Optional

- `endpoint` (String) DataSet Server
- `read_config_token` (String) DataSet ReadConfig API Token
- `read_log_token` (String) DataSet ReadLog API Token
- `write_config_token` (String) DataSet WriteConfig API Token
- `write_log_token` (String) DataSet WriteLog API Token

You can also utilize the following environment variables:

- `DATASET_SERVER` (String) DataSet Endpoint/Server
- `DATASET_READCONFIG_TOKEN` (String) DataSet ReadConfig API Token
- `DATASET_READLOG_TOKEN` (String) DataSet ReadLog API Token
- `DATASET_WRITECONFIG_TOKEN` (String) DataSet WriteConfig API Token
- `DATASET_WRITELOG_TOKEN` (String) DataSet WriteLog API Token

# Resources

## scalyr_file

Create a DataSet Configuration file.

### Schema

#### Required

- `content` (String)
- `path` (String)

#### Read-Only

- `create_date` (String)
- `id` (String) The ID of this resource.
- `mod_date` (String)
- `version` (Number)

## scalyr_event

Send an event to DataSet

### Schema

#### Optional

- `attributes` (Map of String)
- `message` (String)
- `parser` (String)

#### Read-Only

- `id` (String) The ID of this resource.

# Data Sources

## data scalyr_file

Read contents of a DataSet Configuration.

### Schema

#### Required

- `path` (String)

#### Read-Only

- `content` (String)
- `create_date` (String)
- `id` (String) The ID of this resource.
- `mod_date` (String)
- `version` (Number)

## data scalyr_query

Perform a query and assert on results.

### Schema

#### Required

- `query` (String)

#### Optional

- `end_time` (String)
- `expected_count` (Number)
- `max_count` (Number)
- `query_type` (String)
- `retry_count` (Number)
- `retry_wait` (Number)
- `start_time` (String)

#### Read-Only

- `id` (String) The ID of this resource.
- `results` (List of Map of String)

## data scalyr_teams

Read all teams available to the configured token.

### Schema

#### Read-Only

- `id` (String) The ID of this resource.
- `teams` (Set of String)


# Examples

Available in [examples](./example)
