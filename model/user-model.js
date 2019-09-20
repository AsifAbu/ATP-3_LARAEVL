var db = require('./db');

module.exports={

	get: function(userId, callback){
		var sql = "select * from user where id="+userId;

		db.getResult(sql, function(result){
			callback(result);
		});
	},
	getRestaurant: function(Id, callback){
		var sql = "select * from restaurant_stuff where id="+Id;

		db.getResult(sql, function(result){
			callback(result);
		});
	},
	getAll: function(callback){
		var sql = "select * from user";
		db.getResult(sql, function(results){
			callback(results);
		});
	},
	validate: function(user, callback){
		var sql = "select * from user where email='"+user.lemail+"' and password='"+user.lpassword+"'";
		db.getResult(sql, function(result){
			console.log(sql);
			callback(result);
		});
	},
	getType: function(id, callback){
		var sql = "select type from user where id="+id;
		db.getResult(sql, function(result){
			console.log(sql);
			callback(result);
		});
	},
	insert: function(user, callback){
		var d = new Date().toLocaleString();
		var sql = "insert into user values (, '"+d+"','"+user.firstname+"','"+user.lastname+"','"+user.mobile+"','"+user.dateofbirth+"','"+user.gender+"','"+user.email+"','"+user.country+"','"+user.city+"','"+user.location+"','"+user.favouritefood+"','"+user.profilepicture+"','"+user.password+"','"+user.mypoints+"','"+user.myreservation+"','"+user.mydeals+"','"+user.utype+"','"+user.reviewedcount+"','"+user.favouriterestaurant+"')";
		console.log(sql);
		db.execute(sql, function(status){
			callback(status);
		});
	},
	update: function(user, callback){
		var sql = "update user set username='"+user.uname+"',password='"+user.password+"', type='"+user.type+"' where id="+user.id;
		db.execute(sql, function(status){
			callback(status);
		});
	},
	delete: function(userId, callback){
		var sql = "delete from user where id="+userId;
		db.execute(sql, function(status){
			callback(status);
		});
	},
	getAllRestaurants: function(callback){
		var sql = "select * from restaurant_stuff";
		db.execute(sql,function(status){
			callback(status);
		});
	}
	/*searchItem: function(itemName, callback){
		var sql = "select * from restaurant_stuff where items like %'"+itemName+"'%";
		db.execute(sql,function(status){
			callback(status);
		});
	}*/
}



