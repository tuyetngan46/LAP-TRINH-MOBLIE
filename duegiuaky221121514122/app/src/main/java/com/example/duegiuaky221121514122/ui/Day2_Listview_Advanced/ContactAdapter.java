package com.example.duegiuaky221121514122.ui.Day2_Listview_Advanced;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.example.duegiuaky221121514122.R;
import java.util.ArrayList;

public class ContactAdapter extends RecyclerView.Adapter<ContactAdapter.ViewHolder> {
    private final ArrayList<ContactModel> contactList;
    private final IOnChildItemClick listener;

    public ContactAdapter(ArrayList<ContactModel> contactList, IOnChildItemClick listener) {
        this.contactList = contactList;
        this.listener = listener;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.fragment_day2_ad_itemcontact, parent, false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        ContactModel contact = contactList.get(position);
        holder.contactName.setText(contact.getName());
        holder.tvSubtitle.setText(contact.getPhoneNumber());
        holder.ivAvatar.setImageResource(contact.getAvatarResId());

        holder.callButton.setOnClickListener(v -> listener.onCallClick(position));
        holder.editButton.setOnClickListener(v -> listener.onEditClick(position));
    }

    @Override
    public int getItemCount() {
        return contactList.size();
    }

    public ArrayList<ContactModel> getContactList() {
        return contactList;
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView contactName;
        TextView tvSubtitle;
        ImageView ivAvatar;
        ImageButton callButton;
        ImageButton editButton;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            contactName = itemView.findViewById(R.id.contactName);
            tvSubtitle = itemView.findViewById(R.id.tvSubtitle);
            ivAvatar = itemView.findViewById(R.id.ivAvatar);
            callButton = itemView.findViewById(R.id.callButton);
            editButton = itemView.findViewById(R.id.editButton);
        }
    }
}