###
#
#
###

'use strict'

_ = require 'underscore'
express = require 'express'
router = express.Router()

nextId = 1

dbIndex = {}

##
# 
##
router.get '/', (req, res)->
	entries = _.values dbIndex
	res.send entries

##
#
##
router.get '/:id', (req, res)->
	id = req.params.id
	
	if _.has dbIndex, id
		entry = dbIndex[id]
		res.send entry
	else
		res.send 404

##
#
##
router.post '/', (req, res)->
	entry = req.body
	id = nextId++

	entry.id = id
	dbIndex[id] = entry

	res.send entry

##
#
##
router.put '/:id', (req, res)->
	entry = req.body
	id = entry.id

	if _.has dbIndex, id
		dbIndex[id] = entry
		res.send()
	else
		res.send 404

##
#
##
router.delete '/:id', (req, res)->
	id = req.params.id

	if _.has dbIndex, id
		delete dbIndex[id]
		res.send()
	else
		res.send 404

##
#
##
router.delete '/', (req, res)->
	dbIndex = {}
	res.send()

module.exports = router;
