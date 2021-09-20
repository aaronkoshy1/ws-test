
exports.up = function(knex) {
  return knex.schema
    .dropTable('contacts')
    .dropTable('conversation')
    .dropTable('messages')
    .dropTable('reports')
};

exports.down = function(knex) {
  return knex.schema
    .createTable('contacts', function (table) {
      table.integer('user_id').notNullable();
      table.string('first_name', 20).notNullable();
      table.string('middle_name', 20).notNullable();
      table.string('last_name', 45).notNullable();
      table.string('phone', 14).primary().notNullable();
      table.string('email', 225).notNullable();
    })
};
