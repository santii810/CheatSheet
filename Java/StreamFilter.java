//filter stream printing

woNew.getFormItemList().stream().peek(System.out::println)
                            .filter(i -> i.getValue().equals(reqItem.getValue())).findAny()
                            .orElseThrow(() -> new ResourceNotFoundException("FormItem", "Value", reqItem.getValue()));
