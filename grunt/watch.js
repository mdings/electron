module.exports = {
  options: {
    livereload: true,
    spaw: false
  },

  // sass
  sass: {
    files: ['sass/**/*.scss'],
    tasks: ['sass:build']
  },

  // js
  js: {
    files: ['scripts/**/*.js'],
    tasks: ['browserify:build'],
    options: {
      spawn: false,
    }
  },

  tags: {
    files: ['tags/**/*.tag'],
    tasks: ['browserify:build'],
    options: {
      spawn: false,
    }
  }

  // handlebars
  // hbs: {
  //   files: ['templates/**/*.hbs'],
  //   tasks: ['browserify:build'],
  //   options: {
  //     spawn: false,
  //   }
  // }
}