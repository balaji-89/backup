package com.example.autocompletionjava;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Color;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.ListView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
      String[] fruits={"Mango","Apple","Orange","Pears","EthoOnnu"};
      String[] uses={"Juice","Heart","tangy","kaarpu","EthoOnnu"};
      ListView list;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ArrayAdapter<String> array=new ArrayAdapter<String>(this, android.R.layout.simple_spinner_dropdown_item,fruits);
        ArrayAdapter<String> auto=new ArrayAdapter<String>(this,android.R.layout.select_dialog_item,fruits);
        AutoCompleteTextView autoComplete=findViewById(R.id.autoCompleteTextView);
        autoComplete.setThreshold(1);
        autoComplete.setAdapter(auto);
        autoComplete.setTextColor(Color.BLUE);
        list=findViewById(R.id.listView);
        list.setAdapter(array);
        list.setOnItemClickListener((parent, view, position, id) -> {
            Toast.makeText(this, "use of"+fruits[position]+"is"+uses[position], Toast.LENGTH_SHORT).show();
        });
    }
}