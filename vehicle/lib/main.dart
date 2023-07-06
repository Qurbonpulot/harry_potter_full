import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              centerTitle: false)),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final List<Car> list;
  int selectedItem = -1;

  @override
  void initState() {
    super.initState();
    getDataFromServer();
  }

  void getDataFromServer() {
    list = [
      Car(01, "assets/cars/img_honda_city_car.png", "Honda City", "HGE 5295"),
      Car(02, "assets/cars/img_kia_seltos_car.png", "Kia Seltos", "HGE 5295"),
      Car(03, "assets/cars/img_toyota_land_cruiser_car.png",
          "Tayota Land Cruiser", "HGE 5295"),
      Car(04, "assets/cars/img_truck_car.png", "4x4 Truck", "HGE 5295"),
    ];

    setState(() {});
  }

  void selectCar(Car car) {
    selectedItem = list.indexOf(car);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Select Your Vehicle"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        itemCount: list.length + 1,
        itemBuilder: (context, i) {
          if (i < list.length) {
            final car = list[i];
            bool isSelected = selectedItem == i;
            return ItemWidget(
                isSelected: isSelected, car: car, selectCar: selectCar);
          }

          /// TODO: Alohida widgetga olib chiqilishi kerak!!!
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
                backgroundColor: const Color(0xFFBC0063).withOpacity(0.1),
                elevation: 0,
              ),
              onPressed: () {},
              child: const Text(
                "Add New Vehicle",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFBC0063)),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  final bool isSelected;
  final Car car;
  final void Function(Car) selectCar;

  const ItemWidget({
    Key? key,
    required this.isSelected,
    required this.car,
    required this.selectCar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            side: isSelected
                ? const BorderSide(color: Color(0xFFBC0063))
                : BorderSide.none),
        tileColor: const Color(0xFFF4F4F4),
        leading: Image(
          image: AssetImage(car.image),
          width: 100,
          fit: BoxFit.fitWidth,
        ),
        title: Text(
          car.name,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
          car.carNumber,
          style: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12),
        ),
        trailing: IconButton(
          icon: Icon(isSelected ? Icons.circle : Icons.circle_outlined,
              color: const Color(0xFFBC0063)),
          onPressed: () => selectCar(car),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      ),
    );
  }
}

class Car {
  int id;
  String image;
  String name;
  String carNumber;

  Car(this.id, this.image, this.name, this.carNumber);

  @override
  int get hashCode => Object.hash(id, name);

  @override
  bool operator ==(Object other) {
    return other is Car && other.id == id && other.name == name;
  }
}
