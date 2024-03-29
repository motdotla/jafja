module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    banner: "/*! <%= pkg.name %>.js - <%= pkg.version %> - <%= grunt.template.today(\"yyyy-mm-dd\") %> - <%= pkg.author %> */\n"
    uglify:
      options:
        banner: "<%= banner %>"
      en:
        src: "build/jafja.js"
        dest: "build/jafja.min.js"
    concat:
      options:
        banner: "<%= banner %>"
        separator: '\n\n'
        stripBanners : true
      en:
        src: ["src/libs/microevent.js", "src/jafja.js", "src/jafja/*.js"]
        dest: "build/jafja.js"
    jshint:
      all: ['src/jafja.js', 'src/jafja/*.js']
    connect:
      server:
        options:
          hostname: "*"
          port: 3000,
          base: './public'
          keepalive: true
    simplemocha:
      all:
        src: 'test/*.js'


  grunt.loadNpmTasks "grunt-contrib-concat"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-connect"
  grunt.loadNpmTasks "grunt-simple-mocha"
  grunt.loadNpmTasks "grunt-contrib-jshint"

  grunt.registerTask "test", ["simplemocha", "jshint"]
  grunt.registerTask "default", ["jshint", "concat", "uglify", "connect"]

  # Some available commands
  # grunt
  # grunt test
  # grunt connect
