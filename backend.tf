terraform {
  backend "s3" {
    bucket         = "rizk-statefile"    #created by manual
    key            = "terrafrom.tfstate" #  path files
    region         = "us-east-1"
    profile        = "MrizkTerraform"
    dynamodb_table = "terraform_lock"
  }
}