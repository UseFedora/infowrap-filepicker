module.exports = (grunt) ->

  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks
  # load docular tasks
  # this is a fork of docular so it does not start with 'grunt-'
  grunt.loadNpmTasks('docular')

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    banner: "/*! <%= pkg.title || pkg.name %> - v<%= pkg.version %> - <%= grunt.template.today(\"yyyy-mm-dd\") %>\n" + "<%= pkg.homepage ? \" * \" + pkg.homepage + \"\\n\" : \"\" %>" + " * Copyright (c) <%= grunt.template.today(\"yyyy\") %> <%= pkg.author %>;\n" + " * Licensed <%= _.pluck(pkg.licenses, \"type\").join(\", \") %>\n */\n"

    docular:
      showDocularDocs: false
      showAngularDocs: false
      githubUrl: 'https://github.com/infowrap/infowrap-filepicker'
      docular_partial_home: 'docs/home.html'
      discussions:
        shortName: 'wwwalkerrun'
        url: 'http://infowrap.com'
        dev: false
      analytics:
        account: 'UA-42942836-1',
        domainName: 'dev.infowrap.com'
      groups: [
        {
          groupTitle: 'Develop'
          groupId: 'develop'
          groupIcon: 'icon-beer'
          showSource: true
          sections: [
            {
              id: "setup"
              title: "Setup"
              showSource: false
              docs: [
                "docs/lib/scripts/docs/setup"
              ]
              rank: {
                'configuration':1
                'installgrunt':2
                'installdocular':3
              }
            },
            {
              id: "api"
              title: "API Reference"
              showSource: false
              docs: [
                "docs/lib/scripts/docs/api"
              ]
              scripts: [
                  "infowrap-filepicker.js"
              ]
            }
          ]
        }
      ]
