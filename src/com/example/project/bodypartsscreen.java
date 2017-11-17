package com.example.project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class bodypartsscreen
  extends Activity
{
  Integer[] imageId;
  ListView list;
  String[] web = { "Head,Shoulders, Knees And Toes", "Brush, Brush, Brush Your Teeth ", "Chubby Cheeks", "Miss Polly Had A Dolly", "Wind The Bobbin Up", "Where Is Thumbkin?" };
  
  public bodypartsscreen()
  {
    Integer[] arrayOfInteger = new Integer[6];
    arrayOfInteger[0] = Integer.valueOf(2130837585);
    arrayOfInteger[1] = Integer.valueOf(2130837571);
    arrayOfInteger[2] = Integer.valueOf(2130837574);
    arrayOfInteger[3] = Integer.valueOf(2130837599);
    arrayOfInteger[4] = Integer.valueOf(2130837614);
    arrayOfInteger[5] = Integer.valueOf(2130837611);
    this.imageId = arrayOfInteger;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    customlist localcustomlist = new customlist(this, this.web, this.imageId);
    this.list = ((ListView)findViewById(2131099734));
    this.list.setAdapter(localcustomlist);
    this.list.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt == 0)
        {
          Intent localIntent1 = new Intent(bodypartsscreen.this, head.class);
          bodypartsscreen.this.startActivity(localIntent1);
        }
        do
        {
          return;
          if (paramAnonymousInt == 1)
          {
            Intent localIntent2 = new Intent(bodypartsscreen.this, brush.class);
            bodypartsscreen.this.startActivity(localIntent2);
            return;
          }
          if (paramAnonymousInt == 2)
          {
            Intent localIntent3 = new Intent(bodypartsscreen.this, cheeks.class);
            bodypartsscreen.this.startActivity(localIntent3);
            return;
          }
          if (paramAnonymousInt == 3)
          {
            Intent localIntent4 = new Intent(bodypartsscreen.this, polly.class);
            bodypartsscreen.this.startActivity(localIntent4);
            return;
          }
          if (paramAnonymousInt == 4)
          {
            Intent localIntent5 = new Intent(bodypartsscreen.this, bobbin.class);
            bodypartsscreen.this.startActivity(localIntent5);
            return;
          }
        } while (paramAnonymousInt != 5);
        Intent localIntent6 = new Intent(bodypartsscreen.this, thumb.class);
        bodypartsscreen.this.startActivity(localIntent6);
      }
    });
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.bodypartsscreen
 * JD-Core Version:    0.7.0.1
 */