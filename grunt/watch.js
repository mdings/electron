module.exports = {
  options: {
    livereload: true
  },

  // sass
  sass: {
    files: ['sass/**/*.scss'],
    tasks: ['sass:build'],
    options: {
      spawn: false,
    }
  },

  // js
  js: {
    files: ['scripts/**/*.js'],
    tasks: ['browserify:build'],
    options: {
      spawn: false,
    }
  },

  // handlebars
  hbs: {
    files: ['templates/**/*.hbs'],
    tasks: ['browserify:build'],
    options: {
      spawn: false,
    }
  }
}