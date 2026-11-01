terraform {
  backend "s3" {
    bucket       = "terraform-state-naveenraj4519-040954566628"
    key          = "dev/terraform.tfstate"
    region       = "ap-southeast-2"
    profile      = "terraform-new"
    encrypt      = true
    use_lockfile = true
  }
}
