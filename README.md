# Weather App - Stemm One Cloudworks

## Description
This app uses the OpenWeatherMap API to get weather information of a place by their latitude and longitude

```bash
  https://openweathermap.org/api
```
## Features

- Firebase Auth Implementation
- Login / Signup Screens for Auth
- Open Weather Map API Integration

## API Reference

#### Get all weather information

```http
  GET /api/items
  https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&appid=51e154b61c72032ef18f3b7eea32a959
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `lat` | `string` | **Required**. 33.44 |
| `lon` | `string` | **Required**. 94.04 |
| `appid` | `string` | **Required**. Your API key |



