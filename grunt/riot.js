module.exports = {
  options: {
    concat : true
  },
  build: {
    src: 'tags/*.tag',
    dest: 'scripts/all-tags.js'
  }
}