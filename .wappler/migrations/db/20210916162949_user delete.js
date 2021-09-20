
exports.up = function(knex) {
  return knex.schema
    .table('Block_list', function (table) {
      table.dropColumn('user_id');
    })
    .table('Contacts', function (table) {
      table.dropColumn('user_id');
    })
    .table('Conversation', function (table) {
      table.dropColumn('user_id');
    })
    .table('Devices', function (table) {
      table.dropColumn('user_id');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Block_list', function (table) {
      table.increments('user_id').primary().notNullable();
    })
    .table('Contacts', function (table) {
      table.increments('user_id').primary().notNullable();
    })
    .table('Conversation', function (table) {
      table.increments('user_id').primary().notNullable();
    })
    .table('Devices', function (table) {
      table.increments('user_id').primary().notNullable();
    })
};
