class Config {
  final List<String> _carsName = ['Toyota', 'Lada', 'BMW'];
  final List<String> _toyotaName = ['Supra', 'Camry', 'Corolla'];
  final List<String> _ladaName = ['2101', '2102', '2103','2112'];
  final List<String> _bmwName = ['M5', 'M6', 'M8'];

  dynamic get getCarsName => _carsName;
  dynamic get getToyotaName => _toyotaName;
  dynamic get getLadaName => _ladaName;
  dynamic get getBmwName => _bmwName;
}
