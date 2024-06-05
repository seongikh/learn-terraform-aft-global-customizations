data "aws_caller_identity" "current" {}

resource "time_static" "current" {}

resource "aws_s3_bucket" "bucket" {
  bucket = "aft-global-${data.aws_caller_identity.current.account_id}-${replace(lower("${time_static.current.rfc3339}"),":","-")}"
}