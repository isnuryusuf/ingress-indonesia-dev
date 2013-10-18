package com.nianticproject.ingress.e;

import android.net.Uri;
import android.net.Uri.Builder;
import com.nianticproject.ingress.common.o.c;
import java.io.IOException;
import org.codehaus.jackson.map.ObjectMapper;

public final class a
{
  public static Uri a(Object paramObject)
  {
    if (paramObject == null)
      return null;
    Uri.Builder localBuilder = new Uri.Builder();
    try
    {
      localBuilder.appendQueryParameter("extras", c.a.writeValueAsString(paramObject));
      return localBuilder.build();
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Unable to marshall given value into data", localIOException);
    }
  }

  public static <T> T a(Uri paramUri, Class<T> paramClass)
  {
    if (paramUri == null);
    String str;
    do
    {
      return null;
      str = paramUri.getQueryParameter("extras");
    }
    while (str == null);
    try
    {
      Object localObject = c.a.readValue(str, paramClass);
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Unexpected format for data extras", localIOException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.e.a
 * JD-Core Version:    0.6.2
 */