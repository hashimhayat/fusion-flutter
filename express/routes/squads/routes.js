const express = require('express');
const router = express.Router();
const Squad = require("./models/squad");

router.get('/:id', async (req, res) => {
  try {
    const squad = await Squad.findById(req.params.id);
    res.send(squad);
  } catch (e) {
    res.send(e);
  }
});

router.post('/', async (req, res) => {
  console.log(req.body);
  const squad = new Squad({
    members: [
      {
        id: req.body.member_id,
        percentage: req.body.percentage,
        payment_method_id: req.body.payment_method_id,
      }
    ]
  });

  const createdSquad = await squad.save();
  res.send(createdSquad);
});

module.exports = router;
