package com.example.duegiuaky221121514122.ui.Day3_Network_Weather;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.List;

import com.example.duegiuaky221121514122.databinding.FragmentDay3WeatherActivityListNewsBinding;
import com.example.duegiuaky221121514122.ui.Day3_Network_Weather.adapter.HourAdapter;
import com.example.duegiuaky221121514122.ui.Day3_Network_Weather.model.Weather;
import com.example.duegiuaky221121514122.ui.Day3_Network_Weather.network.APIWeather;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
public class WeatherFragment extends Fragment {
    private FragmentDay3WeatherActivityListNewsBinding binding;
    private RecyclerView rvHour;
    private TextView tvTem;
    private TextView tvStatus;

    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        binding = FragmentDay3WeatherActivityListNewsBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        tvTem = binding.tvTem;
        tvStatus = binding.tvStatus;

        getHours();

        LinearLayoutManager layoutManager = new LinearLayoutManager(requireContext(),
                LinearLayoutManager.HORIZONTAL, false);

        rvHour = binding.rvHour;
        rvHour.setLayoutManager(layoutManager);

        return root;
    }


    private void getHours() {
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl(APIWeather.BASE_URL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        APIWeather service = retrofit.create(APIWeather.class);

        service.getHour().enqueue(new Callback<List<Weather>>() {
            @Override
            public void onResponse(Call<List<Weather>> call, Response<List<Weather>> response) {
                if (response.body() == null) return;

                List<Weather> listWeather = response.body();
                HourAdapter adapter = new HourAdapter(requireActivity(), listWeather);
                rvHour.setAdapter(adapter);

                // Hiển thị dữ liệu thời tiết đầu tiên
                Weather weather = listWeather.get(0);
                tvTem.setText(weather.getTemperature().getValue().intValue() + "°");
                tvStatus.setText(weather.getIconPhrase());
            }

            @Override
            public void onFailure(Call<List<Weather>> call, Throwable t) {
            }
        });
    }
}