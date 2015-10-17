module.exports = {
  options: {
    transform: ['riotify'],
    debug: true
  },

  build: {
    files: {
       'main.app.js': ['scripts/main.js']
    }
  }
}