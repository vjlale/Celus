# DNS Configuration Guide for GitHub Pages

## For Apex Domain (example.com)
Add these A records to your DNS provider:
```
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
```

## For WWW Subdomain (www.example.com)
Add a CNAME record:
```
CNAME: www -> your-username.github.io
```

## Verification Commands
Test your DNS setup:
```bash
# Check A records for apex domain
dig example.com A

# Check CNAME for www subdomain
dig www.example.com CNAME

# Check current DNS propagation
nslookup your-domain.com
```

## Common DNS Issues:
1. **TTL too high**: Set TTL to 300-3600 seconds for faster propagation
2. **Multiple A records**: Remove old A records pointing to different IPs
3. **Conflicting records**: Don't use both apex and www simultaneously
4. **CAA records**: If using CAA, include `letsencrypt.org` for HTTPS
