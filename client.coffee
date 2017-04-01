if Meteor.isClient

    Template.home.helpers
        datas: ->
            gaji.find {}

    Template.read.helpers
        data: ->
            gaji.findOne()
