output "s3_buckets_lookup_bucket_region" {
  description = "Map of bucket_region values across all s3_buckets_lookup, keyed the same as var.s3_buckets_lookup"
  value       = { for k, v in data.aws_s3_buckets.s3_buckets_lookup : k => v.bucket_region if v.bucket_region != null && length(v.bucket_region) > 0 }
}
output "s3_buckets_lookup_buckets" {
  description = "Map of buckets values across all s3_buckets_lookup, keyed the same as var.s3_buckets_lookup"
  value       = { for k, v in data.aws_s3_buckets.s3_buckets_lookup : k => v.buckets if v.buckets != null && length(v.buckets) > 0 }
}
output "s3_buckets_lookup_max_buckets" {
  description = "Map of max_buckets values across all s3_buckets_lookup, keyed the same as var.s3_buckets_lookup"
  value       = { for k, v in data.aws_s3_buckets.s3_buckets_lookup : k => v.max_buckets if v.max_buckets != null }
}
output "s3_buckets_lookup_prefix" {
  description = "Map of prefix values across all s3_buckets_lookup, keyed the same as var.s3_buckets_lookup"
  value       = { for k, v in data.aws_s3_buckets.s3_buckets_lookup : k => v.prefix if v.prefix != null && length(v.prefix) > 0 }
}
output "s3_buckets_lookup_region" {
  description = "Map of region values across all s3_buckets_lookup, keyed the same as var.s3_buckets_lookup"
  value       = { for k, v in data.aws_s3_buckets.s3_buckets_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

