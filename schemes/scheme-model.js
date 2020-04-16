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
