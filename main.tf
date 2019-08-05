provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}
resource "aws_vpc" "gamevpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "gamevpc"
  }
}
resource "aws_subnet" "public_game" {
  availability_zone = "${element(data.aws_availability_zones.azs)}"
  vpc_id     = "${aws_vpc.gamevpc.id}"
  cidr_block = "${var.subnet_cidr1}"

  tags = {
    Name = "public_game"
  }
}
resource "aws_subnet" "public_game2" {
  availability_zone = "${element(data.aws_availability_zones.azs)}"
  vpc_id     = "${aws_vpc.gamevpc.id}"
  cidr_block = "${var.subnet_cidr2}"

  tags = {
    Name = "public_game2"
  }
}
resource "aws_subnet" "private_game2" {
  availability_zone = "${element(data.aws_availability_zones.azs)}"
  vpc_id     = "${aws_vpc.gamevpc.id}"
  cidr_block = "${var.subnet_cidr3}"

  tags = {
    Name = "private_game2"
  }
}
resource "aws_subnet" "private_game" {
  availability_zone = "${element(data.aws_availability_zones.azs)}"
  vpc_id     = "${aws_vpc.gamevpc.id}"
  cidr_block = "${var.subnet_cidr4}"

  tags = {
    Name = "private_game"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.gamevpc.id}"

  tags = {
    Name = "gamevpc"
  }
}
