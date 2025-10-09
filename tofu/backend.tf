terraform {
  backend "kubernetes" {
    secret_suffix = "chasestate"
  }
}

