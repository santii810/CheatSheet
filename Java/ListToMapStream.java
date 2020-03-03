/*De una lista de objetos filtro los que tienen nombre TIPO-SPLITTER.
* Luego obtengo sus valores y los meto en un mapa tal que la clave es lo obtenido y el valor el número de veces que aparece
* En la segunda linea recorro el mapa concatenandolo


        Map<String, Long> tipoSplitterList = items.stream().filter(i -> i.getFormItemSpec().getNamingId().equals("TIPO-SPLITTER"))
                .map(FormItem::getValue).collect(Collectors.toMap(Function.identity(), v -> 1L, Long::sum));
        this.tivoDV = tipoSplitterList.keySet().stream().map(i -> i + "_" + tipoSplitterList.get(i)).collect(Collectors.joining("|"));
