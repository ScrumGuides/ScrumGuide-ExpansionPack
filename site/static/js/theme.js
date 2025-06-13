/**
 * Theme Management System
 * Handles dark/light mode detection, persistence, and switching
 */
class ThemeManager {
  constructor() {
    this.STORAGE_KEY = 'theme-preference';
    this.THEMES = {
      LIGHT: 'light',
      DARK: 'dark',
      AUTO: 'auto'
    };
    
    // Initialize theme before DOM content loads to prevent FOUC
    this.init();
  }

  /**
   * Initialize theme system
   */
  init() {
    this.applyTheme(this.getThemePreference());
    this.setupSystemThemeListener();
    this.setupStorageListener();
  }

  /**
   * Get current theme preference with priority:
   * 1. User's saved preference
   * 2. System/OS preference
   * 3. Default (light)
   */
  getThemePreference() {
    const saved = this.getSavedTheme();
    if (saved && saved !== this.THEMES.AUTO) {
      return saved;
    }
    
    // Check system preference
    if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
      return this.THEMES.DARK;
    }
    
    return this.THEMES.LIGHT;
  }

  /**
   * Get saved theme from localStorage
   */
  getSavedTheme() {
    try {
      return localStorage.getItem(this.STORAGE_KEY);
    } catch (e) {
      console.warn('Theme: localStorage not available', e);
      return null;
    }
  }

  /**
   * Save theme preference to localStorage
   */
  saveTheme(theme) {
    try {
      localStorage.setItem(this.STORAGE_KEY, theme);
      // Dispatch storage event for cross-tab sync
      window.dispatchEvent(new StorageEvent('storage', {
        key: this.STORAGE_KEY,
        newValue: theme,
        storageArea: localStorage
      }));
    } catch (e) {
      console.warn('Theme: Could not save to localStorage', e);
    }
  }

  /**
   * Apply theme to document
   */
  applyTheme(theme) {
    const effectiveTheme = theme === this.THEMES.AUTO ? this.getSystemTheme() : theme;
    
    // Remove existing theme attributes
    document.documentElement.removeAttribute('data-theme');
    
    // Apply new theme
    if (effectiveTheme === this.THEMES.DARK) {
      document.documentElement.setAttribute('data-theme', 'dark');
    }
    
    // Update any theme toggle buttons
    this.updateToggleButtons(theme);
  }

  /**
   * Get system theme preference
   */
  getSystemTheme() {
    if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
      return this.THEMES.DARK;
    }
    return this.THEMES.LIGHT;
  }

  /**
   * Toggle between light and dark themes
   */
  toggleTheme() {
    const current = this.getSavedTheme() || this.getSystemTheme();
    const newTheme = current === this.THEMES.DARK ? this.THEMES.LIGHT : this.THEMES.DARK;
    
    this.setTheme(newTheme);
  }

  /**
   * Set specific theme
   */
  setTheme(theme) {
    if (!Object.values(this.THEMES).includes(theme)) {
      console.warn('Theme: Invalid theme', theme);
      return;
    }
    
    this.saveTheme(theme);
    this.applyTheme(theme);
    
    // Dispatch custom event for components to listen to
    window.dispatchEvent(new CustomEvent('themechange', {
      detail: { theme, effectiveTheme: this.getEffectiveTheme() }
    }));
  }

  /**
   * Get current effective theme (resolved from auto)
   */
  getEffectiveTheme() {
    const saved = this.getSavedTheme();
    if (saved === this.THEMES.AUTO || !saved) {
      return this.getSystemTheme();
    }
    return saved;
  }

  /**
   * Setup listener for system theme changes
   */
  setupSystemThemeListener() {
    if (window.matchMedia) {
      const mediaQuery = window.matchMedia('(prefers-color-scheme: dark)');
      
      // Use the new addEventListener method if available
      if (mediaQuery.addEventListener) {
        mediaQuery.addEventListener('change', (e) => {
          // Only apply if user hasn't set explicit preference
          const saved = this.getSavedTheme();
          if (!saved || saved === this.THEMES.AUTO) {
            this.applyTheme(this.THEMES.AUTO);
          }
        });
      } else {
        // Fallback for older browsers
        mediaQuery.addListener((e) => {
          const saved = this.getSavedTheme();
          if (!saved || saved === this.THEMES.AUTO) {
            this.applyTheme(this.THEMES.AUTO);
          }
        });
      }
    }
  }

  /**
   * Setup listener for cross-tab synchronization
   */
  setupStorageListener() {
    window.addEventListener('storage', (e) => {
      if (e.key === this.STORAGE_KEY && e.newValue !== e.oldValue) {
        this.applyTheme(e.newValue);
      }
    });
  }

  /**
   * Update theme toggle button states
   */
  updateToggleButtons(theme) {
    const toggles = document.querySelectorAll('[data-theme-toggle]');
    const effectiveTheme = this.getEffectiveTheme();
    
    toggles.forEach(toggle => {
      const icon = toggle.querySelector('.theme-toggle-icon');
      const text = toggle.querySelector('.theme-toggle-text');
      
      if (icon) {
        // Update icon based on current theme
        icon.className = effectiveTheme === this.THEMES.DARK 
          ? 'theme-toggle-icon fas fa-sun' 
          : 'theme-toggle-icon fas fa-moon';
      }
      
      if (text) {
        text.textContent = effectiveTheme === this.THEMES.DARK ? 'Light' : 'Dark';
      }
      
      // Update ARIA label
      const label = effectiveTheme === this.THEMES.DARK 
        ? 'Switch to light mode' 
        : 'Switch to dark mode';
      toggle.setAttribute('aria-label', label);
      toggle.setAttribute('title', label);
    });
  }

  /**
   * Setup theme toggle buttons
   */
  setupToggleButtons() {
    const toggles = document.querySelectorAll('[data-theme-toggle]');
    
    toggles.forEach(toggle => {
      toggle.addEventListener('click', (e) => {
        e.preventDefault();
        this.toggleTheme();
      });
      
      // Setup keyboard navigation
      toggle.addEventListener('keydown', (e) => {
        if (e.key === 'Enter' || e.key === ' ') {
          e.preventDefault();
          this.toggleTheme();
        }
      });
    });
    
    // Initial update
    this.updateToggleButtons();
  }
}

// Initialize theme manager immediately to prevent FOUC
const themeManager = new ThemeManager();

// Setup toggle buttons when DOM is ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', () => {
    themeManager.setupToggleButtons();
  });
} else {
  themeManager.setupToggleButtons();
}

// Export for global access
window.ThemeManager = themeManager;