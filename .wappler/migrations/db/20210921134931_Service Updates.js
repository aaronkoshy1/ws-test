
exports.up = function(knex) {
  return knex.schema
    .table('Services', function (table) {
      table.renameColumn('detail', 'details');
    })
};

exports.down = function(knex) {
  return knex.schema
    .table('Services', function (table) {
      table.renameColumn('details', 'detail');
    })
};
