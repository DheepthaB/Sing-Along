package com.example.project;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class customlist
  extends ArrayAdapter<String>
{
  private final Activity context;
  private final Integer[] imageId;
  private final String[] web;
  
  public customlist(Activity paramActivity, String[] paramArrayOfString, Integer[] paramArrayOfInteger)
  {
    super(paramActivity, 2130903078, paramArrayOfString);
    this.context = paramActivity;
    this.web = paramArrayOfString;
    this.imageId = paramArrayOfInteger;
  }
  
  @SuppressLint({"ViewHolder", "InflateParams"})
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = this.context.getLayoutInflater().inflate(2130903078, null, true);
    TextView localTextView = (TextView)localView.findViewById(2131099744);
    ImageView localImageView = (ImageView)localView.findViewById(2131099743);
    localTextView.setText(this.web[paramInt]);
    localImageView.setImageResource(this.imageId[paramInt].intValue());
    return localView;
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.example.project.customlist
 * JD-Core Version:    0.7.0.1
 */