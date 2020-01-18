
exports.up = function(knex) {
  return knex.schema
    .createTable('gca_users_answers', function (table) {
      table.uuid('id').primary();
      table.dateTime('created_at').notNullable().index();
      table.uuid('user_id').nullable().index();
      table.uuid('attempt_id').notNullable().index();
      table.integer('test_id').notNullable().index();
      table.integer('question_id').notNullable().index();
      table.integer('choice_id').notNullable().index();
      
      table.unique(['attempt_id', 'test_id', 'question_id', 'choice_id']);
      
      table.foreign('question_id').references('gca_questions.id')
        .onUpdate('cascade').onDelete('cascade');
    });
};

exports.down = function(knex) {
  return knex.schema.dropTable('gca_users_answers');
};
