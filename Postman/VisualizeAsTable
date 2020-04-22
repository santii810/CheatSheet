// Template colgada en Postman
//https://explore.postman.com/templates/4220/visualizer-table


var template = `
    <style type="text/css">
        .tftable {font-size:14px;color:#333333;width:100%;border-width: 1px;border-color: #87ceeb;border-collapse: collapse;}
        .tftable th {font-size:18px;background-color:#87ceeb;border-width: 1px;padding: 8px;border-style: solid;border-color: #87ceeb;text-align:left;}
        .tftable tr {background-color:#ffffff;}
        .tftable td {font-size:14px;border-width: 1px;padding: 8px;border-style: solid;border-color: #87ceeb;}
        .tftable tr:hover {background-color:#e0ffff;}
    </style>
    
    <table class="tftable" border="1">
        <tr>
            <th>FormSpec</th>
            <th>WO id</th>
        </tr>
        
        {{#each response.content}}
            <tr>
                <td>{{type}}</td>
                <td>{{woId}}</td>
            </tr>
        {{/each}}
    </table>
`;

pm.visualizer.set(template, {
    response: pm.response.json()
});
