package com.example.duegiuaky221121514122.ui.Day3_Network_Weather.network;


import java.util.List;

import com.example.duegiuaky221121514122.ui.Day3_Network_Weather.model.Weather;
import retrofit2.Call;
import retrofit2.http.GET;

public interface APIWeather {
    public static String BASE_URL = "https://dataservice.accuweather.com";
    @GET("/forecasts/v1/hourly/12hour/353412?apikey=tbFOLXfZmAxAexEYOmXhcxnbZBDjQBSh&language=vi-vn&metric=true")
    Call<List<Weather>> getHour();

    @GET("/forecasts/v1/daily/5day/353412?apikey=tbFOLXfZmAxAexEYOmXhcxnbZBDjQBSh&language=vi-vn&metric=true")
    Call<List<Weather>> getDay();
}