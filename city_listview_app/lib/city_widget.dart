import 'package:flutter/material.dart';
import 'city_data.dart';

class CityWidget extends StatelessWidget {
  final City city;

  const CityWidget(this.city, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          city.imageUrl,
          fit: BoxFit.cover,
          width: 100.0,
        ),
        title: Text(
          city.name,
          style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(city.country),
            Text('Population: ${city.population}'),
          ],
        ),
        onTap: () {
          _showSnackBar(context, city);
        },
      ),
    );
  }

  void _showSnackBar(BuildContext context, City item) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    final SnackBar snackBar = SnackBar(
      content: Text("${item.name} is a city in ${item.country}"),
      backgroundColor: Colors.amber,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}