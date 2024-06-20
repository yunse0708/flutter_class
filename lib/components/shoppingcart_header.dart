import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';
import 'package:flutter_shoppingcart/components/weather_data.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildWeatherDetails(),
        SizedBox(
            height:
                50), // Increased spacing between weather details and header selector
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildWeatherDetails() {
    final selectedWeather = weatherDataList[selectedId]; 
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              '오늘의 날씨',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold), // Larger font size
            ),
            SizedBox(height: 20), // Increased spacing
            selectedWeather.imagePath.isNotEmpty
                ? Image.asset(
                    selectedWeather.imagePath,
                    width: 300, // Increased image size
                    height: 200, // Increased image size
                  )
                : Text(
                    selectedWeather.day,
                    style: TextStyle(fontSize: 24),
                  ),
            SizedBox(height: 20), // Increased spacing
            Text(
              '온도: ${selectedWeather.temperature}',
              style: TextStyle(fontSize: 24), // Larger font size
            ),
            SizedBox(height: 10),
            Text(
              '습도: ${selectedWeather.humidity}',
              style: TextStyle(fontSize: 24), // Larger font size
            ),
            SizedBox(height: 10),
            Text(
              '비 올 확률: ${selectedWeather.rainProbability}',
              style: TextStyle(fontSize: 24), // Larger font size
            ),
            SizedBox(height: 10),
            Text(
              '바람 속도: ${selectedWeather.windSpeed}',
              style: TextStyle(fontSize: 24), // Larger font size
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: weatherDataList.map((data) {
          int id = weatherDataList.indexOf(data);
          return _buildHeaderSelectorButton(id, data.day);
        }).toList(),
      ),
    );
  }

  Widget _buildHeaderSelectorButton(int id, String day) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        child: Text(
          day,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
      ),
    );
  }
}
