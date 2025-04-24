package com.example.duegiuaky221121514122.ui.Day2_Activity;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import androidx.navigation.fragment.NavHostFragment;

import com.example.duegiuaky221121514122.R;
import com.example.duegiuaky221121514122.databinding.FragmentDay2ProfileBinding;
public class ProfileFragment extends Fragment implements View.OnClickListener {
    private FragmentDay2ProfileBinding binding;
    private TextView tvUser;
    private static final int REQUEST_CODE = 1;

    @Override
    public View onCreateView(@NonNull LayoutInflater inflater,
                             ViewGroup container, Bundle savedInstanceState) {

        // Inflate binding
        binding = FragmentDay2ProfileBinding.inflate(inflater, container, false);
        View root = binding.getRoot();

        // Ánh xạ view
        tvUser = binding.tvUsername;

        if (getArguments() != null) {
            String user = getArguments().getString("USER_NAME");
            tvUser.setText(user);
        }

        // Thiết lập sự kiện
        binding.btnEdit.setOnClickListener(this);

        getParentFragmentManager().setFragmentResultListener("edit_request_key", getViewLifecycleOwner(), (requestKey, bundle) -> {
            String result = bundle.getString("RESULT");
            if (result != null) {
                tvUser.setText(result);
            }
        });

        return root;
    }

    @Override
    public void onClick(View view){
        if (view.getId() == R.id.btnEdit) {
            onEdit();
        }
    }
    private void onEdit(){
        Bundle bundle = new Bundle();
        bundle.putString("USER_NAME", tvUser.getText().toString());
        NavController navController = NavHostFragment.findNavController(this);
        navController.navigate(R.id.action_nav_day2_activity_profile_to_nav_day2_activity_edituser,bundle);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        binding = null;
    }
}