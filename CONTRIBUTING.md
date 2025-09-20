# Contributing to REIMAGINE

Thank you for your interest in contributing to REIMAGINE! This document provides guidelines and information for contributors.

## 🚀 Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR_USERNAME/reimagine-ai-streamer.git
   cd reimagine-ai-streamer
   ```
3. **Create a new branch** for your feature:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## 🛠️ Development Setup

1. **Start the development server**:
   ```bash
   python3 -m http.server 8000
   ```
2. **Open your browser** to `http://localhost:8000`
3. **Get an API key** from [Daydream API Key Generator](https://app.daydream.live/beta/api-key)
4. **Update the API key** in `index.html`

## 📝 How to Contribute

### Reporting Bugs
- Use the GitHub issue tracker
- Include steps to reproduce the bug
- Provide browser and OS information
- Include console error messages if any

### Suggesting Features
- Open an issue with the "enhancement" label
- Describe the feature and its benefits
- Consider the impact on existing functionality

### Code Contributions
1. **Follow the existing code style**
2. **Add comments** for complex functionality
3. **Test your changes** thoroughly
4. **Update documentation** if needed

## 🎯 Areas for Contribution

### Frontend Improvements
- UI/UX enhancements
- Mobile responsiveness
- Accessibility improvements
- Performance optimizations

### Feature Additions
- New ControlNet types
- Additional RTMP platforms
- Advanced parameter controls
- Export/import settings

### Documentation
- Code documentation
- User guides
- API documentation
- Video tutorials

### Testing
- Unit tests
- Integration tests
- Cross-browser testing
- Performance testing

## 📋 Pull Request Process

1. **Ensure your code works** on multiple browsers
2. **Test all functionality** thoroughly
3. **Update documentation** as needed
4. **Write a clear description** of your changes
5. **Reference any related issues**

### PR Template
```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Performance improvement

## Testing
- [ ] Tested on Chrome
- [ ] Tested on Firefox
- [ ] Tested on Safari
- [ ] Tested on mobile

## Screenshots (if applicable)
Add screenshots to help explain your changes

## Checklist
- [ ] Code follows project style
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] No breaking changes
```

## 🎨 Code Style Guidelines

### HTML
- Use semantic HTML elements
- Include proper ARIA labels
- Maintain consistent indentation (2 spaces)

### CSS
- Use meaningful class names
- Group related styles
- Comment complex animations
- Follow BEM methodology when appropriate

### JavaScript
- Use modern ES6+ features
- Add JSDoc comments for functions
- Handle errors gracefully
- Use meaningful variable names

## 🐛 Debugging Tips

### Common Issues
1. **CORS errors**: Ensure you're running a local server
2. **Camera access**: Check browser permissions
3. **API errors**: Verify API key and network connection
4. **Stream issues**: Check console for WebRTC errors

### Debug Mode
Open browser console (F12) to see detailed logs:
- Stream creation status
- WebRTC connection details
- API response information
- Error messages and stack traces

## 📞 Getting Help

- **GitHub Issues**: For bugs and feature requests
- **Discussions**: For questions and general discussion
- **Discord**: Join the community for real-time help

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## 🙏 Recognition

Contributors will be recognized in:
- README.md contributors section
- Release notes
- Project documentation

Thank you for helping make REIMAGINE better! 🎉
