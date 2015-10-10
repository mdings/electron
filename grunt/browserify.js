module.exports = {
  options: {
    transform: ['riotify'],
    debug: true,
    shim: {
    }
  },

  build: {
    files: {
       'main.app.js': ['scripts/main.js']
    }
  }
}