
exports.up = function(knex) {
  return knex.schema
    .renameTable('cars', 'Users')
    .renameTable('countries', 'Participants')
    .renameTable('images', 'Posts')
    .renameTable('users', 'Contacts')
    .createTable('Block_list', function (table) {
      table.increments('id');
    })
    .createTable('Conversation', function (table) {
      table.increments('id');
    })
    .createTable('Reports', function (table) {
      table.increments('id');
    })
    .createTable('Devices', function (table) {
      table.increments('id');
    })
    .createTable('Messages', function (table) {
      table.increments('id');
    })
};

exports.down = function(knex) {
  return knex.schema
    .renameTable('Users', 'cars')
    .renameTable('Participants', 'countries')
    .renameTable('Posts', 'images')
    .renameTable('Contacts', 'users')
    .dropTable('Block_list')
    .dropTable('Conversation')
    .dropTable('Reports')
    .dropTable('Devices')
    .dropTable('Messages')
};
