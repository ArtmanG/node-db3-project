const db = require("../data/db-config");

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove,
  };

function find() {
  return db("schemes");
}


