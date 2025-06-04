  # Fix the file downloads: invalid swagger for file downloads
    .definitions."domain.DownloadItem"."type"="string"
  | .definitions."domain.DownloadItem"."format"="binary"
  | .paths."/intel/entities/report-files/v1"."get"."responses"."200"."schema"={"$ref": "#/definitions/domain.DownloadItem"}
  | .paths."/intel/entities/rules-latest-files/v1"."get"."responses"."200"."schema"={"$ref": "#/definitions/domain.DownloadItem"}
  | .paths."/intel/entities/rules-files/v1"."get"."responses"."200"."schema"={"$ref": "#/definitions/domain.DownloadItem"}
  | .paths."/real-time-response/entities/extracted-file-contents/v1"."get"."responses"."200"."schema"={"$ref": "#/definitions/domain.DownloadItem"}
  # Fix overflow on json number (more than 63 bits are neede hold this field)
  | .definitions."domain.APIEvaluationLogicItemV1".properties.id."x-go-type"={type: "Number", import: {package: "encoding/json"}, hints: {noValidation: true}}
  # Rename msaspec.Error back to msa.APIError. These are two names for the same type.
  | walk(
    if type == "object" and has("$ref") and ."$ref" == "#/definitions/msaspec.Error" then ."$ref" = "#/definitions/msa.APIError" else . end
    | if type == "object" and has("$ref") and ."$ref" == "#/definitions/msaspec.MetaInfo" then ."$ref" = "#/definitions/msa.MetaInfo" else . end
    )
  | del(.definitions."msaspec.Error")
  # Rename msaspec.Paging to msa.Paging. These are two names for the same type.
  | walk(
    if type == "object" and has("$ref") and ."$ref" == "#/definitions/msaspec.Paging" then ."$ref" = "#/definitions/msa.Paging" else . end
    )
  | del(.definitions."msaspec.Paging")
  | .definitions."domain.RuleMetaInfo".properties.pagination."$ref" = "#/definitions/msa.Paging"
  | .definitions."domain.MsaMetaInfo".properties.pagination."$ref" = "#/definitions/msa.Paging"
  # Rename msaspec.MetaInfo to msa.MetaInfo. These are two names for the same type.
  | del(.definitions."msaspec.MetaInfo")

  # Misc fixes
  | .paths."/intel/entities/rules-latest-files/v1".get.parameters |= . + [{type: "string", description: "Download Only if changed since", name: "If-Modified-Since", "in": "header"}]
  | .paths."/intel/entities/rules-latest-files/v1".get.responses."304" = {description: "Not Modified"}
  | .paths."/oauth2/token".post.responses."201".headers["X-CS-Region"] = {type: "string"}
  | .paths."/policy/queries/sensor-update-kernels/{distinct_field}/v1" = .paths."/policy/queries/sensor-update-kernels/{distinct-field}/v1"
  | del(.paths."/policy/queries/sensor-update-kernels/{distinct-field}/v1")
  | .paths."/policy/queries/sensor-update-kernels/{distinct_field}/v1".get.parameters[0].name = "distinct_field"

  # IOA Rule Groups Combined API has incorrect swagger response object: list of ids instead of list of objects
  | .paths."/ioarules/queries/rule-groups-full/v1".get.responses."200" = .paths."/ioarules/entities/rule-groups/v1".get.responses."200"
  | .paths."/policy/entities/ioa-exclusions/v1".post.responses."201" = .paths."/policy/entities/ioa-exclusions/v1".post.responses."200"
  | del(.paths."/policy/entities/ioa-exclusions/v1".post.responses."200")

  # Add response code "202" to "/devices/entities/devices/tags/v1" endpoint
  | .paths."/devices/entities/devices/tags/v1".patch.responses."202" = .paths."/devices/entities/devices/tags/v1".patch.responses."200"


  # CGP should be Gcp
  | .paths."/cloud-connect-gcp/entities/account/v1".get.operationId = "GetD4CGcpAccount"
  | .paths."/cloud-connect-gcp/entities/account/v1".post.operationId = "CreateD4CGcpAccount"
  | .paths."/cloud-connect-gcp/entities/user-scripts/v1".get.operationId = "GetD4CGcpUserScripts"

  # Rename spotlight-vulnerabilities and spotlight-evaluation-logic collections back to vulnerabilities & vulnerabilities-evaluation-logic
  # looks like spotlight is staying to reverting it again... keeping this code incase it can be used some other time.
  # | walk(
  #     if type == "object" and .tags and (.tags | index("spotlight-vulnerabilities")) then
  #       .tags |= map(gsub("spotlight-vulnerabilities"; "vulnerabilities"))
  #     elif type == "object" and .tags and (.tags | index("spotlight-evaluation-logic")) then
  #       .tags |= map(gsub("spotlight-evaluation-logic"; "vulnerabilities-evaluation-logic"))
  #     else
  #       .
  #     end
  #   )

  # Revert msaspec.QueryResponse back to msa.QueryResponse for falconcomplete-dashboard
  | if .paths."/falcon-complete-dashboards/queries/alerts/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/alerts/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end
  | if .paths."/falcon-complete-dashboards/queries/devicecount-collections/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/devicecount-collections/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end
  | if .paths."/falcon-complete-dashboards/queries/allowlist/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/allowlist/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end
  | if .paths."/falcon-complete-dashboards/queries/blocklist/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/blocklist/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end
  | if .paths."/falcon-complete-dashboards/queries/detects/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/detects/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end
  | if .paths."/falcon-complete-dashboards/queries/escalations/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/escalations/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end
  | if .paths."/falcon-complete-dashboards/queries/incidents/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/incidents/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end
  | if .paths."/falcon-complete-dashboards/queries/remediations/v1".get.responses."200".schema."$ref" = "#/definitions/msaspec.QueryResponse" then .paths."/falcon-complete-dashboards/queries/remediations/v1".get.responses."200".schema |= {"$ref": "#/definitions/msa.QueryResponse"} else . end

  # Revert changes.GetChangesResponse back to public.GetChangesResponse for filevantage
  | if .paths."/filevantage/entities/changes/v2".get.responses."200".schema."$ref" = "#/definitions/changes.GetChangesResponse" then
      .paths."/filevantage/entities/changes/v2".get.responses."200".schema = {"$ref": "#/definitions/public.GetChangesResponse"}
      |.definitions."public.GetChangesResponse" = .definitions."changes.GetChangesResponse"
      |del(.definitions."changes.GetChangesResponse") else . end

  # Make message-center use consistent return type
  | if .paths."/message-center/aggregates/cases/GET/v1".post.responses."403".schema."$ref" = "#/definitions/msa.ReplyMetaOnly" then
      .paths."/message-center/aggregates/cases/GET/v1".post.responses."403".schema = {"$ref": "#/definitions/msaspec.ResponseFields"}
    else . end

  # Custom Storage "custom-type" rename
  | .definitions."CustomStorageObjectKeys" = .definitions."CustomType_1255839303"
  | del(.definitions."CustomType_1255839303")
  | if .paths."/customobjects/v1/collections/{collection_name}/objects".get.responses."200".schema."$ref" = "#/definitions/CustomType_1255839303" then
      .paths."/customobjects/v1/collections/{collection_name}/objects".get.responses."200".schema = {"$ref": "#/definitions/CustomStorageObjectKeys"}  else . end

  | .definitions."CustomStorageResponse" = .definitions."CustomType_3191042536"
  | del(.definitions."CustomType_3191042536")
  | if .paths."/customobjects/v1/collections/{collection_name}/objects".post.responses."200".schema."$ref" = "#/definitions/CustomType_3191042536" then
      .paths."/customobjects/v1/collections/{collection_name}/objects".post.responses."200".schema = {"$ref": "#/definitions/CustomStorageResponse"}  else . end
  | if .paths."/customobjects/v1/collections/{collection_name}/objects/{object_key}".put.responses."200".schema."$ref" = "#/definitions/CustomType_3191042536" then
      .paths."/customobjects/v1/collections/{collection_name}/objects/{object_key}".put.responses."200".schema = {"$ref": "#/definitions/CustomStorageResponse"}  else . end
  | if .paths."/customobjects/v1/collections/{collection_name}/objects/{object_key}".delete.responses."200".schema."$ref" = "#/definitions/CustomType_3191042536" then
      .paths."/customobjects/v1/collections/{collection_name}/objects/{object_key}".delete.responses."200".schema = {"$ref": "#/definitions/CustomStorageResponse"}  else . end
  | if .paths."/customobjects/v1/collections/{collection_name}/objects/{object_key}/metadata".get.responses."200".schema."$ref" = "#/definitions/CustomType_3191042536" then
      .paths."/customobjects/v1/collections/{collection_name}/objects/{object_key}/metadata".get.responses."200".schema = {"$ref": "#/definitions/CustomStorageResponse"}  else . end

  # Allow an empty string be passed to assignment_rule
  | .definitions."host_groups.UpdateGroupReqV1".properties.assignment_rule += {"x-nullable": true}

  # Allow expiration to be nullable
  | .definitions."api.IndicatorCreateReqV1".properties.expiration += {"x-nullable": true}

  # 202 is a valid response for /real-time-response/entities/scripts/v1 patch
  | .paths."/real-time-response/entities/scripts/v1".patch.responses."202" = .paths."/real-time-response/entities/scripts/v1".patch.responses."200"
  | del(.paths."/real-time-response/entities/scripts/v1".patch.responses."200")

  # 200 is a valid response from /real-time-response/entities/queued-sessions/command/v1
  | .paths."/real-time-response/entities/queued-sessions/command/v1".delete.responses."200" = .paths."/real-time-response/entities/put-files/v1".delete.responses."200"

  # last_seen and first_seen should be a string
  | .definitions."models.Container".properties.first_seen.type = "string"
  | .definitions."models.Container".properties.last_seen.type = "string"

  # device_control.USBClassExceptionsResponse and device_control.USBClassExceptionsReqV1 enum should have BLOCK_EXECUTE in it
  | .definitions."device_control.USBClassExceptionsResponse".properties.action.enum += ["BLOCK_EXECUTE"]
  | .definitions."device_control.USBClassExceptionsReqV1".properties.action.enum += ["BLOCK_EXECUTE"]

  # apidomain.SavedSearchExecuteRequestV1 has parameters listed twice
  | del(.definitions."apidomain.SavedSearchExecuteRequestV1".properties.parameters)

  # add text/csv to produces for /reports/entities/report-executions-download/v1
  | .paths."/reports/entities/report-executions-download/v1".get.produces += ["text/csv"]

  # Update the summary and description for /reports/entities/report-executions-download/v1
  | .paths."/reports/entities/report-executions-download/v1".get.summary = "Get report entity download. Returns either a JSON object or a CSV string."

  # Update /reports/entities/report-executions-download/v1 to be of type Object for now. In the future it will get changed
  # to a binary download, so we can treat it the same as sensor download. See below:
    # JIRA: https://jira.cs.sys/browse/PLATFORMPG-787321
    # | .paths."/reports/entities/report-executions-download/v1".get.responses."200".schema = {
    #   "$ref": "#/definitions/domain.DownloadItem"
    # }
  | .paths."/reports/entities/report-executions-download/v1".get.responses."200".schema = {
      "type": "object",
      "description": "The response can be either a JSON object or a string containing CSV data. When the response is JSON, it will be a structured object. When the response is CSV, it will be returned as a raw string."
    }

  # Deal with reduntant use of api in tags
  | .paths."/csdownloads/entities/files/download/v1".get.tags = ["downloads"]
  | .paths."/billing-dashboards-usage/aggregates/weekly-average/v1".get.tags = ["sensor-usage"]
  | .paths."/iac/entities/image-registry-credentials/v1".get.tags = ["cspg-iac"]

  # Fix CGP -> GCP :facepalm:
  | .paths."/cloud-connect-cspm-gcp/entities/account/v1".get.operationId = "GetCSPMGCPAccount"

  # Might be a Ruby'ism or generator constraint - but this is inline also with azure and aws
  | .paths |= with_entries(
    if .key | startswith("/cloud-connect-cspm-gcp") then
      .value |= walk(
        if type == "string" then
          gsub("CSPMGCP"; "CSPMGcp")
        else
          .
        end
      )
    else
      .
    end
  )

  # Mark 'hash' property to avoid recursion in hash method
  | walk(
      if type == "object" and has("properties") and (.properties | has("hash")) then
        .properties.hash["x-is-hash-attribute"] = true
      else
        .
      end
    )

  # Rename 'object_id' property to avoid conflicts with Ruby's core method
  | walk(
      if type == "object" and has("properties") and (.properties | has("object_id")) then
        .properties.obj_id = .properties.object_id |
        del(.properties.object_id)
      else
        .
      end
    )
