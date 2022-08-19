const express = require('express');
const router = express.Router();
const User = require("./models/user");

router.get('/:id', async (req, res) => {
  try {
    const user = await User.findById(req.params.id);
    res.send({
      id: user._id,
      name: user.name,
      email: user.email,
    });
  } catch (e) {
    res.send(e);
  }
});

router.post('/', async (req, res) => {
  const userByEmail = await User.findOne({ email: req.body.email });
  if (userByEmail) return res.status(400).send('That user already exists');

  const newUser = new User({
    name: req.body.name,
    email: req.body.email,
  });

  const createdUser = await newUser.save();
  res.send(createdUser);
});

module.exports = router;
