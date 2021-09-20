
exports.up = function(knex) {
  return knex.schema
    .table('Contacts', function (table) {
      table.integer('user_id').unsigned();
      table.foreign('user_id').references('user_id').inTable('Users').onUpdate('CASCADE').onDelete('CASCADE');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Contacts', function (table) {
      table.dropForeign('user_id');
      table.dropColumn('user_id');
    })
};
