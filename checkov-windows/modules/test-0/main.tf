resource "aws_eks_cluster" "test" {
  name     = "test"
  role_arn = "test_role"
  vpc_config {
    subnet_ids = ["a", "b", "c"]
  }
}

module "test" {
  source      = "../test-1"
}
