# Terraform template for setting up AWS lambda function and attaching to a Step function
terraform {
  required_providers{
      aws ={
          version = "~> 3.0"
          source = "hashicorp/aws"
      }
  }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/home/jm/.aws/credentials"
  profile = "admin"
}

resource "aws_iam_role" "lambda-sfn-Role" {
  name = "lambda-sfn-Role"
  assume_role_policy = <<-EOF
  {
      "Version": "2012-10-17",
      "Statement": [
            {
              "Effect": "Allow",
              "Action": "sts:AssumeRole",
              "Principal": {
                  "Service": "lambda.amazonaws.com",
                  "Service": "states.amazonaws.com"
              },
              "Sid": ""
            }
      ]
  }
  EOF
  managed_policy_arns = [ "arn:aws:iam::aws:policy/service-role/AWSLambdaRole" ]
}

resource "aws_lambda_function" "myFunction" {
  function_name = "myLambdaFunc"
  handler = "lambdaPayload.handler"
  runtime = "python3.6"
  role = aws_iam_role.lambda-sfn-Role.arn
  filename = "lambdaPayload.zip"
}

resource "aws_sfn_state_machine" "my-step-func" {
  name = "my-state-machine"
  role_arn = aws_iam_role.lambda-sfn-Role.arn
  definition = <<-EOF
    {
      "Comment": "A basic step function",
      "StartAt": "BasicFunc",
      "States": {
        "BasicFunc": {
          "Type": "Task",
          "Resource": "${aws_lambda_function.myFunction.arn}",
          "End": true
        }
      }
    }
  EOF
}

