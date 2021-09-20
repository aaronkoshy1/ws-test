
exports.up = function(knex) {
  return knex.schema
    .table('Devices', function (table) {
      table.integer('user_id').unsigned();
      table.foreign('user_id').references('user_id').inTable('Users').onUpdate('CASCADE').onDelete('CASCADE');
    })
    .table('Messages', function (table) {
      table.dropColumn('user_id');
      table.integer('user_id').unsigned();
      table.foreign('user_id').references('user_id').inTable('Users').onUpdate('CASCADE').onDelete('CASCADE');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Devices', function (table) {
      table.dropForeign('user_id');
      table.dropColumn('user_id');
    })
    .table('Messages', function (table) {
      table.increments('user_id').primary().notNullable();
      table.dropForeign('user_id');
      table.dropColumn('user_id');
    })
};
