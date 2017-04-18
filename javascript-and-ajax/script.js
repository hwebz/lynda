var button = document.getElementById('btn');
button.onclick = loadAjax;

function loadAjax() {
	var request;
	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}
	// request.open('GET', 'data.txt');
	// request.open('GET', 'data.xml');
	request.open('GET', 'data.json');
	request.onreadystatechange = function() {
		if (request.readyState === 4 && request.status === 200) {
			// document.writeln(request.responseText);
			/*var modify = document.getElementById('update');
			modify.innerHTML = request.responseText;

			modify = document.getElementsByTagName('li');
			for (var i = 0; i < modify.length; i++) {
				modify[i].innerHTML = request.responseText;
			}*/

			// console.log(request.responseXML.getElementsByTagName('name')[1].childNodes[0]);
			/*console.log(request.responseXML.getElementsByTagName('name')[1].firstChild.nodeValue);

			var items = request.responseXML.getElementsByTagName('name');
			var output = '<ul>';
			for (var i = 0; i < items.length; i++) {
				output += '<li>' + items[i].firstChild.nodeValue + '</li>';
			}
			output += '</ul>';
			document.write(output);*/

			var items = JSON.parse(request.responseText);
			var output = '<ul>';
			for (var i = 0; i < items.speakers.length; i++) {
				output += '<li>' + items.speakers[i].name + '</li>';
			}	
			output += '</ul>';
			document.getElementById('update').innerHTML = output;
		}
	};
	request.send();
}

$("#update").load('data.txt');