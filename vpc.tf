provider	"aws" {
	access_key = "AKIAILCP632VQZGQAGFA"
	secret_key = "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"
	region 	= "ap-south-1"
}

resource "aws_vpc" "main" {
  cidr_block = "172.160.0.0/16"
  instance_tenancy = "default"

	tags {
		Name = "rahul"
		Location = "Pune"
	}
}


resource "aws_subnet" "public_subnet" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "172.160.1.0/24"
  availability_zone	= "ap-south-1a"
  tags {
    Name = "public"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "172.160.2.0/24"
  availability_zone	= "ap-south-1b"
  tags {
    Name = "private"
  }
}

