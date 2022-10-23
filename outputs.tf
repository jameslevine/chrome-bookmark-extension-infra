output "lambda_bucket_name" {
  description = "Name of the S3 bucket used to store function code."

  value = module.s3_bucket.lambda_bucket_name
}

output "function_name" {
  description = "Name of the Lambda function."

  value = module.lambda.function_name
}

output "base_url" {
  description = "Base URL for API Gateway stage."

  value = module.api_gw.base_url
}
