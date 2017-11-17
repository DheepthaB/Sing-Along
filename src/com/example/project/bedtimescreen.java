package com.example.project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class bedtimescreen
  extends Activity
{
  Integer[] imageId;
  ListView list;
  String[] web = { "Bye Baby Bunting", "Early To Bed", "Rock-A-Bye Baby", "Twinkle Twinkle Little Star", "Hush Little Baby" };
  
  public bedtimescreen()
  {
    Integer[] arrayOfInteger = new Integer[5];
    arrayOfInteger[0] = Integer.valueOf(2130837573);
    arrayOfInteger[1] = Integer.valueOf(2130837581);
    arrayOfInteger[2] = Integer.valueOf(2130837603);
    arrayOfInteger[3] = Integer.valueOf(2130837610);
    arrayOfInteger[4] = Integer.valueOf(2130837587);
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
          Intent localIntent1 = new Intent(bedtimescreen.this, bye.class);
          bedtimescreen.this.startActivity(localIntent1);
        }
        do
        {
          return;
          if (paramAnonymousInt == 1)
          {
            Intent localIntent2 = new Intent(bedtimescreen.this, bed.class);
            bedtimescreen.this.startActivity(localIntent2);
            return;
          }
          if (paramAnonymousInt == 2)
          {
            Intent localIntent3 = new Intent(bedtimescreen.this, rock.class);
            bedtimescreen.this.startActivity(localIntent3);
            return;
          }
          if (paramAnonymousInt == 3)
          {
            Intent localIntent4 = new Intent(bedtimescreen.this, star.class);
            bedtimescreen.this.startActivity(localIntent4);
            return;
          }
        } while (paramAnonymousInt != 4);
        Intent localIntent5 = new Intent(bedtimescreen.this, hush.class);
        bedtimescreen.this.startActivity(localIntent5);
      }
    });
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.bedtimescreen
 * JD-Core Version:    0.7.0.1
 */