var express = require('express');
var userModel = require.main.require('./model/user-model');
var userModel2 = require.main.require('./model/user-model');

var router = express.Router();
router.use('/assets', express.static('assets'));
router.use('/image', express.static('assets'));


router.get('/', (req, res)=>{
	res.render('login');
});
router.post('/', (req, res)=>{
	
	var user ={
		lemail : req.body.lemail,
		lpassword : req.body.lpassword,

	};
	
	userModel.validate(user, function(result){
		if(result.length > 0){
			console.log(result);
			req.session.lemail = req.body.lemail;
			req.session.uid = result[0].id;
			userModel2.getType(req.session.uid, function(result2){
				req.session.userType = result2[0].type;
				console.log(result2[0].type);
			});
			var userdata ={
				data : result
			}
			res.render('index',userdata);
		}else{
			var userdata ={
				data : ""
			}
			res.render('login',userdata);
		}

	});
});


module.exports = router;