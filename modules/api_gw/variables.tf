variable "name" {
  description = "API Gateway name"
  type        = string
}

variable "integration_uri" {
  description = "API GW integration url. The lambda invoke url."
  type        = string
}

variable "method_routes" {
  description = "List of Route Methods and route paths as object"
  type        = map(object({ method = string, route = string }))
}

variable "function_name" {
  description = "Lambda function connected to API GW"
  type        = string
}
