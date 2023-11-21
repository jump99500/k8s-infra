#########################
####    vpc          ####
#########################

resource "aws_vpc" "main" {
  count = var.create_vpc ? 1 : 0

  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = var.vpc_tags
}

#########################
####    subnet       ####
#########################

resource "aws_subnet" "public" {
  count = length(var.azs)

  vpc_id                  = aws_vpc.main[0].id
  availability_zone       = element(var.azs, count.index)
  cidr_block              = var.pub_subnet[count.index]
  map_public_ip_on_launch = true
  tags = merge(
    {
      Name = format("${var.name}-%s-%s",
        "pub", substr(var.azs[count.index], length(var.azs[count.index]) - 1, 1)
      ),
      "kubernetes.io/role/elb" = 1
    }
  )
}

#########################
####    gateway      ####
#########################

resource "aws_internet_gateway" "public" {
  count = var.create_pub_igw ? 1 : 0

  vpc_id = aws_vpc.main[0].id
  tags = {
    Name = format("${var.name}-%s", "igw")
  }
}

#########################
####    route table  ####
#########################

resource "aws_route_table" "public" {
  count = var.create_pub_rt ? 1 : 0

  vpc_id = aws_vpc.main[0].id
  tags = {
    Nmae = format("${var.name}-%s-%s", "pub", "rt")
  }
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public[0].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.public[0].id
}

resource "aws_route_table_association" "name" {
  count = length(var.pub_subnet)

  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public[0].id
}
