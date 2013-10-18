package com.google.analytics.tracking.android;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

final class ba extends SQLiteOpenHelper
{
  private boolean b;
  private long c = 0L;

  ba(ax paramax, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
  }

  // ERROR //
  private static boolean a(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc 24
    //   5: iconst_1
    //   6: anewarray 26	java/lang/String
    //   9: dup
    //   10: iconst_0
    //   11: ldc 28
    //   13: aastore
    //   14: ldc 30
    //   16: iconst_1
    //   17: anewarray 26	java/lang/String
    //   20: dup
    //   21: iconst_0
    //   22: aload_0
    //   23: aastore
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: invokevirtual 36	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore 8
    //   32: aload 8
    //   34: invokeinterface 42 1 0
    //   39: istore 10
    //   41: aload 8
    //   43: ifnull +10 -> 53
    //   46: aload 8
    //   48: invokeinterface 46 1 0
    //   53: iload 10
    //   55: ireturn
    //   56: astore 4
    //   58: aconst_null
    //   59: astore 5
    //   61: new 48	java/lang/StringBuilder
    //   64: dup
    //   65: ldc 50
    //   67: invokespecial 53	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: aload_0
    //   71: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 67	com/google/analytics/tracking/android/aq:f	(Ljava/lang/String;)I
    //   80: pop
    //   81: aload 5
    //   83: ifnull +10 -> 93
    //   86: aload 5
    //   88: invokeinterface 46 1 0
    //   93: iconst_0
    //   94: ireturn
    //   95: astore_3
    //   96: aload_2
    //   97: ifnull +9 -> 106
    //   100: aload_2
    //   101: invokeinterface 46 1 0
    //   106: aload_3
    //   107: athrow
    //   108: astore_3
    //   109: aload 8
    //   111: astore_2
    //   112: goto -16 -> 96
    //   115: astore 6
    //   117: aload 5
    //   119: astore_2
    //   120: aload 6
    //   122: astore_3
    //   123: goto -27 -> 96
    //   126: astore 9
    //   128: aload 8
    //   130: astore 5
    //   132: goto -71 -> 61
    //
    // Exception table:
    //   from	to	target	type
    //   2	32	56	android/database/sqlite/SQLiteException
    //   2	32	95	finally
    //   32	41	108	finally
    //   61	81	115	finally
    //   32	41	126	android/database/sqlite/SQLiteException
  }

  public final SQLiteDatabase getWritableDatabase()
  {
    if ((this.b) && (3600000L + this.c > ax.a(this.a).a()))
      throw new SQLiteException("Database creation failed");
    this.b = true;
    this.c = ax.a(this.a).a();
    try
    {
      SQLiteDatabase localSQLiteDatabase2 = super.getWritableDatabase();
      localSQLiteDatabase1 = localSQLiteDatabase2;
      if (localSQLiteDatabase1 == null)
        localSQLiteDatabase1 = super.getWritableDatabase();
      this.b = false;
      return localSQLiteDatabase1;
    }
    catch (SQLiteException localSQLiteException)
    {
      while (true)
      {
        ax.c(this.a).getDatabasePath(ax.b(this.a)).delete();
        SQLiteDatabase localSQLiteDatabase1 = null;
      }
    }
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    String str = paramSQLiteDatabase.getPath();
    if (o.a() >= 9)
    {
      File localFile = new File(str);
      localFile.setReadable(false, false);
      localFile.setWritable(false, false);
      localFile.setReadable(true, true);
      localFile.setWritable(true, true);
    }
  }

  public final void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    Cursor localCursor2;
    if (Build.VERSION.SDK_INT < 15)
      localCursor2 = paramSQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
    int j;
    do
    {
      try
      {
        localCursor2.moveToFirst();
        localCursor2.close();
        if (!a("hits2", paramSQLiteDatabase))
        {
          paramSQLiteDatabase.execSQL(ax.c());
          return;
        }
      }
      finally
      {
        localCursor2.close();
      }
      Cursor localCursor1 = paramSQLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", null);
      HashSet localHashSet = new HashSet();
      try
      {
        String[] arrayOfString = localCursor1.getColumnNames();
        for (int i = 0; i < arrayOfString.length; i++)
          localHashSet.add(arrayOfString[i]);
        localCursor1.close();
        if ((!localHashSet.remove("hit_id")) || (!localHashSet.remove("hit_url")) || (!localHashSet.remove("hit_string")) || (!localHashSet.remove("hit_time")))
          throw new SQLiteException("Database column missing");
      }
      finally
      {
        localCursor1.close();
      }
      boolean bool = localHashSet.remove("hit_app_id");
      j = 0;
      if (!bool)
        j = 1;
      if (!localHashSet.isEmpty())
        throw new SQLiteException("Database has extra columns");
    }
    while (j == 0);
    paramSQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ba
 * JD-Core Version:    0.6.2
 */