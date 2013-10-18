package com.nianticproject.ingress.content;

import android.text.TextUtils;
import com.google.a.c.eq;
import java.util.ArrayList;
import java.util.List;

final class h
{
  private final StringBuilder b;
  private final List<String> c;

  public h(NemesisProvider paramNemesisProvider, String paramString, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder;
    if (TextUtils.isEmpty(paramString))
    {
      localStringBuilder = new StringBuilder();
      this.b = localStringBuilder;
      if (paramArrayOfString != null)
        break label60;
    }
    label60: for (ArrayList localArrayList = eq.a(); ; localArrayList = eq.a(paramArrayOfString))
    {
      this.c = localArrayList;
      return;
      localStringBuilder = new StringBuilder(paramString);
      break;
    }
  }

  public final String a()
  {
    if (this.b.length() > 0)
      return this.b.toString();
    return null;
  }

  public final void a(String paramString1, String paramString2)
  {
    if (this.b.length() > 0)
      this.b.append(" AND ");
    this.b.append(paramString1);
    this.b.append("=?");
    this.c.add(paramString2);
  }

  public final String[] b()
  {
    if (this.c.size() > 0)
      return (String[])this.c.toArray(new String[this.c.size()]);
    return null;
  }

  public final String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = a();
    arrayOfObject[1] = NemesisProvider.a(b());
    return String.format("selection=%s selectionArgs=%s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.content.h
 * JD-Core Version:    0.6.2
 */