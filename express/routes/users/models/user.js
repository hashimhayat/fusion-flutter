const mongoose = require("mongoose");

const User = mongoose.Schema({
        name: { type: String },
        email: { type: String, unique: true, index: true },
        created_at: { type: Number, default: (new Date().getTime() / 1000) | 0 },
        updated_at: { type: Number },
        deleted_at: { type: Number, index: true },
    }, { collection: "users" }
);

module.exports = mongoose.model("User", User);