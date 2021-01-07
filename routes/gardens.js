const express = require('express');
const gardensController = require('../controllers/gardens')
const router = express.Router();

router.get('/', gardensController.getAllGardens)
router.get('/id/:id', gardensController.getGardensByUserId)

module.exports = router