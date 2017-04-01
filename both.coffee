# Urusan Routing
Router.configure
    layoutTemplate: 'layout'

Router.route '/',
    action: -> this.render 'home'
    waitOn: -> Meteor.subscribe 'datas'

Router.route '/create',
    action: -> this.render 'create'

Router.route '/read/:id',
    action: -> this.render 'read'
    waitOn: -> Meteor.subscribe 'data', this.params.id


# Urusan Database
@gaji = new Mongo.Collection 'gaji'
@gajiS = new SimpleSchema
    nama:
        type: String
        label: 'Nama Pegawai'
    ttl:
        type: String
        label: 'Tempat, Tanggal Lahir'
    nip:
        type: String
        label: 'Nomor Induk Pegawai'
    status:
        type: String
        label: 'Status Pegawai'
    pokok:
        type: String
        label: 'Gaji Pokok'
    tunjangan:
        type: String
        label: 'Tunjangan Pegawai'
    potongan:
        type: String
        label: 'Potongan Gaji'

gaji.attachSchema gajiS

gaji.allow
    insert: -> true
    update: -> true
    remove: -> true
