class WeatherData {
  final String day;
  final String imagePath;
  final String temperature;
  final String humidity;
  final String rainProbability;
  final String windSpeed;

  WeatherData({
    required this.day,
    required this.imagePath,
    required this.temperature,
    required this.humidity,
    required this.rainProbability,
    required this.windSpeed,
  });
}

List<WeatherData> weatherDataList = [
  WeatherData(
    day: '월',
    imagePath: 'assets/Sun.png',
    temperature: '30°C',
    humidity: '60%',
    rainProbability: '10%',
    windSpeed: '5 m/s',
  ),
  WeatherData(
    day: '화',
    imagePath: 'assets/smoke.png',
    temperature: '28°C',
    humidity: '65%',
    rainProbability: '20%',
    windSpeed: '4 m/s',
  ),
  WeatherData(
    day: '수',
    imagePath: 'assets/Snow.png',
    temperature: '5°C',
    humidity: '70%',
    rainProbability: '50%',
    windSpeed: '8 m/s',
  ),
  WeatherData(
    day: '목',
    imagePath: 'assets/Wind.png',
    temperature: '20°C',
    humidity: '50%',
    rainProbability: '15%',
    windSpeed: '6 m/s',
  ),
  WeatherData(
    day: '금',
    imagePath: 'assets/Sun.png',
    temperature: '32°C',
    humidity: '55%',
    rainProbability: '5%',
    windSpeed: '7 m/s',
  ),
  WeatherData(
    day: '토',
    imagePath: 'assets/smoke.png',
    temperature: '27°C',
    humidity: '60%',
    rainProbability: '30%',
    windSpeed: '5 m/s',
  ),
  WeatherData(
    day: '일',
    imagePath: 'assets/Snow.png',
    temperature: '4°C',
    humidity: '75%',
    rainProbability: '40%',
    windSpeed: '6 m/s',
  ),
];
