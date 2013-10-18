package com.nianticproject.ingress.ui;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.HashMap;

public final class aj
{
  private static final HashMap<String, Typeface> a = new HashMap();

  public static void a(Context paramContext, View paramView, String paramString)
  {
    if ((paramView instanceof ViewGroup))
      a(paramContext, (ViewGroup)paramView, paramString);
    while (!(paramView instanceof TextView))
      return;
    TextView localTextView = (TextView)paramView;
    String str = "fonts/" + paramString;
    Typeface localTypeface1 = (Typeface)a.get(paramString);
    if (localTypeface1 == null)
    {
      localTypeface1 = Typeface.createFromAsset(paramContext.getAssets(), str);
      if (localTypeface1 == null)
        throw new RuntimeException("Could not find the " + str + " font, please add it to the assets directory");
      a.put(paramString, localTypeface1);
    }
    Typeface localTypeface2 = localTextView.getTypeface();
    if (localTypeface2 != null)
    {
      localTextView.setTypeface(localTypeface1, localTypeface2.getStyle());
      return;
    }
    localTextView.setTypeface(localTypeface1);
  }

  public static void a(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    for (int i = 0; i < paramViewGroup.getChildCount(); i++)
      a(paramContext, paramViewGroup.getChildAt(i), paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.aj
 * JD-Core Version:    0.6.2
 */