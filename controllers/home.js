var express = require('express');
var userModel = require.main.require('./model/user-model');
var router = express.Router();
router.use('/assets', express.static('assets'));
router.use('/image', express.static('image'));


/*router.get('*', function(req, res, next){
		if(req.session.name != null){
			next();
		}else{
			res.redirect('/login');
		}
});*/

router.get('/', (req, res)=>{
		/*var user = {
			name: req.session.name
		};
		res.render('index', user);*/
		userModel.getAllRestaurants(function(result){
			if(result.length > 0){
				var userdata ={
					data : result
				}
				console.log(result);
				res.render('index',userdata);
			}else{
				res.render('login');
			}
		});
		
	

});

router.post('/login', (req, res)=>{
		var user = {
			name: req.session.name
		};
		res.render('index', user);
		res.render('login');
});	
router.get('/restaurentshow', (req, res)=>{
	userModel.getAllRestaurants(function(result){
		if(result.length > 0){
			var userdata ={
				data : result
			}
			console.log(result);
			res.render('restaurent/restaurentshow',userdata);
		}else{
			res.render('index',userdata);
		}
	});
});

router.get('/registration', (req, res)=>{
	res.render('registration');
});
router.post('/registration', (req, res)=>{
	var user ={
		firstname : req.body.rfname,
		lastname : req.body.rlname,
		mobile : req.body.rphonenumber,
		dateofbirth : req.body.rdob,
		gender : req.body.rgender,
		email : req.body.remail,
		country : req.body.rcountry,
		city : req.body.rcity,
		location : req.body.rlocation,
		favouritefood : req.body.rfavouritefood,
		profilepicture : req.body.rprofilepicture,
		password : req.body.rpassword,

		mypoints : '0',
		myreservation : '0',
		mydeals : '0',

		utype : req.body.rtype,

		reviewedcount : '0',

		favouriterestaurant : req.body.rfavouriterestaurant
	};
	
	userModel.insert(user, function(result){

		console.log("lname : "+req.body.lname);

		req.session.name = req.body.lname;
		//req.session.uid = result[0].id;
		res.redirect('/login');
	});
});

router.get('/restaurentshowdetail/:id', (req, res)=>{
	userModel.getRestaurant(req.params.id, function(result){
		if(result.length > 0 ){
			console.log(result[0]);
			var Rdata = {
				rdata: result[0]
			};
			res.render('restaurent/restaurantshowdetail', Rdata);
		}else{
			res.redirect('restaurent/restaurantshow');
		}
	});
});
router.post('/restaurentshowdetail/:id', (req, res)=>{
	userModel.getRestaurant(req.params.id, function(result){
		if(result.length > 0 ){
			console.log(result[0]);
			var Rdata = {
				rdata: result[0]
			};
			res.render('restaurent/restaurantshowdetail', Rdata);
		}else{
			res.redirect('restaurent/restaurantshow');
		}
	});
});
	

router.post('/delete/:id', (req, res)=>{
	
	userModel.delete(req.params.id, function(success){
		if(success){
			res.redirect('/home/userlist');
		}else{
			res.redirect("/home/delete/"+req.params.id);
		}
	});
});
module.exports = router;