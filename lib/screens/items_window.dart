import 'package:flutter/material.dart';

class ItemsWindow extends StatefulWidget {
  const ItemsWindow({Key? key}) : super(key: key);

  @override
  State<ItemsWindow> createState() => _ItemsWindowState();
}

class _ItemsWindowState extends State<ItemsWindow> {
  final List<Map<String, dynamic>> teaCollectionLocations = [
    {
      'name': 'Tea Location 1',
      'description': 'Description of Tea Location 1',
      'latitude': 123.456,
      'longitude': 456.789,
      'weight': 50,
      'waterValue': 20.0,
      'price': 50.0,
      'isFuture': false,
    },
    {
      'name': 'Tea Location 2',
      'description': 'Description of Tea Location 2',
      'latitude': 123.789,
      'longitude': 456.123,
      'weight': 70,
      'waterValue': 25.0,
      'price': 70.0,
      'isFuture': true,
    },
    // Add more tea collection locations as needed
  ];

  void showUpdatePopup(int index) {
    TextEditingController weightController = TextEditingController(text: teaCollectionLocations[index]['weight'].toString());
    TextEditingController waterValueController = TextEditingController(text: teaCollectionLocations[index]['waterValue'].toString());
    TextEditingController priceController = TextEditingController(text: teaCollectionLocations[index]['price'].toString());
    bool isFuture = teaCollectionLocations[index]['isFuture'];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update Details'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(labelText: 'Weight of Tea Leaves'),
                ),
                TextField(
                  controller: waterValueController,
                  decoration: InputDecoration(labelText: 'Estimated Value of Water'),
                ),
                TextField(
                  controller: priceController,
                  decoration: InputDecoration(labelText: 'Price'),
                ),
                CheckboxListTile(
                  title: Text('For Future Use'),
                  value: isFuture,
                  onChanged: (bool? value) {
                    setState(() {
                      isFuture = value!;
                    });
                  },
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  teaCollectionLocations[index]['weight'] = int.tryParse(weightController.text) ?? teaCollectionLocations[index]['weight'];
                  teaCollectionLocations[index]['waterValue'] = double.tryParse(waterValueController.text) ?? teaCollectionLocations[index]['waterValue'];
                  teaCollectionLocations[index]['price'] = double.tryParse(priceController.text) ?? teaCollectionLocations[index]['price'];
                  teaCollectionLocations[index]['isFuture'] = isFuture;
                });
                Navigator.of(context).pop();
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE92E00),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove shadow
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white, size: 30,),
          onPressed: () {
            // Handle menu button tap
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white, size: 30,),
            onPressed: () {
              // Handle settings button tap
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: teaCollectionLocations.length,
        itemBuilder: (context, index) {
          final location = teaCollectionLocations[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            color: Colors.white, // Change card background color to white
            child: ListTile(
              leading: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/food.jpg'), // Provide your image path here
                  ),
                ),
              ),
              title: Text(location['name']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(location['description']),
                  SizedBox(height: 4.0),
                  Text(
                    'Latitude: ${location['latitude']}, Longitude: ${location['longitude']}',
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Weight: ${location['weight']}',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Change text color to black
                        ),
                      ),
                      Text(
                        'Price: ${location['price']}',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Change text color to black
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.add_shopping_cart, size: 25,),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Confirm Item Addition'),
                        content: Text('Do you want to add ${location['name']} to your shopping cart?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              // Perform action to add the item to the shopping cart
                              // For example, you can call a function to add the item to the cart
                              // addToCart(location);
                              Navigator.of(context).pop();
                            },
                            child: Text('Add to Cart'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
