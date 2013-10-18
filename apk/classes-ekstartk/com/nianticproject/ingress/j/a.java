package com.nianticproject.ingress.j;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.j;
import android.text.TextUtils;
import com.nianticproject.ingress.NemesisApplication;

public final class a
{
  private static final String a = NemesisApplication.a().getString(2131296449);
  private static final String b = NemesisApplication.a().getString(2131296450);
  private static final String[] c = arrayOfString;

  static
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = a;
    arrayOfString[1] = b;
  }

  public static void a(Context paramContext)
  {
    if (com.nianticproject.ingress.common.s.c.x() >= 3)
      return;
    new Handler(Looper.getMainLooper()).post(new b(paramContext));
  }

  public static void a(j paramj, String paramString)
  {
    if (paramString.startsWith("@"))
      paramString = paramString.substring(1);
    Bundle localBundle = new Bundle();
    localBundle.putString("nickname", paramString);
    com.nianticproject.ingress.ui.a.a(1337, c, localBundle).a(paramj, "CommNicknameClick");
  }

  public static void a(j paramj, String paramString, c paramc)
  {
    com.nianticproject.ingress.ui.a locala = (com.nianticproject.ingress.ui.a)paramj.a("CommNicknameClick");
    if (locala == null);
    String str;
    do
    {
      do
      {
        return;
        str = locala.a("nickname");
      }
      while (TextUtils.isEmpty(str));
      if (a.equals(paramString))
      {
        paramc.c(str);
        return;
      }
    }
    while (!b.equals(paramString));
    paramc.b(str);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.j.a
 * JD-Core Version:    0.6.2
 */