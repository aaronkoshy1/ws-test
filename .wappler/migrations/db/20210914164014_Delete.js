
exports.up = function(knex) {
  return knex.schema
    .dropTable('Posts')
};

exports.down = function(knex) {
  return knex.schema
    .createTable('Posts', function (table) {
      table.increments('id').primary().notNullable();
      table.string('image', 50);
      table.text('description', 65535);
      table.string('category', 12);
      table.string('author', 50);
      table.date('date');
    })
};
