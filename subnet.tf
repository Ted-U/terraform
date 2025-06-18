resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.existing.id
  cidr_block = var.vpc_cidr_block
}