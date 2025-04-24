package com.example.duegiuaky221121514122.ui.Day3_Network_RecyclerView.network;

import java.util.List;
import com.example.duegiuaky221121514122.ui.Day3_Network_RecyclerView.model.Item;
import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Headers;

public interface API250_movies {
    String SERVER_URL = "https://imdb236.p.rapidapi.com/"; // Đảm bảo URL có dấu "/" ở cuối

    @Headers({
            "x-rapidapi-host: imdb236.p.rapidapi.com",
            "x-rapidapi-key: 6144d0aee6mshb8a54aad071de82p1d52dbjsn1e1a8c0dda84"
    })
    @GET("imdb/top250-movies")
    Call<List<Item>> getListData();
}