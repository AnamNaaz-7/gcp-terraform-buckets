module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 12.3"

  project_id  = var.project_id
  names       = ["first", "second"]
  prefix      = "anam-unique-bucket"

  set_admin_roles = true
  admins = ["group:anamnaaz607@gmail.com"]

  versioning = {
    first = true
  }

  bucket_admins = {
    second = "user:spam@example.com,user:eggs@example.com"
  }
}
