package com.nianticproject.ingress.content;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.nianticproject.ingress.common.b;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.u;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.message.component.ClientPlext;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.g;
import com.nianticproject.ingress.ui.z;
import java.util.List;

public class a
{
  private static final aa a = new aa(a.class);
  private static final ContentValues[] b = new ContentValues[828];
  private static final Uri c = localUri;
  private static final Uri d = localUri.buildUpon().appendPath("stats").build();

  static
  {
    for (int i = 0; i < b.length; i++)
      b[i] = new ContentValues();
    Uri localUri = new Uri.Builder().scheme("content").authority("com.nianticproject.ingress.content.NemesisProvider").path("comms").build();
  }

  public static final Uri a(b paramb, Integer paramInteger)
  {
    Uri localUri = c.buildUpon().appendPath("group").appendPath(Integer.toString(paramb.c)).build();
    if (paramInteger != null)
      localUri = localUri.buildUpon().appendPath("limit").appendPath(paramInteger.toString()).build();
    return localUri;
  }

  public static c a(Context paramContext, int paramInt)
  {
    Cursor localCursor = paramContext.getContentResolver().query(d, d.a, a("from_server=1", paramInt), null, null);
    if (localCursor == null)
    {
      a.b("queryCommsStats: unexpected null cursor!!!");
      return null;
    }
    while (true)
    {
      try
      {
        if (localCursor.moveToFirst())
        {
          localc = new c(localCursor.getLong(0), localCursor.getLong(1), localCursor.getLong(2));
          return localc;
        }
      }
      finally
      {
        localCursor.close();
      }
      c localc = null;
    }
  }

  public static String a(String paramString, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramString != null)
      localStringBuilder.append(paramString);
    if ((paramInt != 0) && (paramInt != -1))
    {
      if (paramString != null)
        localStringBuilder.append(" and ");
      localStringBuilder.append("(( ");
      localStringBuilder.append("categories");
      localStringBuilder.append(" & ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" ) = ");
      localStringBuilder.append(paramInt);
      localStringBuilder.append(" )");
    }
    return localStringBuilder.toString();
  }

  private static void a()
  {
    if ((ec.f()) || (u.a()))
      throw new IllegalStateException("Should not call CommData methods on the UI or GLThread: thread.name=" + Thread.currentThread().getName());
  }

  public static void a(Context paramContext, b paramb)
  {
    paramContext.getContentResolver().delete(a(paramb, null), null, null);
  }

  public static void a(Context paramContext, b paramb, String paramString1, byte[] paramArrayOfByte, boolean paramBoolean, long paramLong, int paramInt1, String paramString2, int paramInt2)
  {
    if (TextUtils.isEmpty(paramString2))
      paramString2 = "local_" + g.a(g.m);
    try
    {
      aj.a("CommsData.addMessage");
      a();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("message", paramString1);
      localContentValues.put("markup", paramArrayOfByte);
      localContentValues.put("channel", Integer.valueOf(paramb.c));
      localContentValues.put("plext_type", Integer.valueOf(com.nianticproject.ingress.shared.plext.f.b.a()));
      int i = 0;
      if (paramBoolean)
        i = 1;
      localContentValues.put("temporary", Integer.valueOf(i));
      localContentValues.put("timestamp", Long.valueOf(paramLong));
      localContentValues.put("duration", Integer.valueOf(paramInt1));
      localContentValues.put("guid", paramString2);
      localContentValues.put("categories", Integer.valueOf(paramInt2));
      localContentValues.put("from_server", Integer.valueOf(0));
      paramContext.getContentResolver().insert(a(paramb, null), localContentValues);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public static void a(Context paramContext, String paramString, List<com.nianticproject.ingress.gameentity.f> paramList)
  {
    while (true)
    {
      int n;
      long l2;
      int i6;
      int i7;
      int i1;
      try
      {
        aj.a("CommsData.addMessagesFromServer");
        a();
        if (paramList != null)
        {
          int i = paramList.size();
          if (i != 0);
        }
        else
        {
          return;
        }
        ContentResolver localContentResolver = paramContext.getContentResolver();
        Uri localUri = c;
        String[] arrayOfString = new String[1];
        arrayOfString[0] = Integer.toString(1);
        localContentResolver.delete(localUri, "temporary=?", arrayOfString);
        j = 0;
        k = 0;
        m = -1;
        n = 0;
        if (n < paramList.size())
        {
          com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)paramList.get(n);
          String str1 = localf.getGuid();
          ClientPlext localClientPlext = (ClientPlext)localf.getComponent(ClientPlext.class);
          String str2 = localClientPlext.getText();
          byte[] arrayOfByte = a(localClientPlext.getPlext());
          localClientPlext.getTeam();
          long l1 = localf.getLastModifiedMs();
          com.nianticproject.ingress.shared.plext.f localf1 = localClientPlext.getPlextType();
          int i2 = localClientPlext.getCategories();
          l2 = 190L + str2.getBytes().length + arrayOfByte.length;
          if (l2 < 870400L)
            break label537;
          aa localaa = a;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Long.valueOf(l2);
          arrayOfObject[1] = localf1.toString();
          localaa.c("Massive plext in CommsData: addMessagesFromServer size = %d type = %s", arrayOfObject);
          i3 = m;
          i4 = k;
          i5 = j;
          break label519;
          b(paramContext, k);
          j = 0;
          k = 0;
          ContentValues localContentValues = b[k];
          localContentValues.put("channel", Integer.valueOf(b.a.c));
          localContentValues.put("duration", Integer.valueOf(2500));
          localContentValues.put("from_server", Integer.valueOf(1));
          localContentValues.put("message", str2);
          localContentValues.put("markup", arrayOfByte);
          localContentValues.put("plext_type", Integer.valueOf(localf1.a()));
          localContentValues.put("categories", Integer.valueOf(i2));
          localContentValues.put("timestamp", Long.valueOf(l1));
          localContentValues.put("guid", str1);
          if (!z.a(paramString, localClientPlext.getPlext()))
            break label561;
          i6 = 1;
          localContentValues.put("has_nudge", Integer.valueOf(i6));
          i7 = (int)(l2 + j);
          i3 = k + 1;
          if (i3 > m)
          {
            i5 = i7;
            i4 = i3;
            break label519;
          }
        }
        else
        {
          if (k <= 0)
            break label567;
          b(paramContext, k);
          break label567;
          if (i1 < m)
          {
            b[i1].clear();
            i1++;
            continue;
          }
          return;
        }
      }
      finally
      {
        aj.b();
      }
      int i8 = m;
      int i5 = i7;
      int i4 = i3;
      int i3 = i8;
      label519: n++;
      int j = i5;
      int k = i4;
      int m = i3;
      continue;
      label537: if (l2 + j <= 870400L)
        if (k >= 828)
        {
          continue;
          label561: i6 = 0;
          continue;
          label567: i1 = 0;
        }
    }
  }

  public static boolean a(int paramInt1, int paramInt2)
  {
    return (paramInt2 == -1) || ((paramInt1 & paramInt2) == paramInt2);
  }

  // ERROR //
  public static byte[] a(List<com.nianticproject.ingress.shared.plext.c> paramList)
  {
    // Byte code:
    //   0: new 353	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 354	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: new 356	java/io/ObjectOutputStream
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 359	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_2
    //   17: aload_2
    //   18: aload_0
    //   19: invokeinterface 365 2 0
    //   24: aload_1
    //   25: invokevirtual 368	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   28: astore 7
    //   30: aload_2
    //   31: invokeinterface 369 1 0
    //   36: aload_1
    //   37: invokevirtual 370	java/io/ByteArrayOutputStream:close	()V
    //   40: aload 7
    //   42: areturn
    //   43: astore 8
    //   45: getstatic 21	com/nianticproject/ingress/content/a:a	Lcom/nianticproject/ingress/common/w/aa;
    //   48: aload 8
    //   50: ldc_w 372
    //   53: invokevirtual 375	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   56: aload 7
    //   58: areturn
    //   59: astore_3
    //   60: aconst_null
    //   61: astore_2
    //   62: getstatic 21	com/nianticproject/ingress/content/a:a	Lcom/nianticproject/ingress/common/w/aa;
    //   65: aload_3
    //   66: ldc_w 377
    //   69: invokevirtual 375	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   72: aload_2
    //   73: invokeinterface 369 1 0
    //   78: aload_1
    //   79: invokevirtual 370	java/io/ByteArrayOutputStream:close	()V
    //   82: aconst_null
    //   83: areturn
    //   84: astore 6
    //   86: getstatic 21	com/nianticproject/ingress/content/a:a	Lcom/nianticproject/ingress/common/w/aa;
    //   89: aload 6
    //   91: ldc_w 372
    //   94: invokevirtual 375	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   97: aconst_null
    //   98: areturn
    //   99: astore 9
    //   101: aconst_null
    //   102: astore_2
    //   103: aload 9
    //   105: astore 4
    //   107: aload_2
    //   108: invokeinterface 369 1 0
    //   113: aload_1
    //   114: invokevirtual 370	java/io/ByteArrayOutputStream:close	()V
    //   117: aload 4
    //   119: athrow
    //   120: astore 5
    //   122: getstatic 21	com/nianticproject/ingress/content/a:a	Lcom/nianticproject/ingress/common/w/aa;
    //   125: aload 5
    //   127: ldc_w 372
    //   130: invokevirtual 375	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   133: goto -16 -> 117
    //   136: astore 4
    //   138: goto -31 -> 107
    //   141: astore_3
    //   142: goto -80 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   30	40	43	java/io/IOException
    //   8	17	59	java/io/IOException
    //   72	82	84	java/io/IOException
    //   8	17	99	finally
    //   107	117	120	java/io/IOException
    //   17	30	136	finally
    //   62	72	136	finally
    //   17	30	141	java/io/IOException
  }

  private static void b(Context paramContext, int paramInt)
  {
    ContentValues[] arrayOfContentValues = new ContentValues[paramInt];
    System.arraycopy(b, 0, arrayOfContentValues, 0, paramInt);
    paramContext.getContentResolver().bulkInsert(a(b.a, null), arrayOfContentValues);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.content.a
 * JD-Core Version:    0.6.2
 */