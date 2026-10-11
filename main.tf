data "aws_s3_buckets" "s3_buckets_lookup" {
  for_each = var.s3_buckets_lookup

  bucket_region = each.value.bucket_region
  max_buckets   = each.value.max_buckets
  prefix        = each.value.prefix
  region        = each.value.region
}

