package com.example.project;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity
  extends Activity
{
  GridView grid;
  int[] imageId = { 2130837596, 2130837566, 2130837570, 2130837612, 2130837568, 2130837564 };
  String[] web = { "Nature", "Animals", "Body Parts", "Transport", "Bed Time", "Alphabets And Numbers" };
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    CustomAdapter localCustomAdapter = new CustomAdapter(this, this.web, this.imageId);
    this.grid = ((GridView)findViewById(2131099751));
    this.grid.setAdapter(localCustomAdapter);
    this.grid.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt == 0)
        {
          Intent localIntent1 = new Intent(MainActivity.this, naturescreen.class);
          MainActivity.this.startActivity(localIntent1);
        }
        do
        {
          return;
          if (paramAnonymousInt == 1)
          {
            Intent localIntent2 = new Intent(MainActivity.this, animalscreen.class);
            MainActivity.this.startActivity(localIntent2);
            return;
          }
          if (paramAnonymousInt == 2)
          {
            Intent localIntent3 = new Intent(MainActivity.this, bodypartsscreen.class);
            MainActivity.this.startActivity(localIntent3);
            return;
          }
          if (paramAnonymousInt == 3)
          {
            Intent localIntent4 = new Intent(MainActivity.this, transportscreen.class);
            MainActivity.this.startActivity(localIntent4);
            return;
          }
          if (paramAnonymousInt == 4)
          {
            Intent localIntent5 = new Intent(MainActivity.this, bedtimescreen.class);
            MainActivity.this.startActivity(localIntent5);
            return;
          }
        } while (paramAnonymousInt != 5);
        Intent localIntent6 = new Intent(MainActivity.this, countscreen.class);
        MainActivity.this.startActivity(localIntent6);
      }
    });
  }
  
  class CustomAdapter
    extends BaseAdapter
  {
    private final int[] Imageid;
    private Context mContext;
    private final String[] web;
    
    public CustomAdapter(Context paramContext, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
      this.mContext = paramContext;
      this.Imageid = paramArrayOfInt;
      this.web = paramArrayOfString;
    }
    
    public int getCount()
    {
      return this.web.length;
    }
    
    public Object getItem(int paramInt)
    {
      return null;
    }
    
    public long getItemId(int paramInt)
    {
      return 0L;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      LayoutInflater localLayoutInflater;
      if (paramView == null)
      {
        localLayoutInflater = (LayoutInflater)this.mContext.getSystemService("layout_inflater");
        new View(this.mContext);
      }
      for (View localView = localLayoutInflater.inflate(2130903077, null);; localView = paramView)
      {
        TextView localTextView = (TextView)localView.findViewById(2131099742);
        ImageView localImageView = (ImageView)localView.findViewById(2131099688);
        localTextView.setText(this.web[paramInt]);
        localImageView.setImageResource(this.Imageid[paramInt]);
        return localView;
      }
    }
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.MainActivity
 * JD-Core Version:    0.7.0.1
 */