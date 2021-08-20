
exports.up = function(knex) {
  return knex.schema
    .table('images', function (table) {
      table.integer('post_author').unsigned();
      table.foreign('post_author').references('user_id').inTable('users').onUpdate('CASCADE');
    })
    .createTable('buildingfs', function (table) {
      table.increments('id');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('images', function (table) {
      table.dropForeign('post_author');
      table.dropColumn('post_author');
    })
    .dropTable('buildingfs')
};
