package com.example.project;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

public class animalscreen
  extends Activity
{
  Integer[] imageId;
  ListView list;
  String[] web = { "5 Little Ducks", "Old MacDonald Had A Farm", "Baa Baa Black Sheep", "Little Miss Muffet", "Hickery Dickery Dock", "Pussycat Pussycat" };
  
  public animalscreen()
  {
    Integer[] arrayOfInteger = new Integer[6];
    arrayOfInteger[0] = Integer.valueOf(2130837580);
    arrayOfInteger[1] = Integer.valueOf(2130837592);
    arrayOfInteger[2] = Integer.valueOf(2130837607);
    arrayOfInteger[3] = Integer.valueOf(2130837595);
    arrayOfInteger[4] = Integer.valueOf(2130837586);
    arrayOfInteger[5] = Integer.valueOf(2130837600);
    this.imageId = arrayOfInteger;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    customlist localcustomlist = new customlist(this, this.web, this.imageId);
    this.list = ((ListView)findViewById(2131099734));
    this.list.setAdapter(localcustomlist);
    this.list.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramAnonymousInt == 0)
        {
          Intent localIntent1 = new Intent(animalscreen.this, ducks.class);
          animalscreen.this.startActivity(localIntent1);
        }
        do
        {
          return;
          if (paramAnonymousInt == 1)
          {
            Intent localIntent2 = new Intent(animalscreen.this, mcd.class);
            animalscreen.this.startActivity(localIntent2);
            return;
          }
          if (paramAnonymousInt == 2)
          {
            Intent localIntent3 = new Intent(animalscreen.this, sheep.class);
            animalscreen.this.startActivity(localIntent3);
            return;
          }
          if (paramAnonymousInt == 3)
          {
            Intent localIntent4 = new Intent(animalscreen.this, muffet.class);
            animalscreen.this.startActivity(localIntent4);
            return;
          }
          if (paramAnonymousInt == 4)
          {
            Intent localIntent5 = new Intent(animalscreen.this, hickery.class);
            animalscreen.this.startActivity(localIntent5);
            return;
          }
        } while (paramAnonymousInt != 5);
        Intent localIntent6 = new Intent(animalscreen.this, pussy.class);
        animalscreen.this.startActivity(localIntent6);
      }
    });
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.animalscreen
 * JD-Core Version:    0.7.0.1
 */