#!/bin/bash
set -euxo pipefail

# Install Apache web server
dnf install -y httpd

# Create a simple HTML webpage
cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Website</title>
</head>
<body>
    <h1>Hello from AWS EC2!</h1>
    <h2>Infrastructure created using Terraform</h2>
    <p>Operating System: Amazon Linux 2023</p>
    <p>Web Server: Apache</p>
    <p>Project: AWS Infrastructure Automation</p>
</body>
</html>
EOF

# Start Apache
systemctl enable --now httpd
