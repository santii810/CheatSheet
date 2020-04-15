/*
Añadir fragmento de código a tests

REF: https://explore.postman.com/templates/3769/visualizer---any-jsoncsv-as-a-table

*/




var template = `
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<style>
    .table {
        font-size: 12px;
    }
</style>
<div id="root"></div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.4.2/react.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.4.2/react-dom.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/babel-standalone/6.21.1/babel.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/react-csv-to-table@0.0.2/dist/index.min.js"></script>
<script type="text/babel">
let Table = window['react-csv-to-html-table'].CsvToHtmlTable;

class App extends React.Component {
    render() {
        return (
            <Table
                tableClassName='table table-striped table-dark table-hover'
                csvDelimiter=','
                {...this.props.data}
            />
        );
    }
}

pm.getData((err, data) => {
    ReactDOM.render(
        <App data={data} />,
        document.getElementById('root')
    );
});

</script>
`;


// Provide the props as per the documentation
// https://github.com/marudhupandiyang/react-csv-to-table
let tableProps = {
    data: pm.response.text(),
    csvDelimiter: ';',
    hasHeader: false
};

pm.visualizer.set(template, tableProps);
