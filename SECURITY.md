# Security Guidelines for REIMAGINE

This document outlines security best practices for using and deploying the REIMAGINE AI Streamer application.

## 🔒 API Key Security

### Never Commit API Keys
- **NEVER** commit `config.js` to version control
- **NEVER** hardcode API keys in source code
- **ALWAYS** use the provided template system

### Proper API Key Management
1. **Get your API key** from [Daydream API Key Generator](https://app.daydream.live/beta/api-key)
2. **Copy the template**: `cp config.template.js config.js`
3. **Update config.js** with your actual API key
4. **Verify** that `config.js` is in `.gitignore`

### API Key Format
- Daydream API keys start with `sk_`
- They are typically 64+ characters long
- Keep them secure and never share them publicly

## 🛡️ File Security

### Protected Files
The following files are automatically ignored by Git:
- `config.js` - Contains your actual API key
- `*.env*` - Environment variable files
- `*secret*` - Any files with "secret" in the name
- `*key*` - Any files with "key" in the name
- `*credential*` - Any files with "credential" in the name
- `*password*` - Any files with "password" in the name

### Safe Files to Commit
- `config.template.js` - Template with placeholder values
- `index.html` - Main application (no sensitive data)
- `README.md` - Documentation
- `package.json` - Project metadata

## 🔐 Deployment Security

### Local Development
1. Use the template system for configuration
2. Never commit actual API keys
3. Test with placeholder values first
4. Use environment variables when possible

### Production Deployment
1. **Environment Variables**: Use server-side environment variables
2. **HTTPS Only**: Always serve over HTTPS in production
3. **API Key Rotation**: Regularly rotate your API keys
4. **Access Control**: Limit who has access to production API keys

### GitHub Pages Deployment
- GitHub Pages is safe for this application
- No server-side processing means no API key exposure
- Users must provide their own API keys

## ⚠️ Security Warnings

### What NOT to Do
- ❌ Don't hardcode API keys in HTML files
- ❌ Don't commit `config.js` to version control
- ❌ Don't share API keys in screenshots or videos
- ❌ Don't use the same API key across multiple projects
- ❌ Don't store API keys in client-side code

### What TO Do
- ✅ Use the template system (`config.template.js`)
- ✅ Keep `config.js` in `.gitignore`
- ✅ Use environment variables for production
- ✅ Rotate API keys regularly
- ✅ Monitor API key usage

## 🔍 Security Checklist

Before deploying or sharing your code:

- [ ] No hardcoded API keys in source code
- [ ] `config.js` is in `.gitignore`
- [ ] Using `config.template.js` as template
- [ ] API key is properly formatted
- [ ] No sensitive data in commit history
- [ ] HTTPS enabled for production
- [ ] API key access is limited

## 🚨 Incident Response

### If API Key is Compromised
1. **Immediately** revoke the compromised key
2. **Generate** a new API key
3. **Update** your `config.js` file
4. **Check** for unauthorized usage
5. **Review** commit history for other exposures

### If Sensitive Data is Committed
1. **Remove** the sensitive data from the file
2. **Add** the file to `.gitignore`
3. **Force push** to remove from history (if recent)
4. **Consider** the key compromised and rotate it

## 📞 Security Support

If you discover a security vulnerability:
1. **DO NOT** create a public issue
2. **Email** the maintainers privately
3. **Include** steps to reproduce
4. **Wait** for confirmation before disclosure

## 🔄 Regular Security Maintenance

### Monthly Tasks
- [ ] Review API key usage
- [ ] Check for new security updates
- [ ] Rotate API keys if needed
- [ ] Review access permissions

### Quarterly Tasks
- [ ] Audit all configuration files
- [ ] Review commit history for sensitive data
- [ ] Update security documentation
- [ ] Test incident response procedures

---

**Remember**: Security is everyone's responsibility. When in doubt, ask for help rather than taking risks.
