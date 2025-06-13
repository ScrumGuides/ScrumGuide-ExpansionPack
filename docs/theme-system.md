# Dark/Light Mode Theme System

## Overview

The Scrum Guide Expansion Pack now includes a comprehensive dark/light mode theme system that automatically detects user preferences, persists choices, and provides smooth transitions between themes.

## Features

### Core Functionality
- **Auto-detection** of system theme preference using CSS media queries
- **Persistent storage** of user's explicit theme choice in browser localStorage
- **Priority hierarchy**: User preference → System preference → Default (light)
- **FOUC prevention** by initializing theme before page content renders
- **Cross-tab synchronization** for consistent theme across browser tabs

### Accessibility Compliance
- **WCAG AA compliant** contrast ratios in both themes
- **Keyboard navigation** support with proper focus management
- **Screen reader compatibility** with ARIA labels and roles
- **Minimum touch target size** (44px) for mobile accessibility
- **Motion reduction** support for users with vestibular disorders
- **High contrast mode** support

### Performance Optimized
- **Sub-100ms theme switching** for instant visual feedback
- **CSS variables** for efficient theme application
- **Smooth transitions** with respect for user motion preferences
- **Minimal JavaScript** footprint for fast loading

## Usage

### Theme Toggle Button

The theme toggle is automatically included in the main navigation and provides:

```html
<button 
  type="button" 
  class="theme-toggle" 
  data-theme-toggle
  aria-label="Toggle theme"
  title="Toggle between light and dark mode"
>
  <i class="theme-toggle-icon fas fa-moon"></i>
  <span class="theme-toggle-text">Dark</span>
</button>
```

### Programmatic API

Access the theme manager globally:

```javascript
// Toggle between light and dark
window.ThemeManager.toggleTheme();

// Set specific theme
window.ThemeManager.setTheme('dark');
window.ThemeManager.setTheme('light');
window.ThemeManager.setTheme('auto'); // Follow system preference

// Get current theme information
const currentTheme = window.ThemeManager.getEffectiveTheme();
const savedPreference = window.ThemeManager.getSavedTheme();
```

### Event Listening

Listen for theme changes:

```javascript
window.addEventListener('themechange', (event) => {
  console.log('Theme changed to:', event.detail.effectiveTheme);
  console.log('User preference:', event.detail.theme);
});
```

## Implementation Details

### CSS Architecture

The theme system uses CSS custom properties (variables) for consistent theming:

```css
:root {
  /* Light theme (default) */
  --theme-bg-primary: #ffffff;
  --theme-text-primary: #212529;
  --theme-primary: #0d6efd;
  /* ... more variables */
}

[data-theme="dark"] {
  /* Dark theme overrides */
  --theme-bg-primary: #121212;
  --theme-text-primary: #ffffff;
  --theme-primary: #4d9fff;
  /* ... more variables */
}
```

### Theme Detection Priority

1. **User's saved preference** in localStorage (`theme-preference`)
2. **System/OS preference** via `prefers-color-scheme` media query
3. **Default theme** (light mode)

### Browser Compatibility

- **Modern browsers**: Full feature support including CSS custom properties
- **Older browsers**: Graceful degradation with fallback styling
- **Storage unavailable**: Falls back to system preference detection

## Customization

### Adding New Theme Variables

To add new themeable properties, define them in both light and dark theme sections:

```css
:root {
  --theme-my-custom-color: #custom-light-value;
}

[data-theme="dark"] {
  --theme-my-custom-color: #custom-dark-value;
}
```

### Creating Additional Themes

The system can be extended to support additional themes by:

1. Adding new theme constants in JavaScript
2. Creating corresponding CSS selectors
3. Updating the toggle logic

### Modifying Transition Effects

Adjust the transition timing and easing:

```css
:root {
  --theme-transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}
```

## Testing

### Performance Testing

Theme switching performance can be tested with:

```javascript
// Measure theme switch duration
const start = performance.now();
window.ThemeManager.toggleTheme();
// Duration logged via themechange event
```

### Accessibility Testing

- Test keyboard navigation with Tab key
- Verify screen reader compatibility
- Check contrast ratios in both themes
- Test with motion reduction preferences

### Browser Testing

Recommended testing across:
- Chrome/Chromium (latest + previous version)
- Firefox (latest + ESR)
- Safari (latest + previous version)  
- Edge (latest version)

## Troubleshooting

### Theme Not Persisting
- Check if localStorage is available
- Verify no browser extensions blocking storage
- Check for incognito/private browsing mode

### FOUC (Flash of Unstyled Content)
- Ensure theme.js loads before CSS
- Verify theme detection runs immediately
- Check for JavaScript errors preventing initialization

### Performance Issues
- Check for excessive CSS transitions
- Verify theme variables are properly defined
- Monitor for layout thrashing during theme switch

## Files Modified

- `/site/static/css/style.css` - Theme variables and styling
- `/site/static/js/theme.js` - Theme management system
- `/site/layouts/_default/baseof.html` - Script inclusion
- `/site/layouts/partials/components/main-menu.html` - Toggle integration
- `/site/layouts/partials/components/theme-toggle.html` - Toggle component