package android.support.v7.internal.app;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.internal.widget.ViewUtils;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatRatingBar;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

public class AppCompatViewInflater
{
  private static final Map<String, Constructor<? extends View>> sConstructorMap = new HashMap();
  static final Class<?>[] sConstructorSignature = { Context.class, AttributeSet.class };
  private final Object[] mConstructorArgs = new Object[2];
  private final Context mContext;
  
  public AppCompatViewInflater(Context paramContext)
  {
    this.mContext = paramContext;
  }
  
  private View createView(String paramString1, String paramString2)
    throws ClassNotFoundException, InflateException
  {
    Constructor localConstructor = (Constructor)sConstructorMap.get(paramString1);
    if (localConstructor == null) {}
    try
    {
      ClassLoader localClassLoader = this.mContext.getClassLoader();
      if (paramString2 != null) {}
      for (String str = paramString2 + paramString1;; str = paramString1)
      {
        localConstructor = localClassLoader.loadClass(str).asSubclass(View.class).getConstructor(sConstructorSignature);
        sConstructorMap.put(paramString1, localConstructor);
        localConstructor.setAccessible(true);
        View localView = (View)localConstructor.newInstance(this.mConstructorArgs);
        return localView;
      }
      return null;
    }
    catch (Exception localException) {}
  }
  
  private View createViewFromTag(Context paramContext, String paramString, AttributeSet paramAttributeSet)
  {
    if (paramString.equals("view")) {
      paramString = paramAttributeSet.getAttributeValue(null, "class");
    }
    try
    {
      this.mConstructorArgs[0] = paramContext;
      this.mConstructorArgs[1] = paramAttributeSet;
      if (-1 == paramString.indexOf('.'))
      {
        View localView2 = createView(paramString, "android.widget.");
        return localView2;
      }
      View localView1 = createView(paramString, null);
      return localView1;
    }
    catch (Exception localException)
    {
      return null;
    }
    finally
    {
      this.mConstructorArgs[0] = null;
      this.mConstructorArgs[1] = null;
    }
  }
  
  public final View createView(View paramView, String paramString, @NonNull Context paramContext, @NonNull AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2)
  {
    Context localContext = paramContext;
    if ((paramBoolean1) && (paramView != null)) {
      paramContext = paramView.getContext();
    }
    if (paramBoolean2) {
      paramContext = ViewUtils.themifyContext(paramContext, paramAttributeSet, true, true);
    }
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        if (localContext == paramContext) {
          break label463;
        }
        return createViewFromTag(paramContext, paramString, paramAttributeSet);
        if (paramString.equals("EditText"))
        {
          i = 0;
          continue;
          if (paramString.equals("Spinner"))
          {
            i = 1;
            continue;
            if (paramString.equals("CheckBox"))
            {
              i = 2;
              continue;
              if (paramString.equals("RadioButton"))
              {
                i = 3;
                continue;
                if (paramString.equals("CheckedTextView"))
                {
                  i = 4;
                  continue;
                  if (paramString.equals("AutoCompleteTextView"))
                  {
                    i = 5;
                    continue;
                    if (paramString.equals("MultiAutoCompleteTextView"))
                    {
                      i = 6;
                      continue;
                      if (paramString.equals("RatingBar"))
                      {
                        i = 7;
                        continue;
                        if (paramString.equals("Button"))
                        {
                          i = 8;
                          continue;
                          if (paramString.equals("TextView")) {
                            i = 9;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    return new AppCompatEditText(paramContext, paramAttributeSet);
    return new AppCompatSpinner(paramContext, paramAttributeSet);
    return new AppCompatCheckBox(paramContext, paramAttributeSet);
    return new AppCompatRadioButton(paramContext, paramAttributeSet);
    return new AppCompatCheckedTextView(paramContext, paramAttributeSet);
    return new AppCompatAutoCompleteTextView(paramContext, paramAttributeSet);
    return new AppCompatMultiAutoCompleteTextView(paramContext, paramAttributeSet);
    return new AppCompatRatingBar(paramContext, paramAttributeSet);
    return new AppCompatButton(paramContext, paramAttributeSet);
    return new AppCompatTextView(paramContext, paramAttributeSet);
    label463:
    return null;
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v7.internal.app.AppCompatViewInflater
 * JD-Core Version:    0.7.0.1
 */