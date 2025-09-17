#!/bin/bash

# Domain Testing Script
if [ -z "$1" ]; then
    echo "Usage: $0 <your-domain.com>"
    exit 1
fi

DOMAIN=$1
echo "🔍 Testing domain: $DOMAIN"
echo "=========================="

echo "📡 DNS A Records:"
dig +short $DOMAIN A

echo ""
echo "�� CNAME Records (if www):"
dig +short www.$DOMAIN CNAME

echo ""
echo "🔒 Testing HTTPS:"
curl -I https://$DOMAIN 2>/dev/null | head -1

echo ""
echo "📝 GitHub Pages Check:"
curl -I https://$DOMAIN 2>/dev/null | grep -i server

echo ""
echo "⏰ DNS Propagation Check:"
echo "Visit: https://dnschecker.org/#A/$DOMAIN"
