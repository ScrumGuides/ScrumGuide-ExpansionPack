# 🤝 Contributing to the Scrum Guide Expansion Pack

We welcome and appreciate contributions from the community! This guide outlines how you can contribute to the Scrum Guide Expansion Pack project.

## 🌐 Live Sites

- **Production**: [scrumexpansion.org](https://scrumexpansion.org) - **Live production site**
- **Preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - **Test your contributions here before they go live**

## Table of Contents

- [Ways to Contribute](#ways-to-contribute)
- [Getting Started](#getting-started)
- [Contribution Workflow](#contribution-workflow)
- [Content Contributions](#content-contributions)
- [Translation Contributions](#translation-contributions)
- [Code Contributions](#code-contributions)
- [Style Guidelines](#style-guidelines)
- [Review Process](#review-process)
- [Community Guidelines](#community-guidelines)

## Ways to Contribute

### 📝 Content Contributions

- Improve existing guide content
- Fix typos and grammatical errors
- Enhance explanations and examples
- Add references and citations
- Update outdated information

### 🌐 Translation Contributions

- Translate content to new languages
- Improve existing translations
- Review and validate translations
- Maintain translation consistency

### 🛠️ Technical Contributions

- Fix bugs and issues
- Improve website performance
- Enhance accessibility
- Add new features
- Improve documentation

### 🎨 Design Contributions

- Improve user interface
- Enhance user experience
- Create visual assets
- Optimize for mobile devices

### 📚 Documentation

- Improve project documentation
- Create tutorials and guides
- Update installation instructions
- Document new features

## Getting Started

### 1. Read the Guidelines

Before contributing, please read:

- [Code of Conduct](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/blob/main/CODE_OF_CONDUCT.md)
- [License Information](../LICENSE)
- This contributing guide

### 2. Set Up Your Environment

Follow the [Getting Started Guide](./getting-started.md) to set up your development environment.

### 3. Find an Issue

- Browse [open issues](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/issues)
- Look for issues labeled `good first issue` for beginners
- Check issues labeled `help wanted` for priority items
- Create a new issue if you find a bug or have a feature request

### 4. Test Your Ideas

- **Review the live site**: [scrumexpansion.org](https://scrumexpansion.org)
- **Test contributions on preview**: [agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) - See how your changes will look before they go to production

## Contribution Workflow

### 1. Fork and Clone

```bash
# Fork the repository on GitHub, then clone your fork
git clone https://github.com/YOUR-USERNAME/ScrumGuide-ExpansionPack.git
cd ScrumGuide-ExpansionPack

# Add the original repository as a remote
git remote add upstream https://github.com/ScrumGuides/ScrumGuide-ExpansionPack.git
```

### 2. Create a Branch

```bash
# Create and switch to a new branch
git checkout -b feature/your-feature-name

# Use descriptive branch names:
# - feature/add-spanish-translation
# - fix/navigation-bug
# - docs/update-installation-guide
```

### 3. Make Your Changes

- Follow the [Style Guidelines](#style-guidelines)
- Test your changes locally
- Ensure all tests pass
- Update documentation if needed

### 4. Commit Your Changes

```bash
# Stage your changes
git add .

# Commit with a descriptive message
git commit -m "feat: add Spanish translation for main guide"

# Use conventional commit format:
# feat: new feature
# fix: bug fix
# docs: documentation
# style: formatting changes
# refactor: code refactoring
# test: adding tests
# chore: maintenance tasks
```

### 5. Push and Create Pull Request

```bash
# Push your branch to your fork
git push origin feature/your-feature-name

# Create a pull request on GitHub
# - Use a clear title and description
# - Reference any related issues
# - Add screenshots if applicable
```

## Content Contributions

### Editing Guide Content

The main guide content is located in:

```
site/content/guide/index.md
```

#### Content Structure

- Use clear, concise language
- Follow the existing structure and formatting
- Include proper headings and subheadings
- Add references where appropriate

#### Markdown Guidelines

```markdown
# Main Heading (H1)

## Section Heading (H2)

### Subsection Heading (H3)

**Bold text** for emphasis
_Italic text_ for subtle emphasis
`Code` for technical terms

> Blockquotes for important notes

- Bullet points for lists

1. Numbered lists for sequences

[Link text](URL) for external links
```

### Adding References

When adding references, follow this format:

```markdown
According to Smith (42), Scrum teams should...

## References

42. _Smith, J. (2024) Scrum Best Practices. Example Publisher._
```

## Translation Contributions

### Adding a New Language

1. **Create language files**:

   ```bash
   # Add to Hugo configuration
   # site/hugo.yaml - add language config

   # Create translation file
   # site/i18n/[language-code].yaml
   ```

2. **Translate content**:

   ```bash
   # Create language-specific content
   # site/content/[language-code]/
   ```

3. **Update navigation**:
   - Translate menu items
   - Update language switcher
   - Test all navigation elements

### Translation Guidelines

- **Accuracy**: Maintain the meaning and intent of the original content
- **Consistency**: Use consistent terminology throughout
- **Categories and Tags**: Keep `categories` and `tags` in frontmatter identical to English - do not translate these
- **Cultural Sensitivity**: Adapt content appropriately for the target culture
- **Technical Terms**: Keep technical Scrum terms in their commonly accepted form
- **Formatting**: Preserve markdown formatting and structure

### Translation Review Process

1. **Initial Translation**: Create the translation
2. **Self Review**: Review your own work for accuracy
3. **Peer Review**: Have another native speaker review
4. **Technical Review**: Ensure technical accuracy
5. **Final Review**: Project maintainers review for consistency

## Code Contributions

### Technical Guidelines

#### Hugo/HTML

- Use semantic HTML5 elements
- Ensure accessibility compliance
- Follow responsive design principles
- Test across different browsers

#### CSS

- Use Bootstrap 5 classes when possible
- Follow BEM methodology for custom CSS
- Ensure mobile-first design
- Maintain consistency with existing styles

#### JavaScript

- Use modern ES6+ syntax
- Follow eslint configuration
- Ensure progressive enhancement
- Test functionality across browsers

### Development Standards

#### File Structure

```
site/
├── layouts/
│   ├── _default/          # Default templates
│   ├── partials/          # Reusable components
│   └── shortcodes/        # Content shortcodes
├── static/
│   ├── css/               # Custom styles
│   ├── js/                # Custom scripts
│   └── images/            # Static images
└── content/               # Markdown content
```

#### Performance Considerations

- Optimize images before adding
- Minimize CSS and JavaScript
- Use appropriate image formats
- Implement lazy loading where beneficial

## Style Guidelines

### Writing Style

- **Clear and Concise**: Use simple, direct language
- **Active Voice**: Prefer active over passive voice
- **Present Tense**: Use present tense for most content
- **Inclusive Language**: Use inclusive, accessible language
- **Consistent Terminology**: Use Scrum terminology consistently

### Code Style

- **Indentation**: Use 2 spaces for HTML/CSS, 4 spaces for other code
- **Line Length**: Maximum 100 characters per line
- **Comments**: Include comments for complex logic
- **Naming**: Use descriptive names for functions and variables

### Commit Messages

Follow conventional commit format:

```
type(scope): description

feat(guide): add section on Product Ownership
fix(nav): resolve mobile navigation issue
docs(readme): update installation instructions
style(css): improve button styling
refactor(layout): reorganize template structure
test(content): add validation for guide content
chore(deps): update Hugo version
```

## Review Process

### Pull Request Review

1. **Automated Checks**:
   - Hugo build succeeds
   - No broken links
   - Markdown linting passes
   - Spell checking passes

2. **Content Review**:
   - Accuracy of information
   - Consistency with existing content
   - Proper attribution and references
   - Language and grammar

3. **Technical Review**:
   - Code quality and standards
   - Performance impact
   - Browser compatibility
   - Accessibility compliance

4. **Final Review**:
   - Overall contribution quality
   - Alignment with project goals
   - Documentation updates

### Review Timeline

- **Simple fixes**: 1-3 days
- **Content changes**: 3-7 days
- **Feature additions**: 1-2 weeks
- **Major changes**: 2-4 weeks

## Community Guidelines

### Code of Conduct

We follow the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/). Please read and follow these guidelines in all interactions.

### Communication Channels

- **GitHub Issues**: Bug reports and feature requests
- **GitHub Discussions**: General questions and community discussions
- **Pull Request Comments**: Code and content review discussions

### Recognition

We recognize contributors in several ways:

- **Contributors File**: Listed in project contributors
- **Release Notes**: Mentioned in release announcements
- **Community Highlights**: Featured in community updates

## Getting Help

### Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [Bootstrap 5 Documentation](https://getbootstrap.com/docs/5.3/)
- [Markdown Guide](https://www.markdownguide.org/)
- [Project Documentation](./README.md)

### Support

If you need help:

1. Check existing documentation
2. Search GitHub issues and discussions
3. Ask questions in GitHub Discussions
4. Contact maintainers for complex issues

## Recognition and Attribution

### Contributors

All contributors are recognized in:

- Project README
- Release notes
- Contributors page on the website

### Attribution Guidelines

- **Content Contributions**: Maintain original attribution while noting contributions
- **Translation Contributions**: Credit translators in language-specific pages
- **Code Contributions**: Credit in commit history and release notes

---

## Thank You! 🙏

Your contributions help make the Scrum Guide Expansion Pack a valuable resource for the global Scrum community. Every contribution, no matter how small, makes a difference.

**Ready to contribute?** Check out the [open issues](https://github.com/ScrumGuides/ScrumGuide-ExpansionPack/issues) or start by improving this documentation!
