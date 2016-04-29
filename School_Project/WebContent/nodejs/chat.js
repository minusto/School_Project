var http = require('http');
var fs = require('fs');
var socketio = require('socket.io');

var server = http.createServer(function(request, response) {
	fs.readFile('chat.jsp', function(error, data) {
		response.writeHead(200, {
			'Content-Type' : 'text/html; charset=UTF-8'
		});
		response.end(data);
	});
}).listen(50000, function() {
	console.log('Server on ( 50000 port )');
});

var io = socketio.listen(server);
io.sockets.on('connection', function(socket) {
	socket.on('join', function(data) {
		socket.join(data);
		socket.room = data;
	});
 
	socket.on('message', function(data) {
		io.sockets.in(socket.room).emit('message', data);
	});
});
