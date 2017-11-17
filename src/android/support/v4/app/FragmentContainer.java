package android.support.v4.app;

import android.support.annotation.Nullable;
import android.view.View;

abstract interface FragmentContainer
{
  @Nullable
  public abstract View findViewById(int paramInt);
  
  public abstract boolean hasView();
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentContainer
 * JD-Core Version:    0.7.0.1
 */