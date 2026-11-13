# 🤝 Contributing to the Scrum Guide Expansion Pack

**Want to translate a guide? [Start here](translations.md#start-here)** for the team contact, agent setup, shared instructions and submission handoff. No tool installation is needed to ask for help.

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

Agree the proposed change with the community and relevant guide owner. Use OGP's [setup guide](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/setup.md) and the [site context](getting-started.md).

## Contribution Workflow

Use the [shared task index](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/README.md) to choose a supported operation and [validation/submission instructions](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/validation.md) for evidence and review. Include the prior discussion, selected guide/edition/language, unresolved decisions and actual validation status in the PR. Site editorial and publication approval remain with the guide owner and maintainers.

## Content Contributions

### Editing Guide Content

The main guide content is located in:

```
site/content/scrum-guide-expanded/{edition}/index.md
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

#### Using Blockquotes and Callouts

The site supports enhanced callouts for highlighting important information:

**Standard Blockquote:**

```markdown
> This is a standard blockquote for quotations or simple callouts.
```

**Alert-Style Callouts:**

```markdown
> [!NOTE]
> General information or additional context.

> [!TIP] Pro Tip
> Helpful suggestions with optional custom title.

> [!IMPORTANT]
> Critical information that must not be overlooked.

> [!WARNING]
> Important warnings about potential issues.

> [!CAUTION]
> Serious warnings about significant risks.

> [!HIGHLIGHT] Key Insight
> Emphasize key concepts, principles, or memorable takeaways.
```

**When to Use Each Type:**

- **NOTE** - Additional context, explanations, clarifications
- **TIP** - Best practices, helpful suggestions
- **IMPORTANT** - Critical information requiring attention
- **WARNING** - Potential pitfalls, common mistakes
- **CAUTION** - Serious consequences or risks
- **HIGHLIGHT** - Key insights that deserve special emphasis

**Best Practices:**

- Use sparingly to maintain effectiveness
- Add custom titles for clarity (e.g., `[!TIP] Pro Tip`)
- Keep content concise and focused
- Place near related content for context

See the [Content Management Guide](./content-management.md#blockquotes-and-callouts) for detailed examples.

#### Diagrams with Mermaid.js

The site supports Mermaid.js for creating diagrams. To use diagrams in your content:

1. **Enable Mermaid in front matter:**
   ```yaml
   ---
   title: "Your Guide Page"
   enableMermaid: true
   ---
   ```

2. **Create diagram in markdown:**
   ````markdown
   ```mermaid
   flowchart LR
       A[Product Backlog] --> B[Sprint Planning]
       B --> C[Sprint Backlog]
       C --> D[Increment]
   ```
   ````

**Note:** Mermaid is **disabled by default** for performance. Only enable it on pages that actually use diagrams.

**Supported diagram types:** Flowcharts, sequence diagrams, class diagrams, state diagrams, Gantt charts, and more.

See the [Content Management Guide](./content-management.md#diagrams-with-mermaidjs) for detailed examples and best practices.

### Adding References

When adding references, follow this format:

```markdown
According to Smith (42), Scrum teams should...

## References

42. _Smith, J. (2024) Scrum Best Practices. Example Publisher._
```

## Translation Contributions

Follow [ScrumExpansion translation policy](translations.md) and the [shared walkthrough](https://github.com/nkdAgility/OpenGuidePlatform/blob/v1.1.7/system/OpenGuidePlatform.Agents.Integration/contributor-guide/first-translation.md). The guardian and relevant guide owner approve language decisions; technical checks do not establish language quality. Keep categories and tags identical to the English source, preserve academic citations, formatting and reserved terms, and record incomplete work accurately.

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
