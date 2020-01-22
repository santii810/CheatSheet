    public Map<Integer, OperatorTemplate> findOperators() {
        return operatorRepository.findAll().stream().collect(Collectors.toMap(OperatorTemplate::getId, operatorTemplate -> operatorTemplate));
    }

    public List<String> findCompanyNames() {
        return companyRepository.findAll().stream().map(Company::getName).collect(Collectors.toList());
   }
