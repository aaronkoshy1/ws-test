
exports.up = function(knex) {
  return knex.schema
    .table('Participants', function (table) {
      table.integer('users_id').alter().unsigned();
      table.foreign('users_id').references('undefined').inTable('Users').onUpdate('SET DEFAULT').onDelete('SET DEFAULT');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Participants', function (table) {
      table.integer('users_id').alter();
      table.dropForeign('users_id');
    })
};
