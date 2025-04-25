class City {
  final String name;
  final String imageName;
  final String population;
  final String country;

  City({
    required this.name,
    required this.country,
    required this.population,
    required this.imageName,
  });

  String get imageUrl {
    return 'https://raw.githubusercontent.com/o7planning/rs/master/flutter/city/$imageName';
  }
}

// Danh sách gốc
List<City> baseCities = [
  City(
      name: "Delhi",
      country: "India",
      population: "19 mill",
      imageName: "delhi.png"),
  City(
      name: "London",
      country: "Britain",
      population: "8 mill",
      imageName: "london.png"),
  City(
      name: "Vancouver",
      country: "Canada",
      population: "2.4 mill",
      imageName: "vancouver.png"),
  City(
      name: "New York",
      country: "USA",
      population: "8.1 mill",
      imageName: "newyork.png"),
  City(
      name: "Paris",
      country: "France",
      population: "2.2 mill",
      imageName: "paris.png"),
  City(
      name: "Berlin",
      country: "Germany",
      population: "3.7 mill",
      imageName: "berlin.png"),
];

// Tạo danh sách lớn bằng cách lặp lại baseCities
List<City> allCities = List.generate(
  100, // Số lượng phần tử (có thể tăng lên nếu muốn)
      (index) {
    City baseCity = baseCities[index % baseCities.length];
    return City(
      name: "${baseCity.name} ${index + 1}",
      country: baseCity.country,
      population: baseCity.population,
      imageName: baseCity.imageName,
    );
  },
);