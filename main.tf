resource "aws_macie2_account" "macie" {
  finding_publishing_frequency = "FIFTEEN_MINUTES"
  status                       = "ENABLED"
}

resource "aws_macie2_findings_filter" "macie_findings_filter" {
  name        = "Region Related"
  description = "Region Related Findings"
  position    = 1
  action      = "ARCHIVE"
  finding_criteria {
    criterion {
      field = "region"
      eq    = [var.region]
    }
  }
  depends_on = [aws_macie2_account.macie]
}



resource "aws_macie_s3_bucket_association" "macie_s3_bucket" {
  bucket_name = "ukhsa-${var.stage}-${var.log-bucket-name}"
  prefix      = "macie/data"

  classification_type {
    one_time = "FULL"
  }
}