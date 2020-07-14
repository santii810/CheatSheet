tests["Status code is 200"] = responseCode.code === 200;

var data = JSON.parse(responseBody);


var itemSincronismo = data.items.filter(item => item.name == 'MEDIDA-CTO')[0]
console.log(itemSincronismo);

tests["Sincronismo OK"] = itemSincronismo.status == "Test OK";
tests["Puerto OK"] = itemSincronismo.oltPort < 17;
tests["Slot bien"] = itemSincronismo.oltCard < 7;



//---------------------------------------------------------
tests["Status code is 200"] = responseCode.code === 200;

var data = JSON.parse(responseBody);
pm.environment.set("user", data.jwtToken)
