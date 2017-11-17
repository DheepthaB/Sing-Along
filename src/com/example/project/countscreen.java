package com.example.project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class countscreen
  extends Activity
{
  Integer[] imageId;
  ListView list;
  String[] web = { "5 Little Ducks", "1 2 Bucle My Shoe", "Alphabet Song", "ABC Song", "5 Little Monkeys" };
  
  public countscreen()
  {
    Integer[] arrayOfInteger = new Integer[5];
    arrayOfInteger[0] = Integer.valueOf(2130837580);
    arrayOfInteger[1] = Integer.valueOf(2130837608);
    arrayOfInteger[2] = Integer.valueOf(2130837565);
    arrayOfInteger[3] = Integer.valueOf(2130837504);
    arrayOfInteger[4] = Integer.valueOf(2130837593);
    this.imageId = arrayOfInteger;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903076);
    customlist localcustomlist = new customlist(this, this.web, this.imageId);
    this.list = ((ListView)findViewById(2131099734));
    this.list.setAdapter(localcustomlist);
    this.list.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt == 0)
        {
          Intent localIntent1 = new Intent(countscreen.this, ducks.class);
          countscreen.this.startActivity(localIntent1);
        }
        do
        {
          return;
          if (paramAnonymousInt == 1)
          {
            Intent localIntent2 = new Intent(countscreen.this, shoe.class);
            countscreen.this.startActivity(localIntent2);
            return;
          }
          if (paramAnonymousInt == 2)
          {
            Intent localIntent3 = new Intent(countscreen.this, alpha.class);
            countscreen.this.startActivity(localIntent3);
            return;
          }
          if (paramAnonymousInt == 3)
          {
            Intent localIntent4 = new Intent(countscreen.this, abc.class);
            countscreen.this.startActivity(localIntent4);
            return;
          }
        } while (paramAnonymousInt != 4);
        Intent localIntent5 = new Intent(countscreen.this, monkey.class);
        countscreen.this.startActivity(localIntent5);
      }
    });
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.countscreen
 * JD-Core Version:    0.7.0.1
 */