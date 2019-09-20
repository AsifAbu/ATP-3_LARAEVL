//DECLARATION
var express 		= require('express');
var bodyParser 		= require('body-parser');
var exSession 		= require('express-session');
var cookieParser 	= require('cookie-parser');
var login			= require('./controllers/login');
var home			= require('./controllers/home');
var logout			= require('./controllers/logout');
var app  			= express();
var port 			= 3000;


//CONFIGURATION
app.set('view engine', 'ejs');

//MIDDLEWARES
app.use(exSession({secret: 'my top secret code', saveUninitialized: true, resave: false}));
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());
app.use('/login', login);
app.use('/home', home);
app.use('/logout', logout);
app.use('/', home);
app.use('/assets', express.static('assets'));
app.use('/image', express.static('image'));

//ROUTES
/*app.get('/', (req,res)=>{
		res.send('Index page');
		res.render()
});*/

app.get('/login', (req, res)=>{
	res.render('login');
});
app.get('/home', (req, res)=>{
	res.render('index');
});
app.get('/index', (req, res)=>{
	res.render('index');
});
/*app.get('/registration', (req, res)=>{
	res.render('registration');
});*/
/*app.post('/restaurentshow', (req, res)=>{
	res.render('/restaurent/restaurentshow');
});*/


/*app.get('/setCookie', (req,res)=>{
	res.cookie('cookie1', 'first cookie');
	res.send("done");
});

app.get('/setCookie', (req,res)=>{
	res.cookie('cookie1', 'first cookie');
	res.send("done");
});

app.get('/viewCookie', (req,res)=>{
	res.send(req.cookies['cookie1']);
});

app.get('/rmCookie', (req,res)=>{
	res.clearCookie('cookie1');
	res.send('Done');
});
*/

//SERVER STARTUP
app.listen(port, ()=>console.log('server started at '+port+"..."));