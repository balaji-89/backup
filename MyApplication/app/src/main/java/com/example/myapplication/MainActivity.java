package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
public class MainActivity extends AppCompatActivity implements View.OnClickListener{
    Button b1,b2;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d("print","REached oncreate");
        setContentView(R.layout.activity_main);
        b1=findViewById(R.id.button);
        b2=findViewById(R.id.button2);
//        b1.setOnClickListener(this);
//        b2.setOnClickListener(this);
    }
    public void onClick(View view){
        if(view==b1){
            Log.d("print","REached on click");
            startService(new Intent(this,MyService.class));
        }
        else if(view==b2){
            stopService(new Intent(this,MyService.class));
        }
    }
}
