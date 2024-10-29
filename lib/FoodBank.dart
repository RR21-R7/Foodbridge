
class FoodBank {
  final String name;
  final String address;
  final List<String> availableFoods;

  FoodBank({required this.name, required this.address, required this.availableFoods});
}

final List<FoodBank> foodBanks = [
  FoodBank(
    name: 'Klang Food Bank',
    address: 'Jalan Serling 20, 41200, Klang',
    availableFoods: ['Rice', 'Beans', 'Canned Vegetables', 'Milk'],
  ),
  FoodBank(
    name: 'Yayasan Food Bank',
    address: 'Bukit Angkat, 43000, Kajang',
    availableFoods: ['Bread', 'Pasta', 'Cereal', 'Eggs'],
  ),
  FoodBank(
    name: 'PJ City Food Bank',
    address: 'Jalan Sungai Jernih, 46050, Petaling Jaya,',
    availableFoods: ['Fruits', 'Vegetables', 'Juice', 'Snacks'],
  ),
  FoodBank(
      name: 'Pemurah Food Bank',
      address: 'Kampung Sg.Balak, 43000, Cheras',
      availableFoods: ['Fruits', 'Vegetables', 'Juice', 'Snacks']
  ),
  FoodBank(
      name: 'Muhibbah Food Bank',
      address: 'Kawasan Perusahaan, 70450, Senawang',
      availableFoods: ['Fruits', 'Vegetables', 'Juice', 'Snacks']
  ),
  FoodBank(
      name: '448 Food Bank',
      address: 'Taman Seri Orkid, 81300, Skudai',
      availableFoods: ['Fuits', 'Vegetables', 'Juice', 'Snacks']
  )
];

