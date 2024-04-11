import 'package:flutter/material.dart';

import 'final_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int? selectedRadioValue;
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();

  void handleRadioValueChanged(int? value) {
    setState(() {
      selectedRadioValue = value;
    });

    print(selectedRadioValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xFFD80000),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 180,
                child: const Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          'CHECKOUT',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            letterSpacing: 4.0,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'PAYMENT',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            letterSpacing: 2.0,
                          ),
                        ),
                        Text(
                          'CONFIRMATION',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            letterSpacing: 2.0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height -
                    kToolbarHeight - // Height of the app bar
                    MediaQuery.of(context)
                        .padding
                        .top, // Height of the system status bar
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'PAYMENT METHOD',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              letterSpacing: 2.0,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromARGB(255, 165, 158, 158),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Radio<int>(
                                        value: 1,
                                        groupValue: selectedRadioValue,
                                        onChanged: handleRadioValueChanged,
                                        activeColor: Colors.red,
                                      ),
                                      const Text(
                                        'Card Payment',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      // Image.asset(
                                      //     "../../assets/images/visa.png",
                                      //     width: 70,
                                      //     height: 70,
                                      //     fit: BoxFit.cover)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromARGB(255, 165, 158, 158),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Radio<int>(
                                        value: 2,
                                        groupValue: selectedRadioValue,
                                        onChanged: handleRadioValueChanged,
                                        activeColor: Colors.red,
                                      ),
                                      const Text(
                                        'Payment at Pickup',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      // Image.asset(
                                      //     "../../assets/images/visa.png",
                                      //     width: 70,
                                      //     height: 70,
                                      //     fit: BoxFit.cover)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Visibility(
                            visible: selectedRadioValue ==
                                1, // Show if selected value is 1
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: TextFormField(
                                    controller: _controller2,
                                    decoration: const InputDecoration(
                                      labelText: 'Card Holder Name',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                  height: 40,
                                  child: TextFormField(
                                    controller: _controller3,
                                    decoration: const InputDecoration(
                                      labelText: 'Card Number',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          30, // Adjust width as needed
                                      child: TextFormField(
                                        controller:
                                            _controller1, // Unique controller for Expire Date
                                        decoration: const InputDecoration(
                                          labelText: 'Expire Date',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                        width: 20), // Adjust width as needed
                                    SizedBox(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width /
                                              2 -
                                          30, // Adjust width as needed
                                      child: TextFormField(
                                        controller:
                                            _controller1, // Unique controller for CCV
                                        decoration: const InputDecoration(
                                          labelText: 'CCV',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const FinalPage(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: new Color(0xFFd80000),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  "Pay Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
