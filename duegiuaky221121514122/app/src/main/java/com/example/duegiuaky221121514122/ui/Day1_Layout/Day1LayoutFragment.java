package com.example.duegiuaky221121514122.ui.Day1_Layout;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.example.duegiuaky221121514122.databinding.FragmentDay1LayoutBinding;


public class Day1LayoutFragment extends Fragment {


    private FragmentDay1LayoutBinding binding;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        binding = FragmentDay1LayoutBinding.inflate(inflater, container, false);
        View root = binding.getRoot();


        // Cập nhật dữ liệu động (ví dụ: thay đổi tên người dùng, thời gian, tiêu đề bài viết)
        binding.tvUserName.setText("Trần Văn B");
        binding.tvTime.setText("15 phút trước");
        binding.tvTitle.setText("Chuyến đi thật tuyệt vời!");


        // Xử lý sự kiện click cho các nút
        binding.btnLike.setOnClickListener(v ->
                Toast.makeText(requireContext(), "Bạn đã thích bài viết!", Toast.LENGTH_SHORT).show());


        binding.btnComment.setOnClickListener(v ->
                Toast.makeText(requireContext(), "Bạn đã nhấn vào bình luận!", Toast.LENGTH_SHORT).show());


        binding.btnShare.setOnClickListener(v ->
                Toast.makeText(requireContext(), "Bạn đã chia sẻ bài viết!", Toast.LENGTH_SHORT).show());


        return root;
    }


    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}
