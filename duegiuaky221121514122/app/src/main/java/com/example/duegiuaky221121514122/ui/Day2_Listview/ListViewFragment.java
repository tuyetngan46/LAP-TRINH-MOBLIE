package com.example.duegiuaky221121514122.ui.Day2_Listview;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.example.duegiuaky221121514122.R;
import java.util.ArrayList;
import java.util.List;
public class ListViewFragment extends Fragment {

    private RecyclerView recyclerView;
    private ContactAdapter adapter;
    private List<ContactModel> contactList;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        // Inflate layout cho Fragment
        View view = inflater.inflate(R.layout.fragment_day2_listview, container, false);

        // Khởi tạo RecyclerView
        recyclerView = view.findViewById(R.id.recyclerView);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));

        // Tạo danh sách liên lạc mẫu
        contactList = new ArrayList<>();
        contactList.add(new ContactModel("Nguyen Van A", "0123456789", R.drawable.avatar));
        contactList.add(new ContactModel("Tran Thi B", "0987654321", R.drawable.avatar1));
        contactList.add(new ContactModel("Le Van C", "0912345678", R.drawable.avatar2));
        contactList.add(new ContactModel("Nguyen Van A", "0123456789", R.drawable.avatar3));
        contactList.add(new ContactModel("Tran Thi B", "0987654321", R.drawable.avatar));
        contactList.add(new ContactModel("Le Van C", "0912345678", R.drawable.avatar1));
        contactList.add(new ContactModel("Nguyen Van A", "0123456789", R.drawable.avatar2));
        contactList.add(new ContactModel("Tran Thi B", "0987654321", R.drawable.avatar3));
        contactList.add(new ContactModel("Le Van C", "0912345678", R.drawable.avatar));

        // Gắn adapter vào RecyclerView
        adapter = new ContactAdapter(contactList);
        recyclerView.setAdapter(adapter);

        return view;
    }
}
