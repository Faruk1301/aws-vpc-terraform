# Public Subnet 01
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id # এখানে আপনার মেইন VPC রিসোর্সের নাম নিশ্চিত করুন
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true # পাবলিক সাবনেটের জন্য এটি জরুরি
  availability_zone       = "${var.aws_region}a"

  tags = {
    Name        = "${var.vpc_name}-public-1"
    Environment = var.environment
  }
}

# Public Subnet 02
resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "${var.aws_region}b"

  tags = {
    Name        = "${var.vpc_name}-public-2"
    Environment = var.environment
  }
}