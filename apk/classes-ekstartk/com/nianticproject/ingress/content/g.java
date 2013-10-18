package com.nianticproject.ingress.content;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.nianticproject.ingress.common.s.c;

public final class g extends SQLiteOpenHelper
{
  private static final Object a = new Object();

  g(Context paramContext)
  {
    super(paramContext, "nemesis.db", null, 19);
  }

  public final SQLiteDatabase getReadableDatabase()
  {
    synchronized (a)
    {
      SQLiteDatabase localSQLiteDatabase = super.getReadableDatabase();
      return localSQLiteDatabase;
    }
  }

  public final SQLiteDatabase getWritableDatabase()
  {
    synchronized (a)
    {
      SQLiteDatabase localSQLiteDatabase = super.getWritableDatabase();
      return localSQLiteDatabase;
    }
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    String[] arrayOfString = NemesisProvider.e();
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      paramSQLiteDatabase.execSQL(arrayOfString[j]);
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    String[] arrayOfString = NemesisProvider.a();
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      paramSQLiteDatabase.execSQL(arrayOfString[j]);
    if ((paramInt1 == 11) || (paramInt1 == 12) || (paramInt1 == 13))
      paramSQLiteDatabase.execSQL(NemesisProvider.b());
    if ((paramInt1 >= 14) && (paramInt1 < 19))
    {
      if (paramInt1 != 14)
        break label118;
      paramSQLiteDatabase.execSQL(NemesisProvider.c());
    }
    label118: for (int k = 15; ; k = paramInt1)
    {
      if (k == 15)
        paramSQLiteDatabase.execSQL(NemesisProvider.d());
      if (paramInt1 == 15)
        c.p();
      onCreate(paramSQLiteDatabase);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.content.g
 * JD-Core Version:    0.6.2
 */