# GitHub Pages Custom Domain Troubleshooting Guide

## Common RESOLVER Errors and Solutions

### Error: "Domain's DNS record could not be retrieved"

**Causes:**
- DNS records not properly configured
- DNS propagation still in progress
- Incorrect A records or CNAME records

**Solutions:**
1. Verify DNS records are correctly set
2. Wait 24-48 hours for full DNS propagation
3. Use DNS checker tools to verify propagation globally
4. Clear your local DNS cache: `sudo systemctl flush-dns` (Linux)

### Error: "Domain does not resolve to the GitHub Pages server"

**Solutions:**
1. For apex domains, use these A records:
   - 185.199.108.153
   - 185.199.109.153
   - 185.199.110.153
   - 185.199.111.153

2. For www subdomains, use CNAME:
   - `www CNAME your-username.github.io`

### Error: "Both example.com and www.example.com cannot be used"

**Solution:**
- Choose either apex domain OR www subdomain, not both
- Set up redirects at your DNS provider if needed
- Update CNAME file to contain only one domain

### Error: "HTTPS not available"

**Solutions:**
1. Wait up to 1 hour after domain verification
2. Check CAA records allow Let's Encrypt: `letsencrypt.org`
3. Temporarily disable "Enforce HTTPS" then re-enable
4. Verify domain ownership in repository settings

### Error: "Username contains invalid characters"

**Solution:**
- GitHub usernames with dashes at start/end or consecutive dashes cause issues
- Change GitHub username to remove problematic characters
- Or use a different repository name

## Verification Commands

```bash
# Test DNS resolution
nslookup your-domain.com
dig your-domain.com

# Check GitHub Pages status
curl -I https://your-domain.com

# Verify HTTPS certificate
openssl s_client -connect your-domain.com:443 -servername your-domain.com
```

## Quick Fix Checklist

- [ ] CNAME file exists and contains only one domain
- [ ] CNAME file has no http/https prefix
- [ ] DNS A records point to GitHub's IPs
- [ ] No conflicting DNS records
- [ ] Repository is public (for free accounts)
- [ ] Pages source is configured correctly
- [ ] Domain ownership is verified
- [ ] HTTPS certificate has been issued

## Getting Help

If issues persist:
1. Check GitHub Pages status: https://www.githubstatus.com/
2. Contact your DNS provider for DNS issues
3. Use GitHub Community discussions
4. Check repository Settings > Pages for error messages