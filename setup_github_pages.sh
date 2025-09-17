#!/bin/bash

# GitHub Pages Setup Script
# This script helps configure GitHub Pages with custom domains

echo "🚀 GitHub Pages Custom Domain Setup"
echo "=================================="

# Check if CNAME file exists
if [ -f "CNAME" ]; then
    echo "✅ CNAME file found: $(cat CNAME)"
else
    echo "❌ CNAME file missing!"
    read -p "Enter your custom domain (e.g., example.com): " domain
    echo "$domain" > CNAME
    echo "✅ Created CNAME file with domain: $domain"
fi

# Check for common issues
echo ""
echo "🔍 Checking for common issues..."

# Check if CNAME contains multiple lines
if [ $(wc -l < CNAME) -gt 1 ]; then
    echo "⚠️  WARNING: CNAME file has multiple lines. Should contain only one domain."
fi

# Check if CNAME contains protocol
if grep -q "http" CNAME; then
    echo "⚠️  WARNING: CNAME should not contain http:// or https://"
fi

# Check if CNAME contains trailing slash
if grep -q "/" CNAME; then
    echo "⚠️  WARNING: CNAME should not contain trailing slashes"
fi

echo ""
echo "📝 Next steps:"
echo "1. Commit and push the CNAME file to your repository"
echo "2. Go to Settings > Pages in your GitHub repository"
echo "3. Select source branch (usually 'main' or 'gh-pages')"
echo "4. Configure your DNS records (see DNS_SETUP_GUIDE.md)"
echo "5. Wait for DNS propagation (up to 24 hours)"
echo "6. Enable 'Enforce HTTPS' after domain is verified"

echo ""
echo "🔧 Troubleshooting commands:"
echo "git add CNAME"
echo "git commit -m 'Add CNAME for custom domain'"
echo "git push origin main"