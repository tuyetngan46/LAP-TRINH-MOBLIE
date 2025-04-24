package com.example.duegiuaky221121514122.ui.Day2_Listview_Advanced;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.duegiuaky221121514122.R;
import java.util.ArrayList;

public class ListViewFragment extends Fragment implements IOnChildItemClick {
    private RecyclerView lvContact;
    private ImageView ivUser;
    private TextView tvName;
    private ContactAdapter adapter;

    public ListViewFragment() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_day2_ad_listview, container, false);

        lvContact = view.findViewById(R.id.lvContact);
        ivUser = view.findViewById(R.id.ivUser);
        tvName = view.findViewById(R.id.tvName);

        // Initialize data with different avatars
        ArrayList<ContactModel> listContact = new ArrayList<>();
        listContact.add(new ContactModel("Trần Trung Sơn", "0988111222", R.drawable.avatar));
        listContact.add(new ContactModel("Hồ Văn Đông", "0988111555",R.drawable.avatar1));
        listContact.add(new ContactModel("Ngô Thị Mẫn", "0988555222", R.drawable.avatar2));
        listContact.add(new ContactModel("Trần Trung Sơn", "0988111222", R.drawable.avatar3));
        listContact.add(new ContactModel("Trần Thị Bình", "0988111333",  R.drawable.avatar));
        listContact.add(new ContactModel("Ngô Thị Mẫn", "0988555222",  R.drawable.avatar2));
        listContact.add(new ContactModel("Hồ Văn Đông", "0988111555",R.drawable.avatar1));
        listContact.add(new ContactModel("Ngô Thị Mẫn", "0988555222", R.drawable.avatar2));
        listContact.add(new ContactModel("Trần Trung Sơn", "0988111222", R.drawable.avatar3));
        listContact.add(new ContactModel("Hồ Văn Đông", "0988111555",R.drawable.avatar1));
        listContact.add(new ContactModel("Ngô Thị Mẫn", "0988555222", R.drawable.avatar2));
        listContact.add(new ContactModel("Trần Trung Sơn", "0988111222", R.drawable.avatar3));


        lvContact.setLayoutManager(new LinearLayoutManager(getContext()));
        adapter = new ContactAdapter(listContact, this);
        lvContact.setAdapter(adapter);

        tvName.setText(getString(R.string.default_username));
        return view;
    }

    @Override
    public void onCallClick(int position) {
        ArrayList<ContactModel> listContact = adapter.getContactList(); // Cần thêm phương thức getContactList() trong ContactAdapter
        String phoneNumber = listContact.get(position).getPhoneNumber();
        Intent callIntent = new Intent(Intent.ACTION_DIAL);
        callIntent.setData(Uri.parse("tel:" + phoneNumber));
        startActivity(callIntent);
    }

    @Override
    public void onEditClick(int position) {
        ArrayList<ContactModel> listContact = adapter.getContactList(); // Cần thêm phương thức getContactList() trong ContactAdapter
        ContactModel contact = listContact.get(position);
        ivUser.setImageResource(contact.getAvatarResId());
        tvName.setText(contact.getName());
    }
}