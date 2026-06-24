module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 12.3"

  project_id  = var.project_id
  names       = ["first", "second"]
  prefix      = "my-unique-prefix"

  set_admin_roles = true
  admins = ["group:foo-admins@example.com"]

  versioning = {
    first = true
  }

  bucket_admins = {
    second = "user:spam@example.com,user:eggs@example.com"
  }
}
