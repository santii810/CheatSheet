if(pm.environment.get('hostname') == 'local'){
    var users = [
        ['admin','santi','santi'],
        ['bqa','bqa','bqa'],
        ['tecnico','tecnico1','tecnico1'],
        ['ecbqa','ec_bqa','ec_bqa']
    ]
}else{
        var users = [
        ['admin','optare_admin','optare_admin'],
        ['bqa','bqa','bqa'],
        ['tecnico','optare_tecnico','optare_tecnico'],
        ['ecbqa','optare_ec_bqa','optare_ec_bqa']
    ]
    
}
function getRequest(user,pass){
    const echoPostRequest = {
    url: pm.environment.get('Host')+'login',
    method: 'POST',
    header: 'Content-Type:application/json',
    body: {
    mode: 'application/json',
    raw: JSON.stringify(
        {
        	username:user,
        	password:pass,
        })
    }
    };
    return echoPostRequest;
}


users.forEach(function (user, indice, array) {
    pm.sendRequest(getRequest(user[1],user[2]), function (err, res) {
        console.log(err ? err : res.json());
            if (err === null) {
                var responseJson = res.json();
                pm.environment.set(user[0], responseJson.token)
            }
        });
});
