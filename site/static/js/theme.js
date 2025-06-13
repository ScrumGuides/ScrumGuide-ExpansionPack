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
    const savedTheme = this.getSavedTheme();
    
    // If no saved preference, default to AUTO mode
    if (!savedTheme) {
      this.setTheme(this.THEMES.AUTO);
    } else {
      this.applyTheme(savedTheme);
    }
    
    this.setupSystemThemeListener();
    this.setupStorageListener();
  }

  /**
   * Get current theme preference with priority:
   * 1. User's saved preference (including AUTO)
   * 2. System/OS preference
   * 3. Default (light)
   */
  getThemePreference() {
    const saved = this.getSavedTheme();
    if (saved) {
      return saved; // Return saved preference including AUTO
    }
    
    // Check system preference if no saved preference
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
    
    // Update any theme dropdown
    this.updateDropdownStates(theme);
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
          // Only apply if user has AUTO preference or no preference
          const saved = this.getSavedTheme();
          if (!saved || saved === this.THEMES.AUTO) {
            this.applyTheme(this.THEMES.AUTO);
            
            // Dispatch theme change event
            window.dispatchEvent(new CustomEvent('themechange', {
              detail: { theme: this.THEMES.AUTO, effectiveTheme: this.getEffectiveTheme() }
            }));
          }
        });
      } else {
        // Fallback for older browsers
        mediaQuery.addListener((e) => {
          const saved = this.getSavedTheme();
          if (!saved || saved === this.THEMES.AUTO) {
            this.applyTheme(this.THEMES.AUTO);
            
            // Dispatch theme change event
            window.dispatchEvent(new CustomEvent('themechange', {
              detail: { theme: this.THEMES.AUTO, effectiveTheme: this.getEffectiveTheme() }
            }));
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
   * Update theme dropdown states
   */
  updateDropdownStates(theme) {
    const dropdowns = document.querySelectorAll('.theme-toggle-dropdown');
    const options = document.querySelectorAll('.theme-option');
    const effectiveTheme = this.getEffectiveTheme();
    const savedTheme = this.getSavedTheme();
    
    dropdowns.forEach(dropdown => {
      const text = dropdown.querySelector('[data-theme-current]');
      
      if (text) {
        // Update dropdown text based on saved preference
        if (savedTheme === this.THEMES.AUTO) {
          text.textContent = 'Sync with System';
        } else if (savedTheme === this.THEMES.DARK || effectiveTheme === this.THEMES.DARK) {
          text.textContent = 'Dark Mode';
        } else {
          text.textContent = 'Light Mode';
        }
      }
    });

    // Update option states
    options.forEach(option => {
      const optionTheme = option.dataset.theme;
      const isActive = (savedTheme === optionTheme) || 
                       (!savedTheme && optionTheme === this.THEMES.AUTO);
      
      // Add/remove active class
      if (isActive) {
        option.classList.add('active');
        option.setAttribute('aria-selected', 'true');
      } else {
        option.classList.remove('active');
        option.setAttribute('aria-selected', 'false');
      }
    });
  }

  /**
   * Setup theme dropdown
   */
  setupDropdown() {
    const options = document.querySelectorAll('.theme-option');
    
    options.forEach(option => {
      option.addEventListener('click', (e) => {
        e.preventDefault();
        const theme = option.dataset.theme;
        this.setTheme(theme);
      });
    });
    
    // Initial update
    this.updateDropdownStates();
  }
}

// Initialize theme manager immediately to prevent FOUC
const themeManager = new ThemeManager();

// Setup dropdown when DOM is ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', () => {
    themeManager.setupDropdown();
  });
} else {
  themeManager.setupDropdown();
}

// Export for global access
window.ThemeManager = themeManager;