var http = require('http');
var url = require('url');

var host = process.env.VCAP_APP_HOST || 'localhost';
var port = process.env.VCAP_APP_PORT || 3000

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write('<h1>Hello from the Cloud Foundry!</h1>');
  res.end('<h2>via: ' + host + ':' + port + '</h2>');
}).listen(port, null);

console.log('Server running at http://' + host + ':' + port + '/');