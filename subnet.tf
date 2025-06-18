resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.existing.id
  cidr_block = "10.0.0.0/24"
}