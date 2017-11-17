package com.example.project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class naturescreen
  extends Activity
{
  Integer[] imageId;
  ListView list;
  String[] web = { "I Had A Little Nut Tree", "The Mulberry Bush", "Roses Are Red", "Round And Round The Garden", "Mary, Mary,Quite Contrary ", "Ring A Ring O'Roses" };
  
  public naturescreen()
  {
    Integer[] arrayOfInteger = new Integer[6];
    arrayOfInteger[0] = Integer.valueOf(2130837597);
    arrayOfInteger[1] = Integer.valueOf(2130837572);
    arrayOfInteger[2] = Integer.valueOf(2130837604);
    arrayOfInteger[3] = Integer.valueOf(2130837582);
    arrayOfInteger[4] = Integer.valueOf(2130837591);
    arrayOfInteger[5] = Integer.valueOf(2130837602);
    this.imageId = arrayOfInteger;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903091);
    customlist localcustomlist = new customlist(this, this.web, this.imageId);
    this.list = ((ListView)findViewById(2131099734));
    this.list.setAdapter(localcustomlist);
    this.list.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt == 0)
        {
          Intent localIntent1 = new Intent(naturescreen.this, nuttree.class);
          naturescreen.this.startActivity(localIntent1);
        }
        do
        {
          return;
          if (paramAnonymousInt == 1)
          {
            Intent localIntent2 = new Intent(naturescreen.this, mulberry.class);
            naturescreen.this.startActivity(localIntent2);
            return;
          }
          if (paramAnonymousInt == 2)
          {
            Intent localIntent3 = new Intent(naturescreen.this, roses.class);
            naturescreen.this.startActivity(localIntent3);
            return;
          }
          if (paramAnonymousInt == 3)
          {
            Intent localIntent4 = new Intent(naturescreen.this, garden.class);
            naturescreen.this.startActivity(localIntent4);
            return;
          }
          if (paramAnonymousInt == 4)
          {
            Intent localIntent5 = new Intent(naturescreen.this, mary.class);
            naturescreen.this.startActivity(localIntent5);
            return;
          }
        } while (paramAnonymousInt != 5);
        Intent localIntent6 = new Intent(naturescreen.this, ring.class);
        naturescreen.this.startActivity(localIntent6);
      }
    });
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.naturescreen
 * JD-Core Version:    0.7.0.1
 */