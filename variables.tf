
# Define policy ARNs as list
variable "iam_policy_arn" {
  description = "IAM Policy to be attached to role"
  type        = list(string)
}



variable "aws_region" {
  default     = "us-east-1"
  description = "AWS Region to deploy to"
}


variable "AccessKey" {
  default = "put your access key here"
}

variable "SecretAccessKey" {
  default = "put your secret access key here"
}