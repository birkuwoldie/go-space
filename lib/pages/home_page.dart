import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWeight;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: _deviceHeight,
        width: _deviceWeight,
        padding: EdgeInsets.symmetric(horizontal: _deviceWeight * 0.01),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _pageTitle(),
              _destionationDropDownWidget(),
            ]),
      ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "Go To Space",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/space.jpg"),
        ),
      ),
    );
  }

  Widget _destionationDropDownWidget() {
    List<String> _items = [
      "James web station",
      "Preneure Station",
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: _deviceWeight*0.01),
      width: _deviceWeight,
      decoration: BoxDecoration(color:   const Color.fromRGBO(53, 53, 53, 1.0),
      borderRadius: BorderRadius.circular(10,)),
      child: DropdownButton(
        // underline: Container(),
        value: _items.first,
        onChanged: (_) {},
        items: _items.map((e) {
      return DropdownMenuItem(
        value: e,
        child: Text(e),
      );
    },).toList(),
       underline: Container(),
       dropdownColor: const Color.fromRGBO(
        53, 53, 53, 1.0
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
