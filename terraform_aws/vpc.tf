resource "aws_vpc" "samir" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "samir-vpc"
  }
}


resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.samir.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "samir-subnet"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.samir.id

  tags = {
    Name = "samir-igw"
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.samir.id

  route {
    cidr_block = "0.0.0.0/0" //default igw entry
    gateway_id = aws_internet_gateway.gw.id
  }


  tags = {
    Name = "samir-route-table"
  }
}

resource "aws_route_table_association" "subnet_route-table" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.route_table.id
}

# resource "aws_route_table_association" "igw-route-table" {
#   gateway_id = aws_internet_gateway.gw.id
#   route_table_id = aws_route_table.route-table.id
# }