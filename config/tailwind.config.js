const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        merriweather: ['Merriweather', ],
      },
      colors: {
        'lilac': '#4078E0',
        'lilac-deep': '#5840E0',
        'lilac-teal': '#40C8E0',
        'gold': '#E0A840',
        'magenta': '#E04078',
        'gold': '#807700',
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
