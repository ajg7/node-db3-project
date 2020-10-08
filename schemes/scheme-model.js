module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
}

const db = require("../data/db-config");

function find() {
    return db("schemes");
}

function findById(id) {
    return db("schemes").where({ id });
}

function findSteps(id) {
    return db("steps").where("scheme_id", id);
}

function add(newPost) {
    return db("schemes")
        .insert(newPost, "id")
        .then(ids => {
            const id = ids[0];
            return findById(id);
        })
}

function addStep(steps, id) {
    return db("steps").insert(steps, "id").where("scheme_id", id);
}

function update(id, changes) {
    return db("schemes").where({ id }).update(changes);
}

function remove(id) {
    return db("schemes").where({ id }).del();
}