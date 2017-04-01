if Meteor.isServer

    Meteor.publish 'datas', ->
        gaji.find {}

    Meteor.publish 'data', (id) ->
        gaji.find _id: id
