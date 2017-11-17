package com.example.project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class transportscreen
  extends Activity
{
  Integer[] imageId;
  ListView list;
  String[] web = { "London Bridge Is Falling Down", "RowRowRow Your Boat", "The Wheels On The Bus" };
  
  public transportscreen()
  {
    Integer[] arrayOfInteger = new Integer[3];
    arrayOfInteger[0] = Integer.valueOf(2130837589);
    arrayOfInteger[1] = Integer.valueOf(2130837606);
    arrayOfInteger[2] = Integer.valueOf(2130837613);
    this.imageId = arrayOfInteger;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903068);
    customlist localcustomlist = new customlist(this, this.web, this.imageId);
    this.list = ((ListView)findViewById(2131099734));
    this.list.setAdapter(localcustomlist);
    this.list.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt == 0)
        {
          Intent localIntent1 = new Intent(transportscreen.this, london.class);
          transportscreen.this.startActivity(localIntent1);
        }
        do
        {
          return;
          if (paramAnonymousInt == 1)
          {
            Intent localIntent2 = new Intent(transportscreen.this, boat.class);
            transportscreen.this.startActivity(localIntent2);
            return;
          }
        } while (paramAnonymousInt != 2);
        Intent localIntent3 = new Intent(transportscreen.this, bus.class);
        transportscreen.this.startActivity(localIntent3);
      }
    });
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.transportscreen
 * JD-Core Version:    0.7.0.1
 */