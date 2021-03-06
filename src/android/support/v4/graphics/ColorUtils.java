package android.support.v4.graphics;

import android.graphics.Color;

public class ColorUtils
{
  private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
  private static final int MIN_ALPHA_SEARCH_PRECISION = 10;
  
  public static int HSLToColor(float[] paramArrayOfFloat)
  {
    float f1 = paramArrayOfFloat[0];
    float f2 = paramArrayOfFloat[1];
    float f3 = paramArrayOfFloat[2];
    float f4 = f2 * (1.0F - Math.abs(2.0F * f3 - 1.0F));
    float f5 = f3 - 0.5F * f4;
    float f6 = f4 * (1.0F - Math.abs(f1 / 60.0F % 2.0F - 1.0F));
    int i = (int)f1 / 60;
    int j = 0;
    int k = 0;
    int m = 0;
    switch (i)
    {
    }
    for (;;)
    {
      return Color.rgb(Math.max(0, Math.min(255, m)), Math.max(0, Math.min(255, k)), Math.max(0, Math.min(255, j)));
      m = Math.round(255.0F * (f4 + f5));
      k = Math.round(255.0F * (f6 + f5));
      j = Math.round(255.0F * f5);
      continue;
      m = Math.round(255.0F * (f6 + f5));
      k = Math.round(255.0F * (f4 + f5));
      j = Math.round(255.0F * f5);
      continue;
      m = Math.round(255.0F * f5);
      k = Math.round(255.0F * (f4 + f5));
      j = Math.round(255.0F * (f6 + f5));
      continue;
      m = Math.round(255.0F * f5);
      k = Math.round(255.0F * (f6 + f5));
      j = Math.round(255.0F * (f4 + f5));
      continue;
      m = Math.round(255.0F * (f6 + f5));
      k = Math.round(255.0F * f5);
      j = Math.round(255.0F * (f4 + f5));
      continue;
      m = Math.round(255.0F * (f4 + f5));
      k = Math.round(255.0F * f5);
      j = Math.round(255.0F * (f6 + f5));
    }
  }
  
  public static void RGBToHSL(int paramInt1, int paramInt2, int paramInt3, float[] paramArrayOfFloat)
  {
    float f1 = paramInt1 / 255.0F;
    float f2 = paramInt2 / 255.0F;
    float f3 = paramInt3 / 255.0F;
    float f4 = Math.max(f1, Math.max(f2, f3));
    float f5 = Math.min(f1, Math.min(f2, f3));
    float f6 = f4 - f5;
    float f7 = (f4 + f5) / 2.0F;
    float f9;
    float f8;
    if (f4 == f5)
    {
      f9 = 0.0F;
      f8 = 0.0F;
      paramArrayOfFloat[0] = (60.0F * f8 % 360.0F);
      paramArrayOfFloat[1] = f9;
      paramArrayOfFloat[2] = f7;
      return;
    }
    if (f4 == f1) {
      f8 = (f2 - f3) / f6 % 6.0F;
    }
    for (;;)
    {
      f9 = f6 / (1.0F - Math.abs(2.0F * f7 - 1.0F));
      break;
      if (f4 == f2) {
        f8 = 2.0F + (f3 - f1) / f6;
      } else {
        f8 = 4.0F + (f1 - f2) / f6;
      }
    }
  }
  
  public static double calculateContrast(int paramInt1, int paramInt2)
  {
    if (Color.alpha(paramInt2) != 255) {
      throw new IllegalArgumentException("background can not be translucent");
    }
    if (Color.alpha(paramInt1) < 255) {
      paramInt1 = compositeColors(paramInt1, paramInt2);
    }
    double d1 = 0.05D + calculateLuminance(paramInt1);
    double d2 = 0.05D + calculateLuminance(paramInt2);
    return Math.max(d1, d2) / Math.min(d1, d2);
  }
  
  public static double calculateLuminance(int paramInt)
  {
    double d1 = Color.red(paramInt) / 255.0D;
    double d2;
    double d3;
    double d4;
    label52:
    double d5;
    if (d1 < 0.03928D)
    {
      d2 = d1 / 12.92D;
      d3 = Color.green(paramInt) / 255.0D;
      if (d3 >= 0.03928D) {
        break label119;
      }
      d4 = d3 / 12.92D;
      d5 = Color.blue(paramInt) / 255.0D;
      if (d5 >= 0.03928D) {
        break label140;
      }
    }
    label140:
    for (double d6 = d5 / 12.92D;; d6 = Math.pow((0.055D + d5) / 1.055D, 2.4D))
    {
      return 0.2126D * d2 + 0.7152D * d4 + 0.0722D * d6;
      d2 = Math.pow((0.055D + d1) / 1.055D, 2.4D);
      break;
      label119:
      d4 = Math.pow((0.055D + d3) / 1.055D, 2.4D);
      break label52;
    }
  }
  
  public static int calculateMinimumAlpha(int paramInt1, int paramInt2, float paramFloat)
  {
    if (Color.alpha(paramInt2) != 255) {
      throw new IllegalArgumentException("background can not be translucent");
    }
    if (calculateContrast(setAlphaComponent(paramInt1, 255), paramInt2) < paramFloat)
    {
      k = -1;
      return k;
    }
    int i = 0;
    int j = 0;
    int k = 255;
    label53:
    int m;
    if ((i <= 10) && (k - j > 10))
    {
      m = (j + k) / 2;
      if (calculateContrast(setAlphaComponent(paramInt1, m), paramInt2) >= paramFloat) {
        break label104;
      }
      j = m;
    }
    for (;;)
    {
      i++;
      break label53;
      break;
      label104:
      k = m;
    }
  }
  
  public static void colorToHSL(int paramInt, float[] paramArrayOfFloat)
  {
    RGBToHSL(Color.red(paramInt), Color.green(paramInt), Color.blue(paramInt), paramArrayOfFloat);
  }
  
  private static int compositeAlpha(int paramInt1, int paramInt2)
  {
    return 255 - (255 - paramInt2) * (255 - paramInt1) / 255;
  }
  
  public static int compositeColors(int paramInt1, int paramInt2)
  {
    int i = Color.alpha(paramInt2);
    int j = Color.alpha(paramInt1);
    int k = compositeAlpha(j, i);
    return Color.argb(k, compositeComponent(Color.red(paramInt1), j, Color.red(paramInt2), i, k), compositeComponent(Color.green(paramInt1), j, Color.green(paramInt2), i, k), compositeComponent(Color.blue(paramInt1), j, Color.blue(paramInt2), i, k));
  }
  
  private static int compositeComponent(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (paramInt5 == 0) {
      return 0;
    }
    return (paramInt2 * (paramInt1 * 255) + paramInt3 * paramInt4 * (255 - paramInt2)) / (paramInt5 * 255);
  }
  
  public static int setAlphaComponent(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 0) || (paramInt2 > 255)) {
      throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }
    return 0xFFFFFF & paramInt1 | paramInt2 << 24;
  }
}


/* Location:           C:\Softwares\dex2jar-0.0.9.15\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.ColorUtils
 * JD-Core Version:    0.7.0.1
 */