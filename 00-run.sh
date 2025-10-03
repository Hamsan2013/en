#!/bin/bash
set -e

# Install nginx
apt-get update
apt-get install -y nginx

# Remove default nginx page
rm -f /var/www/html/index.nginx-debian.html || true

# Copy Encosian site
cp /build/config/encosian_final_v3_auto_delete_buy_fixed.html /var/www/html/index.html
chown www-data:www-data /var/www/html/index.html

# Enable nginx at boot
systemctl enable nginx
