package android.support.v7.internal.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

class ActionBarBackgroundDrawable
  extends Drawable
{
  final ActionBarContainer mContainer;
  
  public ActionBarBackgroundDrawable(ActionBarContainer paramActionBarContainer)
  {
    this.mContainer = paramActionBarContainer;
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.mContainer.mIsSplit) {
      if (this.mContainer.mSplitBackground != null) {
        this.mContainer.mSplitBackground.draw(paramCanvas);
      }
    }
    do
    {
      return;
      if (this.mContainer.mBackground != null) {
        this.mContainer.mBackground.draw(paramCanvas);
      }
    } while ((this.mContainer.mStackedBackground == null) || (!this.mContainer.mIsStacked));
    this.mContainer.mStackedBackground.draw(paramCanvas);
  }
  
  public int getOpacity()
  {
    return 0;
  }
  
  public void setAlpha(int paramInt) {}
  
  public void setColorFilter(ColorFilter paramColorFilter) {}
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarBackgroundDrawable
 * JD-Core Version:    0.7.0.1
 */