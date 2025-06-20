# 🔧 Maintainer Guide

This guide is for project maintainers who have administrative access to the Scrum Guide Expansion Pack repository.

**📋 Each section starts with simple, step-by-step instructions for non-technical users, followed by detailed technical information.**

**Key responsibilities covered:**

- Creating and managing releases
- Handling version numbers
- Crediting authors properly
- Fixing problems when they occur
- Understanding repository rules

## Table of Contents

- [Repository Protection Rules](#repository-protection-rules)
- [Version Numbering System](#version-numbering-system)
- [Release Management](#release-management)
- [Reverting Releases](#reverting-releases)
- [Author Attribution](#author-attribution)
- [Emergency Procedures](#emergency-procedures)
- [Maintainer Responsibilities](#maintainer-responsibilities)

## Repository Protection Rules

The repository has several branch protection rules configured to ensure code quality and proper review processes:

### Default Branch Protection (No Bypass)

**Rule Name**: `Default-NoBypass`  
**Applies to**: Main branch (`~DEFAULT_BRANCH`)  
**Enforcement**: Active

**Rules Applied**:

- ❌ **Deletion Protection** - Branch cannot be deleted
- ❌ **Force Push Protection** - No force pushes allowed
- ❌ **Direct Push Protection** - No direct commits to main branch
- 🔄 **Pull Request Required** - All changes must go through pull requests
  - No minimum approvals required
  - Stale reviews are NOT dismissed on push
  - Code owner review not required
  - Last push approval not required
  - **Review thread resolution required**
  - Only merge commits allowed (no squash or rebase)
- ✅ **Status Checks Required** - The following checks must pass:
  - `Publish Site` (GitHub Actions)
  - `Build Site` (GitHub Actions)
  - `license/cla` (Contributor License Agreement)

**Bypass Actors**: None - These rules apply to everyone, including administrators

### Default Branch Protection (Admin Bypass)

**Rule Name**: `Default-Bypass-AdminAllowed`  
**Applies to**: Main branch (`~DEFAULT_BRANCH`)  
**Enforcement**: Active

**Rules Applied**:

- 🔄 **Pull Request Required** with additional settings:
  - Stale reviews ARE dismissed on push
  - **Automatic Copilot code review enabled**
  - Review thread resolution required

**Bypass Actors**: Repository administrators can bypass these rules

### Default Branch Protection (Maintainer Bypass)

**Rule Name**: `Default-Bypass-MaintainAllowed`  
**Applies to**: Main branch (`~DEFAULT_BRANCH`)  
**Enforcement**: Active

**Rules Applied**:

- ✅ **Status Checks Required**:
  - `code-review/reviewable` must pass
  - Strict status checks policy disabled

**Bypass Actors**: Users with "Maintain" role can bypass these rules

### Tag Protection Rules

**Rule Name**: `Restrict-Tags`  
**Applies to**: All tags (`~ALL`)  
**Enforcement**: Active

**Rules Applied**:

- ❌ **Tag Deletion Protection** - Tags cannot be deleted
- ❌ **Tag Force Update Protection** - No force updates allowed
- ❌ **Tag Creation Restriction** - Controlled tag creation
- ❌ **Tag Update Protection** - Tags cannot be updated
- 🏷️ **Tag Name Pattern** - Tags must follow semantic versioning:
  - Pattern: `^v(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)$`
  - Examples: `v1.0.0`, `v2.1.3`, `v10.15.2`
  - Invalid: `1.0.0`, `v1.0`, `v1.0.0-beta`

**Bypass Actors**: Repository administrators can bypass tag restrictions

## Version Numbering System

### Quick Guide for Non-Technical Users

**When making changes, you need to decide what type of version number to use:**

🔧 **Small fixes** (typos, grammar, broken links, translations) → **Patch version** (like `v1.0.0` → `v1.0.1`)

📝 **New content** (new sections, major improvements) → **Minor version** (like `v1.0.0` → `v1.1.0`)

🔄 **Major changes** (complete rewrites, big structural changes) → **Major version** (like `v1.0.0` → `v2.0.0`)

**To find out what version to use next:**

1. Go to the [preview site](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)
2. Look at the version number at the top (like "v1.1.0-preview.166")
3. Use that number but remove the "-preview" part
4. OR if your changes are bigger, increase the number appropriately

**Examples:**

- Preview shows `v1.1.0-preview.166` + you fixed typos → Release `v1.1.0`
- Preview shows `v1.1.0-preview.166` + you added a new chapter → Release `v1.2.0`

---

### Technical Details: Understanding Semantic Versioning

The project uses **GitVersion** for automatic version numbering and follows **Semantic Versioning** (SemVer) principles.

Version numbers follow the format: `MAJOR.MINOR.PATCH` (e.g., `v1.2.3`)

**For Documentation Projects**:

- **MAJOR** (`1.x.x`) - Breaking changes or complete rewrites

  - Complete restructuring of the guide
  - Major philosophical changes to Scrum interpretation
  - Changes that would require users to relearn content
  - **Example**: Moving from v1.x.x to v2.0.0

- **MINOR** (`x.1.x`) - New features or significant additions

  - New sections or chapters added
  - Substantial content expansions
  - New language translations
  - Major improvements to existing content
  - **Example**: Adding a new chapter goes from v1.0.x to v1.1.0

- **PATCH** (`x.x.1`) - Bug fixes and small improvements
  - Typo corrections
  - Grammar fixes
  - Small clarifications
  - Formatting improvements
  - Minor wording changes
  - **Example**: Fixing typos goes from v1.1.0 to v1.1.1

### GitVersion Configuration

The project uses GitVersion with these settings:

#### Branch Behavior

**Main Branch** (`main`):

- **Mode**: Continuous Deployment
- **Tag**: `preview`
- **Increment**: Patch (automatically bumps patch version)
- **Preview versions**: `v1.1.0-preview.123`

**Release Branches** (`release/*`):

- **Mode**: Continuous Delivery
- **Tag**: None (clean version numbers)
- **Increment**: Patch
- **Release versions**: `v1.1.0`

#### How Version Numbers are Generated

1. **On Main Branch**:

   - Each commit automatically increments the patch number
   - Versions appear as: `v1.0.1-preview.45`, `v1.0.2-preview.46`, etc.
   - The number after "preview" is the build number

2. **When Creating a Release**:
   - Creating a GitHub release with tag `v1.1.0` will use that exact version
   - The release will be clean without "-preview" suffix
   - Next commits on main will start from `v1.1.1-preview.1`

### Determining the Next Version

#### Step-by-Step Process

1. **Check Current State**:

   - Visit [preview site](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)
   - Look at the version in the header (e.g., "v1.2.0-preview.156")

2. **Assess Changes Since Last Release**:

   - Review commits since the last release
   - Categorize changes as major, minor, or patch

3. **Choose Version Type**:

   **For PATCH releases** (most common):

   - Typos, grammar fixes, small clarifications
   - Use the same minor version: `v1.2.0-preview.X` → `v1.2.0`

   **For MINOR releases**:

   - New content sections, translations, substantial additions
   - Increment minor version: `v1.2.0-preview.X` → `v1.3.0`

   **For MAJOR releases** (rare):

   - Complete rewrites, breaking changes
   - Increment major version: `v1.2.0-preview.X` → `v2.0.0`

### Version Examples

#### Scenario 1: Typo Fixes

- **Current preview**: `v1.0.5-preview.67`
- **Changes**: Fixed spelling errors in 3 sections
- **Next release**: `v1.0.5` (patch release)

#### Scenario 2: New Translation

- **Current preview**: `v1.0.5-preview.67`
- **Changes**: Added complete German translation
- **Next release**: `v1.1.0` (minor release - new feature)

#### Scenario 3: Major Restructure

- **Current preview**: `v1.5.2-preview.234`
- **Changes**: Complete rewrite of the core methodology section
- **Next release**: `v2.0.0` (major release - breaking change)

### When to Override GitVersion

**Normal Process**: Let GitVersion handle automatic incrementing

**Manual Override**: Only when you need to:

- Skip version numbers (e.g., superstition about v1.3.0)
- Align with external milestones
- Correct a versioning mistake

**How to Override**:

1. Edit `.github/GitVersion.yml`
2. Update the `next-version` field
3. Commit the change
4. Create the release

### Common Questions

**Q: Why do preview versions have weird numbers?**
A: The number after "preview" is the build count. It helps track how many changes have been made.

**Q: What if I create the wrong version tag?**
A: Follow the [advanced tag management process](#advanced-local-tag-management) to recreate the tag with the correct version.

**Q: Should documentation follow the same rules as software?**
A: Yes, but interpret "breaking changes" as content that would confuse existing users or require them to relearn concepts.

## Release Management

### Quick Steps: How to Release a New Version

**Simple process for non-technical users:**

1. **Find the version number:**

   - Go to [preview site](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)
   - Look at the version at the top (like "v1.1.0-preview.166")
   - Your release will be `v1.1.0` (remove the "-preview" part)
   - OR increase the number if you made big changes (see Version Numbering above)

2. **Create the release:**

   - Go to the GitHub repository
   - Click **"Releases"** tab
   - Click **"Create a new release"**
   - Type your version number (like `v1.1.0`) in the "Tag version" box
   - Type the same version in the "Release title" box
   - Write a short description of what changed
   - Click **"Publish release"**

3. **Wait and check:**
   - The site will automatically update (takes a few minutes)
   - Check [production site](https://scrumexpansion.org) to make sure it worked

**That's it!** The system handles everything else automatically.

---

### Technical Details: Creating a New Release

Follow these detailed steps to create a new version release:

#### 1. Determine the Next Version

1. **Check the preview site**: Visit [preview site](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/)
2. **Look at the header** for the current preview version (e.g., "v1.1.0-preview.166")
3. **Calculate next release version**:
   - If preview shows `v1.1.0-preview.X`, next release is `v1.1.0`
   - If preview shows `v1.0.5-preview.X`, next release is `v1.0.5`
   - If no breaking changes, increment patch version: `v1.0.0` → `v1.0.1`

#### 2. Create the Release

1. **Navigate to Releases**:

   - Go to repository → **Releases** tab
   - Click **"Create a new release"**

2. **Configure the Release**:

   - **Tag version**: Enter the next logical version (e.g., `v1.1.0`)
   - **Release title**: Use the same version number
   - **Description**: Add release notes describing changes
   - **Target**: Ensure it's pointing to the `main` branch

3. **Publish the Release**:
   - Click **"Publish release"**
   - GitHub Actions will automatically trigger
   - The production site will be updated with the new version

#### 3. Verify the Release

1. **Monitor GitHub Actions**: Check that all workflows complete successfully
2. **Verify Production Site**: Visit [scrumexpansion.org](https://scrumexpansion.org) to confirm the update
3. **Check Version Display**: Ensure the version number is correctly displayed

## Reverting Releases

### Quick Steps: How to Undo a Release

**If you published a release that has problems:**

1. **Delete the bad release:**

   - Go to the GitHub repository
   - Click **"Releases"** tab
   - Find the problematic release
   - Click **"Delete"** and confirm

2. **Restore the previous good release:**

   - Find the last release that was working well
   - Click **"Edit"** on that release
   - Check the box **"Set as the latest release"**
   - Click **"Update release"**

3. **Trigger the fix:**

   - Click **"Actions"** tab in the repository
   - Find **"Build & Release"** workflow
   - Click **"Run workflow"**
   - Select the version you want from the tags dropdown
   - Click **"Run workflow"**

4. **Wait and check:**
   - The site will update back to the previous version
   - Check [production site](https://scrumexpansion.org) to confirm

**If this doesn't work**, you may need technical help (see Technical Details below).

---

### Technical Details: Standard Revert Process

If you need to roll back to a previous version, follow this detailed process:

#### 1. Delete the Problematic Release

1. **Navigate to Releases** in the GitHub repository
2. **Find the release** you want to revert
3. **Click "Delete"** to remove the release
4. **Confirm deletion**

#### 2. Promote Previous Release

1. **Find the previous stable release** you want to restore
2. **Click "Edit"** on that release
3. **Check "Set as the latest release"**
4. **Update the release** if needed

#### 3. Manually Trigger Deployment

1. **Go to Actions tab** in the repository
2. **Find "Build & Release" workflow**
3. **Click "Run workflow"**
4. **Select the tag** from the dropdown for the version you want to deploy
5. **Run the workflow**

### Advanced: Local Tag Management

For cases where you need to recreate a tag:

#### Remove and Recreate Tag Locally

```powershell
# Remove the tag locally and from remote
git tag -d v1.0.1
git push origin --delete v1.0.1

# This will mark the GitHub release as draft

# Recreate the tag and push
git tag v1.0.1
git push origin v1.0.1

# Go back to GitHub and mark the release as published
```

#### Important Notes

- ⚠️ **Tag deletion requires admin privileges** due to protection rules
- ⚠️ **Only use this method** when standard revert doesn't work
- ⚠️ **Coordinate with team** before deleting tags
- ✅ **Always verify** the tag points to the correct commit before recreating

## Emergency Procedures

### Hotfix Release Process

For critical issues that need immediate deployment:

1. **Create hotfix branch** from main
2. **Make minimal necessary changes**
3. **Create pull request** with "hotfix" label
4. **Get expedited review** from another maintainer
5. **Merge and immediately create release**

### Rollback Scenarios

#### Scenario 1: Build Failure

- Check GitHub Actions logs
- Fix the issue in a new commit
- Create new patch release

#### Scenario 2: Site Issues

- Use the revert process above
- Investigate the issue separately
- Create fix in a new release

#### Scenario 3: Content Issues

- For minor content issues: Create hotfix
- For major content issues: Consider full revert

## Maintainer Responsibilities

### Daily Tasks

- ✅ Monitor GitHub Actions for failures
- ✅ Review and merge pull requests
- ✅ Respond to community issues
- ✅ Check site functionality

### Weekly Tasks

- ✅ Review analytics and site performance
- ✅ Update dependencies if needed
- ✅ Plan upcoming releases
- ✅ Review contributor feedback

### Monthly Tasks

- ✅ Security audit of dependencies
- ✅ Performance review
- ✅ Documentation updates
- ✅ Community health check

### Release Cycle

- ✅ **Patch releases**: As needed for fixes
- ✅ **Minor releases**: Monthly or as features accumulate
- ✅ **Major releases**: When significant changes are made

## Best Practices

### Version Management

- 📋 Always follow semantic versioning
- 📋 Document breaking changes clearly
- 📋 Test releases on preview environment first
- 📋 Coordinate major releases with the team

### Communication

- 📢 Announce releases in community channels
- 📢 Provide clear release notes
- 📢 Communicate any breaking changes
- 📢 Respond promptly to release-related issues

### Safety

- 🔒 Never force push to main branch
- 🔒 Always use pull requests for changes
- 🔒 Test thoroughly before releases
- 🔒 Keep backup plans for rollbacks

---

## Need Help?

If you encounter issues with release management or need clarification on any procedures:

1. **Check the troubleshooting guide**: [troubleshooting.md](./troubleshooting.md)
2. **Review GitHub Actions logs**: Look for specific error messages
3. **Contact other maintainers**: Coordinate on complex issues
4. **Document new procedures**: Update this guide with lessons learned

**Remember**: When in doubt, it's better to ask for help than to risk breaking the production site. The community depends on the stability of this resource.

## Author Attribution

### Quick Guide: When to Credit the Core Authors

**The three main authors of the guide are:**

- Jeff Sutherland
- Ralph Jocham
- John Coleman

**When should you add their names to your work?**

✅ **YES - Add their names when:**

- You're implementing their suggestions or feedback
- You had discussions with them about the changes
- You're making major updates they were involved in
- You're releasing a new version with their contributions

❌ **NO - Don't add their names for:**

- Fixing typos or simple grammar
- Technical website fixes
- Your own independent work

**How to add their names (simple way):**

When you're writing your commit message (the description of what you changed), add these lines at the bottom:

```
Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
Co-Authored-By: John Coleman <johncolemanagile@gmail.com>
```

**Example commit message:**

```
Update section on Product Owner responsibilities

Added new guidance based on discussion with Jeff and Ralph
about stakeholder management best practices.

Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
```

---

### Technical Details: Author Attribution

When contributors make significant changes to the guide, proper attribution ensures credit is given to all collaborators. This section covers how to attribute authors who may not be physically present during commits.

### Core Authors

The guide has three primary authors who should be credited in major releases:

- **Jeff Sutherland** - `jeffsutherland@users.noreply.github.com`
- **Ralph Jocham** - `ralph.jocham@effectiveagile.com`
- **John Coleman** - `johncolemanagile@gmail.com`

### When to Use Co-Author Attribution

**Use co-authorship when**:

- Making changes based on discussions with the core authors
- Implementing suggestions or feedback from the authors
- The change represents collaborative work
- An author provided substantial input but couldn't make the commit themselves
- Releasing updates that include contributions from multiple authors

**Don't use co-authorship for**:

- Minor technical fixes (typos, formatting)
- Administrative changes (configuration updates)
- Independent contributor work that doesn't involve the core authors

### How to Add Co-Authors

#### Method 1: Using Git Commands (Recommended)

When making a commit that should include co-authors:

```bash
git commit -m "Update guide with new section on Product Owner responsibilities

Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
Co-Authored-By: John Coleman <johncolemanagile@gmail.com>"
```

#### Method 2: Using GitHub Web Interface

1. **Create the commit message** in the GitHub web editor
2. **Add co-author lines** at the bottom of the commit message:

```text
Update guide with new section on Product Owner responsibilities

Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
Co-Authored-By: John Coleman <johncolemanagile@gmail.com>
```

#### Method 3: Updating Existing Commits

If you forgot to add co-authors to a recent commit:

```powershell
# Amend the last commit (only if not yet pushed)
git commit --amend -m "Original message

Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
Co-Authored-By: John Coleman <johncolemanagile@gmail.com>"
```

**⚠️ Warning**: Only amend commits that haven't been pushed to the repository yet.

### Release Attribution

#### Major Releases

For significant releases (minor or major version changes), include all core authors:

```text
Release v1.1.0: Add comprehensive Product Owner guidance

This release includes expanded sections on Product Owner responsibilities,
stakeholder management, and value delivery based on collaborative input
from the core author team.

Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
Co-Authored-By: John Coleman <johncolemanagile@gmail.com>
```

#### Patch Releases

For patch releases (bug fixes, typos), co-authorship is usually not needed unless the changes were specifically requested by the core authors.

### Attribution in Pull Requests

#### When Reviewing PRs

If a pull request implements suggestions from core authors:

1. **Add co-author attribution** when merging
2. **Update the merge commit message** to include co-authors
3. **Use the squash and merge option** to create a clean commit with proper attribution

#### Example PR Merge Message

```text
Add section on Scrum Master conflict resolution (#123)

This PR addresses feedback from Jeff and Ralph regarding the need for
better guidance on handling team conflicts within the Scrum framework.

Co-Authored-By: contributor-username <contributor@example.com>
Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
```

### Email Address Guidelines

#### Using Correct Email Addresses

- **Jeff Sutherland**: Always use `jeffsutherland@users.noreply.github.com`
- **Ralph Jocham**: Always use `ralph.jocham@effectiveagile.com`
- **John Coleman**: Always use `johncolemanagile@gmail.com`

#### Why These Specific Addresses

- These are the email addresses associated with their GitHub accounts
- Using the correct email ensures proper attribution in GitHub's interface
- GitHub will link the attribution to their profiles

### Checking Attribution

#### Verifying Co-Authors in GitHub

1. **View the commit** in GitHub's web interface
2. **Check the commit details** - co-authors will appear as "Co-authored by"
3. **Verify profile links** - ensure the emails link to the correct GitHub profiles

#### Command Line Verification

```powershell
# View commit details including co-authors
git log --pretty=fuller

# View specific commit with co-authors
git show <commit-hash>
```

### Attribution Best Practices

#### Author Communication

- **Coordinate with authors** before adding their attribution
- **Verify the change aligns** with their vision for the guide
- **Document the collaboration** in commit messages

#### Attribution Consistency

- **Use the same format** for co-author lines
- **Include all relevant authors** who contributed to the specific change
- **Don't include authors** who weren't involved in the particular change

#### Documentation

- **Explain the attribution** in commit messages
- **Reference discussions** that led to the change
- **Keep records** of collaborative decisions

### Common Scenarios

#### Scenario 1: Implementing Author Feedback

**Situation**: Jeff suggests adding a section on Sprint Goal refinement during a discussion.

**Action**: Create the section and include Jeff as co-author:

```text
Add section on Sprint Goal refinement techniques

Based on discussion with Jeff regarding the importance of evolving
Sprint Goals throughout the Sprint while maintaining focus.

Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
```

#### Scenario 2: Collaborative Review

**Situation**: All three authors review and suggest changes to a major section.

**Action**: Implement changes and credit all authors:

```text
Revise Product Backlog management section

Incorporated feedback from all core authors regarding PBI prioritization,
refinement processes, and stakeholder collaboration.

Co-Authored-By: Jeff Sutherland <jeffsutherland@users.noreply.github.com>
Co-Authored-By: Ralph Jocham <ralph.jocham@effectiveagile.com>
Co-Authored-By: John Coleman <johncolemanagile@gmail.com>
```

#### Scenario 3: Minor Technical Update

**Situation**: Fixing broken links and formatting issues.

**Action**: No co-author attribution needed unless specifically requested by authors.

```text
Fix broken external links and improve formatting

- Updated 5 broken links to current resources
- Improved table formatting in Appendix A
- Fixed markdown syntax issues
```

## Using Semantic Versioning Directives

### Quick Guide: Auto-Version Your Changes

**Instead of figuring out version numbers yourself, you can tell the system what type of change you made:**

Add one of these special lines to your commit message (the description when you save changes):

🔧 **For small fixes** (typos, broken links, grammar):

```
+semver: patch
```

📝 **For new content** (new sections, translations, major improvements):

```
+semver: minor
```

🔄 **For big changes** (complete rewrites, major restructuring):

```
+semver: major
```

**How to use it:**

When you write your commit message, just add the line at the end:

```text
Fix typos in Product Owner section

Corrected several spelling errors and improved grammar.

+semver: patch
```

**That's it!** The system will automatically figure out the right version number.

---

### Technical Details: Semantic Versioning Directives

GitVersion can automatically increment version numbers based on special keywords in commit messages. This allows you to control versioning without manually editing configuration files.

### Available Directives

You can include these directives in any commit message or pull request merge message:

- `+semver: patch` - Force a patch version increment
- `+semver: minor` - Force a minor version increment
- `+semver: major` - Force a major version increment

### How to Use Directives

**In Commit Messages:**

```bash
git commit -m "Fix typos in Product Owner section

Corrected several spelling errors and improved grammar
in the Product Owner responsibilities chapter.

+semver: patch"
```

**In Pull Request Merge Messages:**

When merging a pull request, add the directive to the merge commit:

```text
Add German translation for Chapter 3 (#45)

This PR adds a complete German translation for the Product
Backlog management chapter, including all examples and
diagrams.

+semver: minor
```

### When to Use Each Directive

**Use `+semver: patch` for:**

- Typo corrections
- Grammar fixes
- Small clarifications
- Formatting improvements
- Broken link fixes
- Minor wording changes

**Example:**

```bash
git commit -m "Fix broken links in references section

Updated 3 outdated URLs to current resources.

+semver: patch"
```

**Use `+semver: minor` for:**

- New sections or chapters
- Adding translations
- Substantial content additions
- New features or capabilities
- Significant improvements to existing content

**Example:**

```bash
git commit -m "Add section on AI integration in Scrum

New chapter covering how Scrum teams can effectively
integrate AI tools while maintaining Scrum principles.

+semver: minor"
```

**Use `+semver: major` for:**

- Complete rewrites
- Breaking changes to structure
- Major philosophical changes
- Content that requires users to relearn concepts

**Example:**

```bash
git commit -m "Restructure guide with new framework approach

Complete reorganization of content using a new
three-pillar framework that changes how concepts
are presented and understood.

+semver: major"
```

### Multiple Changes in One Commit

If a commit contains multiple types of changes, use the **highest** level directive:

**Example:**

```bash
git commit -m "Add new chapter and fix existing typos

- Added complete chapter on remote Scrum practices
- Fixed 12 typos across various sections
- Updated 2 broken links

+semver: minor"
```

_Note: Even though there were patch-level fixes, the new chapter makes this a minor release._

### Pull Request Best Practices

**When reviewing PRs:**

1. **Assess the overall impact** of all changes in the PR
2. **Add the appropriate directive** to the merge commit message
3. **Use squash and merge** to create a single clean commit with the directive

**Example PR Merge:**

```text
Implement contributor feedback on Scrum Master section (#67)

Changes include:
- Clarified conflict resolution guidance (minor addition)
- Fixed 5 typos throughout the section (patch fixes)
- Updated one broken external link (patch fix)

The clarification represents new substantive content that
enhances the guide's value.

+semver: minor
```

### Overriding Default Behavior

**GitVersion Default**: Automatically increments patch version for each commit

**With Directive**: Your directive takes precedence

**Example without directive:**

- Current: `v1.2.0-preview.45`
- After commit: `v1.2.1-preview.46` (automatic patch increment)

**Example with `+semver: minor`:**

- Current: `v1.2.0-preview.45`
- After commit: `v1.3.0-preview.46` (directive forces minor increment)

### Checking Directive Results

**In Preview Site:**

1. Make your commit with the directive
2. Wait for GitHub Actions to complete
3. Check the [preview site](https://agreeable-island-0c966e810-preview.centralus.6.azurestaticapps.net/) header
4. Verify the version number matches your expectation

**In GitHub Actions:**

1. Go to **Actions** tab in the repository
2. Find your commit's build
3. Check the **Build** job logs for version information

### Common Mistakes

**❌ Wrong placement:**

```bash
git commit -m "+semver: minor Fix typos in guide"
```

**✅ Correct placement:**

```bash
git commit -m "Fix typos in guide

+semver: minor"
```

**❌ Using multiple directives:**

```bash
git commit -m "Add new section

+semver: minor
+semver: patch"
```

**✅ Use the highest applicable directive:**

```bash
git commit -m "Add new section and fix typos

+semver: minor"
```

### Emergency Corrections

If you use the wrong directive:

1. **For recent commits** (not yet pushed):

   ```powershell
   git commit --amend -m "Corrected commit message

   +semver: patch"
   ```

2. **For pushed commits**:
   - Make a new commit with the correct directive
   - The next release will use the appropriate version

### Integration with Release Process

**Automatic Process:**

1. Contributors use directives in their commits/PRs
2. GitVersion calculates the next version based on the highest directive since the last release
3. When you create a GitHub release, GitVersion determines the appropriate version number
4. No manual version calculation needed!

**Example Flow:**

- Last release: `v1.5.0`
- Commits since then: 3 with `+semver: patch`, 1 with `+semver: minor`
- GitVersion will suggest: `v1.6.0` (because minor takes precedence)
- Preview versions: `v1.6.0-preview.1`, `v1.6.0-preview.2`, etc.
