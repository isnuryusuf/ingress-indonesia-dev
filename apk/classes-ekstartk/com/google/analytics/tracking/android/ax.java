package com.google.analytics.tracking.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.Command;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ax
  implements h
{
  private static final String a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
  private final ba b;
  private volatile m c;
  private final i d;
  private final Context e;
  private final String f;
  private long g;
  private l h;

  ax(i parami, Context paramContext)
  {
    this(parami, paramContext, "google_analytics_v2.db");
  }

  private ax(i parami, Context paramContext, String paramString)
  {
    this.e = paramContext.getApplicationContext();
    this.f = paramString;
    this.d = parami;
    this.h = new ay(this);
    this.b = new ba(this, this.e, this.f);
    this.c = new bd(new az(this), this.e);
    this.g = 0L;
  }

  private SQLiteDatabase a(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.b.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      aq.f(paramString);
    }
    return null;
  }

  private static String a(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.size());
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localArrayList.add((String)localEntry.getKey() + "=" + ao.a((String)localEntry.getValue()));
    }
    return TextUtils.join("&", localArrayList);
  }

  // ERROR //
  private List<an> a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 180
    //   3: invokespecial 182	com/google/analytics/tracking/android/ax:a	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +13 -> 21
    //   11: new 108	java/util/ArrayList
    //   14: dup
    //   15: invokespecial 183	java/util/ArrayList:<init>	()V
    //   18: astore_3
    //   19: aload_3
    //   20: areturn
    //   21: aconst_null
    //   22: astore 4
    //   24: new 108	java/util/ArrayList
    //   27: dup
    //   28: invokespecial 183	java/util/ArrayList:<init>	()V
    //   31: pop
    //   32: aload_2
    //   33: ldc 27
    //   35: iconst_3
    //   36: anewarray 39	java/lang/String
    //   39: dup
    //   40: iconst_0
    //   41: ldc 29
    //   43: aastore
    //   44: dup
    //   45: iconst_1
    //   46: ldc 31
    //   48: aastore
    //   49: dup
    //   50: iconst_2
    //   51: ldc 33
    //   53: aastore
    //   54: aconst_null
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: ldc 185
    //   60: iconst_2
    //   61: anewarray 4	java/lang/Object
    //   64: dup
    //   65: iconst_0
    //   66: ldc 33
    //   68: aastore
    //   69: dup
    //   70: iconst_1
    //   71: ldc 29
    //   73: aastore
    //   74: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   77: iload_1
    //   78: invokestatic 190	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   81: invokevirtual 196	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   84: astore 10
    //   86: aload 10
    //   88: astore 11
    //   90: new 108	java/util/ArrayList
    //   93: dup
    //   94: invokespecial 183	java/util/ArrayList:<init>	()V
    //   97: astore 12
    //   99: aload 11
    //   101: invokeinterface 201 1 0
    //   106: ifeq +65 -> 171
    //   109: new 203	com/google/analytics/tracking/android/an
    //   112: dup
    //   113: aload 11
    //   115: iconst_0
    //   116: invokeinterface 207 2 0
    //   121: aload 11
    //   123: iconst_1
    //   124: invokeinterface 207 2 0
    //   129: invokespecial 210	com/google/analytics/tracking/android/an:<init>	(JJ)V
    //   132: astore 13
    //   134: aload 13
    //   136: aload 11
    //   138: iconst_2
    //   139: invokeinterface 213 2 0
    //   144: invokevirtual 216	com/google/analytics/tracking/android/an:b	(Ljava/lang/String;)V
    //   147: aload 12
    //   149: aload 13
    //   151: invokeinterface 169 2 0
    //   156: pop
    //   157: aload 11
    //   159: invokeinterface 219 1 0
    //   164: istore 15
    //   166: iload 15
    //   168: ifne -59 -> 109
    //   171: aload 11
    //   173: ifnull +10 -> 183
    //   176: aload 11
    //   178: invokeinterface 222 1 0
    //   183: aload_2
    //   184: ldc 27
    //   186: iconst_2
    //   187: anewarray 39	java/lang/String
    //   190: dup
    //   191: iconst_0
    //   192: ldc 29
    //   194: aastore
    //   195: dup
    //   196: iconst_1
    //   197: ldc 35
    //   199: aastore
    //   200: aconst_null
    //   201: aconst_null
    //   202: aconst_null
    //   203: aconst_null
    //   204: ldc 224
    //   206: iconst_1
    //   207: anewarray 4	java/lang/Object
    //   210: dup
    //   211: iconst_0
    //   212: ldc 29
    //   214: aastore
    //   215: invokestatic 43	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   218: iload_1
    //   219: invokestatic 190	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   222: invokevirtual 196	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   225: astore 24
    //   227: aload 24
    //   229: invokeinterface 201 1 0
    //   234: ifeq +87 -> 321
    //   237: iconst_0
    //   238: istore 25
    //   240: aload 24
    //   242: instanceof 226
    //   245: ifeq +159 -> 404
    //   248: aload 24
    //   250: checkcast 226	android/database/sqlite/SQLiteCursor
    //   253: invokevirtual 230	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   256: invokevirtual 235	android/database/CursorWindow:getNumRows	()I
    //   259: ifgt +145 -> 404
    //   262: new 141	java/lang/StringBuilder
    //   265: dup
    //   266: ldc 237
    //   268: invokespecial 239	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   271: aload 12
    //   273: iload 25
    //   275: invokeinterface 243 2 0
    //   280: checkcast 203	com/google/analytics/tracking/android/an
    //   283: invokevirtual 246	com/google/analytics/tracking/android/an:b	()J
    //   286: invokevirtual 249	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   289: ldc 251
    //   291: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   297: invokestatic 104	com/google/analytics/tracking/android/aq:f	(Ljava/lang/String;)I
    //   300: pop
    //   301: iload 25
    //   303: iconst_1
    //   304: iadd
    //   305: istore 26
    //   307: aload 24
    //   309: invokeinterface 219 1 0
    //   314: istore 27
    //   316: iload 27
    //   318: ifne +291 -> 609
    //   321: aload 24
    //   323: ifnull +10 -> 333
    //   326: aload 24
    //   328: invokeinterface 222 1 0
    //   333: aload 12
    //   335: areturn
    //   336: astore 7
    //   338: aconst_null
    //   339: astore 8
    //   341: new 141	java/lang/StringBuilder
    //   344: dup
    //   345: ldc 253
    //   347: invokespecial 239	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   350: aload 7
    //   352: invokevirtual 256	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   355: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   361: invokestatic 104	com/google/analytics/tracking/android/aq:f	(Ljava/lang/String;)I
    //   364: pop
    //   365: new 108	java/util/ArrayList
    //   368: dup
    //   369: invokespecial 183	java/util/ArrayList:<init>	()V
    //   372: astore_3
    //   373: aload 8
    //   375: ifnull -356 -> 19
    //   378: aload 8
    //   380: invokeinterface 222 1 0
    //   385: aload_3
    //   386: areturn
    //   387: astore 6
    //   389: aload 4
    //   391: ifnull +10 -> 401
    //   394: aload 4
    //   396: invokeinterface 222 1 0
    //   401: aload 6
    //   403: athrow
    //   404: aload 12
    //   406: iload 25
    //   408: invokeinterface 243 2 0
    //   413: checkcast 203	com/google/analytics/tracking/android/an
    //   416: aload 24
    //   418: iconst_1
    //   419: invokeinterface 213 2 0
    //   424: invokevirtual 258	com/google/analytics/tracking/android/an:a	(Ljava/lang/String;)V
    //   427: goto -126 -> 301
    //   430: astore 16
    //   432: aload 24
    //   434: astore 11
    //   436: new 141	java/lang/StringBuilder
    //   439: dup
    //   440: ldc_w 260
    //   443: invokespecial 239	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   446: aload 16
    //   448: invokevirtual 256	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   451: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   457: invokestatic 104	com/google/analytics/tracking/android/aq:f	(Ljava/lang/String;)I
    //   460: pop
    //   461: new 108	java/util/ArrayList
    //   464: dup
    //   465: invokespecial 183	java/util/ArrayList:<init>	()V
    //   468: astore 19
    //   470: iconst_0
    //   471: istore 20
    //   473: aload 12
    //   475: invokeinterface 261 1 0
    //   480: astore 21
    //   482: aload 21
    //   484: invokeinterface 133 1 0
    //   489: ifeq +64 -> 553
    //   492: aload 21
    //   494: invokeinterface 137 1 0
    //   499: checkcast 203	com/google/analytics/tracking/android/an
    //   502: astore 22
    //   504: aload 22
    //   506: invokevirtual 263	com/google/analytics/tracking/android/an:a	()Ljava/lang/String;
    //   509: invokestatic 267	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   512: ifeq +11 -> 523
    //   515: iload 20
    //   517: ifne +36 -> 553
    //   520: iconst_1
    //   521: istore 20
    //   523: aload 19
    //   525: aload 22
    //   527: invokeinterface 169 2 0
    //   532: pop
    //   533: goto -51 -> 482
    //   536: astore 17
    //   538: aload 11
    //   540: ifnull +10 -> 550
    //   543: aload 11
    //   545: invokeinterface 222 1 0
    //   550: aload 17
    //   552: athrow
    //   553: aload 11
    //   555: ifnull +10 -> 565
    //   558: aload 11
    //   560: invokeinterface 222 1 0
    //   565: aload 19
    //   567: areturn
    //   568: astore 17
    //   570: aload 24
    //   572: astore 11
    //   574: goto -36 -> 538
    //   577: astore 16
    //   579: goto -143 -> 436
    //   582: astore 6
    //   584: aload 11
    //   586: astore 4
    //   588: goto -199 -> 389
    //   591: astore 6
    //   593: aload 8
    //   595: astore 4
    //   597: goto -208 -> 389
    //   600: astore 7
    //   602: aload 11
    //   604: astore 8
    //   606: goto -265 -> 341
    //   609: iload 26
    //   611: istore 25
    //   613: goto -373 -> 240
    //
    // Exception table:
    //   from	to	target	type
    //   32	86	336	android/database/sqlite/SQLiteException
    //   32	86	387	finally
    //   227	237	430	android/database/sqlite/SQLiteException
    //   240	301	430	android/database/sqlite/SQLiteException
    //   307	316	430	android/database/sqlite/SQLiteException
    //   404	427	430	android/database/sqlite/SQLiteException
    //   183	227	536	finally
    //   436	470	536	finally
    //   473	482	536	finally
    //   482	515	536	finally
    //   523	533	536	finally
    //   227	237	568	finally
    //   240	301	568	finally
    //   307	316	568	finally
    //   404	427	568	finally
    //   183	227	577	android/database/sqlite/SQLiteException
    //   90	109	582	finally
    //   109	166	582	finally
    //   341	373	591	finally
    //   90	109	600	android/database/sqlite/SQLiteException
    //   109	166	600	android/database/sqlite/SQLiteException
  }

  private void a(Collection<an> paramCollection)
  {
    if (paramCollection == null)
      throw new NullPointerException("hits cannot be null");
    if (paramCollection.isEmpty());
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return;
      localSQLiteDatabase = a("Error opening database for deleteHit");
    }
    while (localSQLiteDatabase == null);
    String[] arrayOfString = new String[paramCollection.size()];
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = TextUtils.join(",", Collections.nCopies(arrayOfString.length, "?"));
    String str = String.format("HIT_ID in (%s)", arrayOfObject);
    Iterator localIterator = paramCollection.iterator();
    int k;
    for (int i = 0; localIterator.hasNext(); i = k)
    {
      an localan = (an)localIterator.next();
      k = i + 1;
      arrayOfString[i] = Long.toString(localan.b());
    }
    try
    {
      localSQLiteDatabase.delete("hits2", str, arrayOfString);
      i locali = this.d;
      int j = d();
      boolean bool = false;
      if (j == 0)
        bool = true;
      locali.a(bool);
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      aq.f("Error deleting hit " + paramCollection);
    }
  }

  private int d()
  {
    Cursor localCursor = null;
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for requestNumHitsPending");
    int i = 0;
    if (localSQLiteDatabase == null);
    while (true)
    {
      return i;
      try
      {
        localCursor = localSQLiteDatabase.rawQuery("SELECT COUNT(*) from hits2", null);
        boolean bool = localCursor.moveToFirst();
        i = 0;
        if (bool)
        {
          long l = localCursor.getLong(0);
          i = (int)l;
        }
        return i;
      }
      catch (SQLiteException localSQLiteException)
      {
        aq.f("Error getting numStoredHits");
        i = 0;
        return 0;
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
    }
  }

  public final void a()
  {
    boolean bool = true;
    SQLiteDatabase localSQLiteDatabase = a("Error opening database for clearHits");
    i locali;
    if (localSQLiteDatabase != null)
    {
      if (0L != 0L)
        break label51;
      localSQLiteDatabase.delete("hits2", null, null);
      locali = this.d;
      if (d() != 0)
        break label80;
    }
    while (true)
    {
      locali.a(bool);
      return;
      label51: String[] arrayOfString = new String[bool];
      arrayOfString[0] = Long.valueOf(0L).toString();
      localSQLiteDatabase.delete("hits2", "hit_app_id = ?", arrayOfString);
      break;
      label80: bool = false;
    }
  }

  public final void a(Map<String, String> paramMap, long paramLong, String paramString, Collection<Command> paramCollection)
  {
    boolean bool = true;
    long l1 = this.h.a();
    if (l1 > 86400000L + this.g)
    {
      this.g = l1;
      SQLiteDatabase localSQLiteDatabase2 = a("Error opening database for deleteStaleHits");
      if (localSQLiteDatabase2 != null)
      {
        long l4 = this.h.a() - 2592000000L;
        String[] arrayOfString = new String[bool];
        arrayOfString[0] = Long.toString(l4);
        localSQLiteDatabase2.delete("hits2", "HIT_TIME < ?", arrayOfString);
        i locali = this.d;
        if (d() != 0)
          break label379;
        locali.a(bool);
      }
    }
    Iterator localIterator = paramCollection.iterator();
    String str1;
    String str3;
    while (localIterator.hasNext())
    {
      Command localCommand = (Command)localIterator.next();
      if (localCommand.a().equals("appendVersion"))
      {
        str1 = localCommand.c();
        String str2 = localCommand.b();
        if (str1 != null)
          break label385;
        str3 = "";
        if (str2 != null)
          paramMap.put(str2, str3);
      }
    }
    int i = 1 + (-2000 + d());
    if (i > 0)
    {
      List localList = a(i);
      aq.g("Store full, deleting " + localList.size() + " hits to make room");
      a(localList);
    }
    SQLiteDatabase localSQLiteDatabase1 = a("Error opening database for putHit");
    ContentValues localContentValues;
    if (localSQLiteDatabase1 != null)
    {
      localContentValues = new ContentValues();
      localContentValues.put("hit_string", a(paramMap));
      localContentValues.put("hit_time", Long.valueOf(paramLong));
      if (!paramMap.containsKey("AppUID"))
        break label407;
    }
    while (true)
    {
      try
      {
        long l3 = Long.parseLong((String)paramMap.get("AppUID"));
        l2 = l3;
        localContentValues.put("hit_app_id", Long.valueOf(l2));
        if (paramString == null)
          paramString = "http://www.google-analytics.com/collect";
        if (paramString.length() != 0)
          break label413;
        aq.f("empty path: not sending hit");
        return;
        label379: bool = false;
        break;
        label385: str3 = str1;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
      label407: long l2 = 0L;
    }
    label413: localContentValues.put("hit_url", paramString);
    try
    {
      localSQLiteDatabase1.insert("hits2", null, localContentValues);
      this.d.a(false);
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      aq.f("Error storing hit");
    }
  }

  public final void b()
  {
    aq.e("dispatch running...");
    if (!this.c.a());
    List localList;
    int i;
    do
    {
      return;
      localList = a(40);
      if (localList.isEmpty())
      {
        aq.e("...nothing to dispatch");
        this.d.a(true);
        return;
      }
      i = this.c.a(localList);
      aq.e("sent " + i + " of " + localList.size() + " hits");
      a(localList.subList(0, Math.min(i, localList.size())));
    }
    while ((i != localList.size()) || (d() <= 0));
    q.a().c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ax
 * JD-Core Version:    0.6.2
 */