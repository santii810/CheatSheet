function getProject(){
    const echoPostRequest = {
    url: pm.environment.get('host') + 'projects',
    method: 'GET',
     "header": [
        {
          "key": "Content-Type",
          "value": "application/json"
        },
        {
          "key": "Authorization",
          "value": pm.environment.get('bqa')
        }
      ],
    body: {
    mode: 'application/json'
    }
    };
    return echoPostRequest;
}

function getCluster(projectCode){
    const echoPostRequest = {
    url: pm.environment.get('host') + 'clusters?projectCode=' + projectCode ,
    method: 'GET',
     "header": [
        {
          "key": "Content-Type",
          "value": "application/json"
        },
        {
          "key": "Authorization",
          "value": pm.environment.get('bqa')
        }
      ],
    body: {
    mode: 'application/json'
    }
    };
    return echoPostRequest;
}



pm.sendRequest(getProject(), function (err, res) {
    console.log(err ? err : res.json());
        if (err === null) {
            var responseJson = res.json();
            pm.environment.set("projectCode", responseJson.content[0].code)
        }
    });
    
pm.sendRequest(getCluster(pm.environment.get('projectCode')), function (err, res) {
    console.log(err ? err : res.json());
        if (err === null) {
            var responseJson = res.json();
            pm.environment.set("clusterCode", responseJson.content[0].code)
        }
    });
