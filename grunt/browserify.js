module.exports = {
  options: {
    transform: ['hbsfy'],
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