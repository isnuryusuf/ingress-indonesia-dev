package com.nianticproject.ingress.content;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.aj;
import java.util.List;

public class e extends android.support.v4.a.c
{
  private static final aa t = new aa(e.class);
  private static final List<com.nianticproject.ingress.shared.plext.c> u = eq.a();

  public e(Context paramContext, com.nianticproject.ingress.common.b paramb, Integer paramInteger, int paramInt, String paramString)
  {
    super(paramContext);
    Uri localUri = a.a(paramb, paramInteger);
    Object localObject;
    String str1;
    if (paramInt == 0)
    {
      localObject = null;
      str1 = null;
    }
    while (true)
    {
      aa localaa = t;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str1;
      String str2 = null;
      if (localObject != null)
        str2 = TextUtils.join(",", (Object[])localObject);
      arrayOfObject[1] = str2;
      localaa.a("CommsLoader: selection=%s selectionArgs=%s", arrayOfObject);
      a(localUri);
      a(b.a);
      a(str1);
      b((String[])localObject);
      b(paramString);
      return;
      str1 = a.a(null, paramInt);
      localObject = new String[0];
    }
  }

  // ERROR //
  private static List<com.nianticproject.ingress.shared.plext.c> b(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 81	java/io/ByteArrayInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 84	java/io/ByteArrayInputStream:<init>	([B)V
    //   10: astore_2
    //   11: new 86	java/io/ObjectInputStream
    //   14: dup
    //   15: aload_2
    //   16: invokespecial 89	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   19: astore_3
    //   20: aload_3
    //   21: invokevirtual 93	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   24: checkcast 95	java/util/List
    //   27: astore 5
    //   29: aload_3
    //   30: invokevirtual 98	java/io/ObjectInputStream:close	()V
    //   33: aload_2
    //   34: invokevirtual 99	java/io/ByteArrayInputStream:close	()V
    //   37: aload 5
    //   39: areturn
    //   40: astore 4
    //   42: aconst_null
    //   43: astore_3
    //   44: aload_3
    //   45: ifnull +7 -> 52
    //   48: aload_3
    //   49: invokevirtual 98	java/io/ObjectInputStream:close	()V
    //   52: aload_1
    //   53: ifnull +7 -> 60
    //   56: aload_1
    //   57: invokevirtual 99	java/io/ByteArrayInputStream:close	()V
    //   60: aload 4
    //   62: athrow
    //   63: astore 4
    //   65: aload_2
    //   66: astore_1
    //   67: aconst_null
    //   68: astore_3
    //   69: goto -25 -> 44
    //   72: astore 4
    //   74: aload_2
    //   75: astore_1
    //   76: goto -32 -> 44
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	40	finally
    //   11	20	63	finally
    //   20	29	72	finally
  }

  private static List<com.nianticproject.ingress.shared.plext.c> c(byte[] paramArrayOfByte)
  {
    try
    {
      aj.a("CommsLoader.deserializeNoneOnFail");
      Object localObject2 = u;
      try
      {
        List localList = b(paramArrayOfByte);
        localObject2 = localList;
        return localObject2;
      }
      catch (Exception localException)
      {
        while (true)
          t.a(localException, "Exception while deserializing markup entries list");
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final Cursor e()
  {
    try
    {
      aj.a("CommsLoader.loadInBackground");
      f localf = new f(super.e());
      return localf;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.content.e
 * JD-Core Version:    0.6.2
 */