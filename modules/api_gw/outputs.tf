output "base_url" {
  description = "Base URL for API Gateway stage."

  value = aws_apigatewayv2_stage.lambda.invoke_url
}

output "api_gw_id" {
  description = "API GW id"

  value = aws_apigatewayv2_api.lambda.id
}

output "integration_id" {
  description = "API GW id"

  value = aws_apigatewayv2_integration.hello_world.id
}
