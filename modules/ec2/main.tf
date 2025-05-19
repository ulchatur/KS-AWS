resource "aws_instance" "ec2_instance" {
  count = length(var.subnet_ids)

  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_ids[count.index]
  key_name       = var.key_name
  security_groups = [var.security_group_id]
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install java-17-amazon-corretto -y
              sudo yum install git -y

              # Install SonarQube
              mkdir -p /opt/sonarqube
              cd /opt/sonarqube
              wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.0.0.68432.zip
              unzip sonarqube-10.0.0.68432.zip
              mv sonarqube-10.0.0.68432/* .
              rm -rf sonarqube-10.0.0.68432 sonarqube-10.0.0.68432.zip
              chown -R ec2-user:ec2-user /opt/sonarqube
              sudo -u ec2-user /opt/sonarqube/bin/linux-x86-64/sonar.sh start

  EOF

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}

