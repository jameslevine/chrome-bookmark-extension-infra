terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.2.0"
    }
  }

  required_version = "~> 1.0"
}

provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source = "./modules/s3_bucket"
  prefix = "bookmarks-extension"
}

module "lambda" {
  source             = "./modules/lambda"
  name               = "bookmarks-extension"
  function_name      = "BookmarksExtension"
  handler_name       = "hello"
  lambda_bucket_name = module.s3_bucket.lambda_bucket_name
  lambda_path        = "."
}

module "api_gw" {
  source          = "./modules/api_gw"
  name            = "bookmarks_extension"
  integration_uri = module.lambda.invoke_arn
  method_routes = {
    hi = {
      method = "GET"
      route  = "/hi"
    }
    hello = {
      method = "GET"
      route  = "/hello"
    }
  }
  function_name = module.lambda.function_name
}
