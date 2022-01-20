resource "aws_lb" "pet-alb" {
  name               = "alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]
  subnets            = aws_subnet.pubsubnet.*.id

  enable_deletion_protection = true

  tags = {
    Name = "${var.envname}-alb"
  }
}
