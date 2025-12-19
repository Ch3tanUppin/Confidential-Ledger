resource "aws_eks_cluster" "cluster" {
  name     = "fraud-eks"
  role_arn = "arn:aws:iam::123456789012:role/eks-role"
}
