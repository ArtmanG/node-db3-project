const db = require("../data/db-config");

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove,
    addStep, //stretch
  };

function find() {
  return db("schemes");
}

function findById(id) {
    return db("schemes").where({ id }).first();
  }

  function findSteps(scheme_id) {
    return db("steps")
      .join("schemes", "steps.scheme_id", "schemes.id")
      .select("steps.instructions", "steps.step_number")
      .where({ scheme_id });
  }
  
