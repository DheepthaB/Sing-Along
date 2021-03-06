package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.widget.TintManager;
import android.support.v7.internal.widget.TintTypedArray;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

public class AppCompatCheckedTextView
  extends CheckedTextView
{
  private static final int[] TINT_ATTRS = { 16843016 };
  private TintManager mTintManager;
  
  public AppCompatCheckedTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16843720);
  }
  
  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (TintManager.SHOULD_BE_USED)
    {
      TintTypedArray localTintTypedArray = TintTypedArray.obtainStyledAttributes(getContext(), paramAttributeSet, TINT_ATTRS, paramInt, 0);
      setCheckMarkDrawable(localTintTypedArray.getDrawable(0));
      localTintTypedArray.recycle();
      this.mTintManager = localTintTypedArray.getTintManager();
    }
  }
  
  public void setCheckMarkDrawable(int paramInt)
  {
    if (this.mTintManager != null)
    {
      setCheckMarkDrawable(this.mTintManager.getDrawable(paramInt));
      return;
    }
    super.setCheckMarkDrawable(paramInt);
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v7.widget.AppCompatCheckedTextView
 * JD-Core Version:    0.7.0.1
 */