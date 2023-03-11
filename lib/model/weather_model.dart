class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int ? humidity;
  double? feels_like;
  int? pressure;
  String? icon;

  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.feels_like,
    this.pressure, 
    this.icon,
  });

  Weather.fromJSON(Map<String, dynamic> json){
    print(json);
    cityName = json["name"]??"";
    temp = json["main"]["temp"]??0.0;
    wind = json["wind"] ["speed"] ?? 0.0;
    pressure = json["main"] ["pressure"] ?? 0;
    humidity = json["main"] ["humidity"] ?? 0;
    feels_like = json["main"] ["feels_like"] ?? 0.0;
    icon = json["weather"] [0] ["icon"] ?? "";
  }

}