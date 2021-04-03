package com.example.javaapplicationforpracticals;

import androidx.appcompat.app.AppCompatActivity;

import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {
     Button changeSize,changeColor;
     TextView text;
     ToggleButton button1;
     ToggleButton button2;
     int sizeValue=10;
     int fontColor=1;
     RadioGroup radioGroup;
     Button radioSubmit;
     EditText userName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        changeSize=findViewById(R.id.button2);
        changeColor=findViewById(R.id.button3);
        text=findViewById(R.id.textView);
        button1=findViewById(R.id.toggleButton);
        button2=findViewById(R.id.toggleButton2);
        radioGroup=findViewById(R.id.radioGroup);
        radioSubmit=findViewById(R.id.button5);
        userName=findViewById(R.id.editText);
        if(getResources().getDisplayMetrics().widthPixels>getResources().getDisplayMetrics().heightPixels){
            Toast.makeText(this, "Landscape User", Toast.LENGTH_LONG).show();
        }else{
            Toast.makeText(this, "Portrait User", Toast.LENGTH_LONG).show();
        }
    }
    public void toggleFunction(View v){
        String toggleValue="Toggle 1:"+button1.getText()+"/n"+"Toggle 2:"+button2.getText();
        Toast.makeText(this, toggleValue, Toast.LENGTH_SHORT).show();

    }
    public void radioGroupSubmit(View v){
        String name=userName.getText().toString();
        RadioButton selectedRadioButton=findViewById(radioGroup.getCheckedRadioButtonId());
        String selectedHobby=selectedRadioButton.getText().toString();
        Toast.makeText(this, name+"selectedd"+selectedHobby, Toast.LENGTH_SHORT).show();
    }

    public void changeFontSize(View v){
        text.setTextSize(sizeValue++);
        if(sizeValue>50){
            sizeValue=0;
        }
    }
    public void changeFontColor(View v){
        switch (fontColor){
            case 1:text.setTextColor(Color.MAGENTA);
            break;
            case 2:text.setTextColor(Color.YELLOW);
            break;

        }
       fontColor++;
       if(fontColor>2){
           fontColor=1;
       }
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d("Activity","On Destroy Method");
    }

    public void  onClick(View v){
        if(v.getId()==R.id.button){
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        } else{
            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        }
    }
}