variable "name" {
  description = "Folder name and zip file name."
  type        = string
}

variable "function_name" {
  description = "Lambda function name"
  type        = string
}

variable "handler_name" {
  description = "Handler name"
  type        = string
}

variable "lambda_bucket_name" {
  description = "s3 bucket created for lambda"
  type        = string
}

variable "lambda_path" {
  description = "Relative path to lambda directory"
  type        = string
}
