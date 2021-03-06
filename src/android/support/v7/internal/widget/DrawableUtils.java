package android.support.v7.internal.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class DrawableUtils
{
  public static final Rect INSETS_NONE = new Rect();
  private static final String TAG = "DrawableUtils";
  private static Class<?> sInsetsClazz;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 18) {}
    try
    {
      sInsetsClazz = Class.forName("android.graphics.Insets");
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
  }
  
  public static Rect getOpticalBounds(Drawable paramDrawable)
  {
    if (sInsetsClazz != null) {}
    for (;;)
    {
      Object localObject;
      Rect localRect;
      int j;
      Field localField;
      int k;
      try
      {
        Drawable localDrawable = DrawableCompat.unwrap(paramDrawable);
        localObject = localDrawable.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(localDrawable, new Object[0]);
        if (localObject == null) {
          break label223;
        }
        localRect = new Rect();
        Field[] arrayOfField = sInsetsClazz.getFields();
        int i = arrayOfField.length;
        j = 0;
        if (j >= i) {
          break label227;
        }
        localField = arrayOfField[j];
        str = localField.getName();
        k = -1;
        switch (str.hashCode())
        {
        case 3317767: 
          if (!str.equals("left")) {
            break label271;
          }
          k = 0;
        }
      }
      catch (Exception localException)
      {
        String str;
        Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
      }
      if (str.equals("top"))
      {
        k = 1;
        break label271;
        if (str.equals("right"))
        {
          k = 2;
          break label271;
          if (str.equals("bottom"))
          {
            k = 3;
            break label271;
            localRect.left = localField.getInt(localObject);
            break label304;
            label223:
            localRect = INSETS_NONE;
            label227:
            return localRect;
            localRect.top = localField.getInt(localObject);
            break label304;
            localRect.right = localField.getInt(localObject);
            break label304;
            localRect.bottom = localField.getInt(localObject);
            break label304;
          }
        }
      }
      label271:
      switch (k)
      {
      }
      label304:
      j++;
    }
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.DrawableUtils
 * JD-Core Version:    0.7.0.1
 */