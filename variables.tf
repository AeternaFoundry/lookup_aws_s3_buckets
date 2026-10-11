variable "s3_buckets_lookup" {
  description = <<EOT
Map of s3_buckets_lookup, attributes below
Optional:
    - bucket_region
    - max_buckets
    - prefix
    - region
EOT

  type = map(object({
    bucket_region = optional(string)
    max_buckets   = optional(number)
    prefix        = optional(string)
    region        = optional(string)
  }))
}

