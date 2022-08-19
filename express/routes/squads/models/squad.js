const mongoose = require("mongoose");

const Squad = mongoose.Schema({
        members: [
                {
                        id: { type: String },
                        percentage: { type: Number },
                        payment_method_id: { type: String },
                }
        ],
        created_at: { type: Number, default: (new Date().getTime() / 1000) | 0 },
        updated_at: { type: Number },
        deleted_at: { type: Number, index: true },
    }, { collection: "squads" }
);

module.exports = mongoose.model("Squad", Squad);