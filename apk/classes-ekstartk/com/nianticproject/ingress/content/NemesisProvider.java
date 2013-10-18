package com.nianticproject.ingress.content;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.al;
import com.nianticproject.ingress.shared.aj;
import java.util.Formatter;

public class NemesisProvider extends ContentProvider
{
  private static final aa a = new aa(NemesisProvider.class);
  private static final UriMatcher b;
  private g c;

  static
  {
    UriMatcher localUriMatcher = new UriMatcher(-1);
    b = localUriMatcher;
    localUriMatcher.addURI("com.nianticproject.ingress.content.NemesisProvider", "comms", 0);
    b.addURI("com.nianticproject.ingress.content.NemesisProvider", "comms/group/#", 1);
    b.addURI("com.nianticproject.ingress.content.NemesisProvider", "comms/group/#/limit/#", 2);
    b.addURI("com.nianticproject.ingress.content.NemesisProvider", "comms/stats", 3);
    b.addURI("com.nianticproject.ingress.content.NemesisProvider", "portal_curation", 4);
  }

  private static long a(SQLiteDatabase paramSQLiteDatabase, ContentValues paramContentValues)
  {
    return paramSQLiteDatabase.insertWithOnConflict("comms", null, paramContentValues, 4);
  }

  private static void a(SQLiteDatabase paramSQLiteDatabase, long paramLong)
  {
    if (DatabaseUtils.queryNumEntries(paramSQLiteDatabase, "comms") <= 828L)
      return;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Long.toString(paramLong - 828L);
    paramSQLiteDatabase.delete("comms", "_id <= ?", arrayOfString);
  }

  static String[] a()
  {
    return new String[] { "drop index if exists ix_comms_by_from_server;", "drop index if exists ix_comms_by_temporary;", "drop index if exists ix_comms_by_factions;", "drop table if exists comms;" };
  }

  static String b()
  {
    return "drop table if exists portal_curation;";
  }

  private static String b(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null)
      return "null";
    Formatter localFormatter = new Formatter();
    while (true)
    {
      try
      {
        localFormatter.format("[", new Object[0]);
        int i = 0;
        if (i < paramArrayOfString.length)
        {
          if (i <= 0)
            break label105;
          str1 = ", %s";
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramArrayOfString[i];
          localFormatter.format(str1, arrayOfObject);
          i++;
          continue;
        }
        localFormatter.format("]", new Object[0]);
        String str2 = localFormatter.toString();
        return str2;
      }
      finally
      {
        localFormatter.close();
      }
      label105: String str1 = "%s";
    }
  }

  static String c()
  {
    return "alter table portal_curation add column upload_url TEXT;";
  }

  static String d()
  {
    return "alter table portal_curation add column takedown_reason TEXT;";
  }

  static String[] e()
  {
    return new String[] { "CREATE TABLE comms (_id INTEGER PRIMARY KEY AUTOINCREMENT,message TEXT NOT NULL,markup BLOB,plext_type INT NOT NULL,timestamp INT NOT NULL,duration INT NOT NULL,channel INT NOT NULL,guid TEXT UNIQUE NOT NULL,categories INT DEFAULT 0,temporary INT DEFAULT 0,from_server INT NOT NULL,has_nudge INT DEFAULT 0 NOT NULL);", "CREATE UNIQUE INDEX ix_comms_by_factions on comms(channel,plext_type,timestamp,categories,_id);", "CREATE UNIQUE INDEX ix_comms_by_temporary on comms(temporary DESC,_id);", "CREATE UNIQUE INDEX ix_comms_by_from_server on comms(from_server DESC,_id);", "CREATE TABLE IF NOT EXISTS portal_curation (request_id TEXT PRIMARY KEY,portal_guid TEXT,title TEXT,desc TEXT,latitude REAL,longitude REAL,photo_uri TEXT,timestamp INTEGER NOT NULL,metadata_uploaded INTEGER DEFAULT(0),photo_uploaded INTEGER DEFAULT(0),account TEXT NOT NULL,failed_metadata_upload_count INTEGER DEFAULT(0),failed_photo_upload_count INTEGER DEFAULT(0),upload_url TEXT,takedown_reason TEXT);" };
  }

  public int bulkInsert(Uri paramUri, ContentValues[] paramArrayOfContentValues)
  {
    int i = 0;
    while (true)
    {
      int k;
      try
      {
        aj.a("NemesisProvider.bulkInsert");
        al localal = new al().a();
        SQLiteDatabase localSQLiteDatabase = this.c.getWritableDatabase();
        switch (b.match(paramUri))
        {
        default:
          int m = super.bulkInsert(paramUri, paramArrayOfContentValues);
          return m;
        case 1:
        }
        localSQLiteDatabase.beginTransaction();
        try
        {
          int j = paramArrayOfContentValues.length;
          k = 0;
          long l = -1L;
          if (k < j)
          {
            l = a(localSQLiteDatabase, paramArrayOfContentValues[k]);
            if (l != -1L)
              i++;
          }
          else
          {
            if ((i > 0) && (l != -1L))
              a(localSQLiteDatabase, l);
            localSQLiteDatabase.setTransactionSuccessful();
            localSQLiteDatabase.endTransaction();
            localal.b();
            Object[] arrayOfObject = new Object[3];
            arrayOfObject[0] = Integer.valueOf(paramArrayOfContentValues.length);
            arrayOfObject[1] = Integer.valueOf(i);
            arrayOfObject[2] = Long.valueOf(localal.c());
            getContext().getContentResolver().notifyChange(paramUri, null, false);
            return i;
          }
        }
        finally
        {
          localSQLiteDatabase.endTransaction();
        }
      }
      finally
      {
        aj.b();
      }
      k++;
    }
  }

  // ERROR //
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: ldc 209
    //   2: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   5: new 141	com/nianticproject/ingress/common/w/al
    //   8: dup
    //   9: invokespecial 142	com/nianticproject/ingress/common/w/al:<init>	()V
    //   12: invokevirtual 145	com/nianticproject/ingress/common/w/al:a	()Lcom/nianticproject/ingress/common/w/al;
    //   15: astore 5
    //   17: ldc 211
    //   19: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   22: new 213	com/nianticproject/ingress/content/h
    //   25: dup
    //   26: aload_0
    //   27: aload_2
    //   28: aload_3
    //   29: invokespecial 216	com/nianticproject/ingress/content/h:<init>	(Lcom/nianticproject/ingress/content/NemesisProvider;Ljava/lang/String;[Ljava/lang/String;)V
    //   32: astore 7
    //   34: getstatic 27	com/nianticproject/ingress/content/NemesisProvider:b	Landroid/content/UriMatcher;
    //   37: aload_1
    //   38: invokevirtual 157	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   41: tableswitch	default:+35 -> 76, 0:+78->119, 1:+185->226, 2:+35->76, 3:+35->76, 4:+215->256
    //   77: nop
    //   78: <illegal opcode>
    //   79: dup
    //   80: new 220	java/lang/StringBuilder
    //   83: dup
    //   84: ldc 222
    //   86: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: aload_1
    //   90: invokevirtual 227	android/net/Uri:toString	()Ljava/lang/String;
    //   93: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokespecial 233	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   102: athrow
    //   103: astore 6
    //   105: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   108: aload 6
    //   110: athrow
    //   111: astore 4
    //   113: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   116: aload 4
    //   118: athrow
    //   119: ldc 31
    //   121: astore 8
    //   123: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   126: ldc 235
    //   128: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   131: aload_0
    //   132: getfield 147	com/nianticproject/ingress/content/NemesisProvider:c	Lcom/nianticproject/ingress/content/g;
    //   135: invokevirtual 153	com/nianticproject/ingress/content/g:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   138: aload 8
    //   140: aload 7
    //   142: invokevirtual 237	com/nianticproject/ingress/content/h:a	()Ljava/lang/String;
    //   145: aload 7
    //   147: invokevirtual 239	com/nianticproject/ingress/content/h:b	()[Ljava/lang/String;
    //   150: invokevirtual 78	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   153: istore 10
    //   155: aload 5
    //   157: invokevirtual 178	com/nianticproject/ingress/common/w/al:b	()Lcom/nianticproject/ingress/common/w/al;
    //   160: pop
    //   161: getstatic 20	com/nianticproject/ingress/content/NemesisProvider:a	Lcom/nianticproject/ingress/common/w/aa;
    //   164: pop
    //   165: iconst_4
    //   166: anewarray 99	java/lang/Object
    //   169: astore 13
    //   171: aload 13
    //   173: iconst_0
    //   174: aload 8
    //   176: aastore
    //   177: aload 13
    //   179: iconst_1
    //   180: aload 7
    //   182: aastore
    //   183: aload 13
    //   185: iconst_2
    //   186: iload 10
    //   188: invokestatic 184	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   191: aastore
    //   192: aload 13
    //   194: iconst_3
    //   195: aload 5
    //   197: invokevirtual 187	com/nianticproject/ingress/common/w/al:c	()J
    //   200: invokestatic 190	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   203: aastore
    //   204: aload_0
    //   205: invokevirtual 194	com/nianticproject/ingress/content/NemesisProvider:getContext	()Landroid/content/Context;
    //   208: invokevirtual 200	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   211: aload_1
    //   212: aconst_null
    //   213: iconst_0
    //   214: invokevirtual 206	android/content/ContentResolver:notifyChange	(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    //   217: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   220: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   223: iload 10
    //   225: ireturn
    //   226: ldc 31
    //   228: astore 8
    //   230: aload 7
    //   232: ldc 241
    //   234: aload_1
    //   235: invokevirtual 244	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   238: invokestatic 248	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   241: invokestatic 253	com/nianticproject/ingress/common/b:a	(I)Lcom/nianticproject/ingress/common/b;
    //   244: getfield 256	com/nianticproject/ingress/common/b:c	I
    //   247: invokestatic 259	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   250: invokevirtual 262	com/nianticproject/ingress/content/h:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   253: goto -130 -> 123
    //   256: ldc 43
    //   258: astore 8
    //   260: goto -137 -> 123
    //   263: astore 9
    //   265: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   268: aload 9
    //   270: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   17	76	103	finally
    //   76	103	103	finally
    //   230	253	103	finally
    //   0	17	111	finally
    //   105	111	111	finally
    //   123	126	111	finally
    //   217	220	111	finally
    //   265	271	111	finally
    //   126	217	263	finally
  }

  public String getType(Uri paramUri)
  {
    switch (b.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unknown Uri type: " + paramUri.toString());
    case 0:
    case 1:
    case 2:
      return "vnd.android.cursor.dir/vnd.nianticproject.ingress.comms";
    case 3:
      return "vnd.android.cursor.item/vnd.nianticproject.ingress.comms";
    case 4:
    }
    return "vnd.android.cursor.dir/vnd.nianticproject.ingress.portal_curation";
  }

  // ERROR //
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: ldc_w 276
    //   5: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   8: new 141	com/nianticproject/ingress/common/w/al
    //   11: dup
    //   12: invokespecial 142	com/nianticproject/ingress/common/w/al:<init>	()V
    //   15: invokevirtual 145	com/nianticproject/ingress/common/w/al:a	()Lcom/nianticproject/ingress/common/w/al;
    //   18: astore 5
    //   20: aload_0
    //   21: getfield 147	com/nianticproject/ingress/content/NemesisProvider:c	Lcom/nianticproject/ingress/content/g;
    //   24: invokevirtual 153	com/nianticproject/ingress/content/g:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   27: astore 6
    //   29: getstatic 27	com/nianticproject/ingress/content/NemesisProvider:b	Landroid/content/UriMatcher;
    //   32: aload_1
    //   33: invokevirtual 157	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   36: tableswitch	default:+32 -> 68, 1:+68->104, 2:+32->68, 3:+32->68, 4:+149->185
    //   69: nop
    //   70: <illegal opcode>
    //   71: dup
    //   72: new 220	java/lang/StringBuilder
    //   75: dup
    //   76: ldc_w 278
    //   79: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload_1
    //   83: invokevirtual 227	android/net/Uri:toString	()Ljava/lang/String;
    //   86: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokespecial 233	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   95: athrow
    //   96: astore 4
    //   98: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   101: aload 4
    //   103: athrow
    //   104: aload 6
    //   106: aload_2
    //   107: invokestatic 168	com/nianticproject/ingress/content/NemesisProvider:a	(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    //   110: lstore 9
    //   112: aload 6
    //   114: lload 9
    //   116: invokestatic 170	com/nianticproject/ingress/content/NemesisProvider:a	(Landroid/database/sqlite/SQLiteDatabase;J)V
    //   119: aload 5
    //   121: invokevirtual 178	com/nianticproject/ingress/common/w/al:b	()Lcom/nianticproject/ingress/common/w/al;
    //   124: pop
    //   125: getstatic 20	com/nianticproject/ingress/content/NemesisProvider:a	Lcom/nianticproject/ingress/common/w/aa;
    //   128: pop
    //   129: iconst_2
    //   130: anewarray 99	java/lang/Object
    //   133: astore 13
    //   135: aload 13
    //   137: iconst_0
    //   138: aload_2
    //   139: invokevirtual 284	android/content/ContentValues:size	()I
    //   142: invokestatic 184	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   145: aastore
    //   146: aload 13
    //   148: iconst_1
    //   149: aload 5
    //   151: invokevirtual 187	com/nianticproject/ingress/common/w/al:c	()J
    //   154: invokestatic 190	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   157: aastore
    //   158: aload_0
    //   159: invokevirtual 194	com/nianticproject/ingress/content/NemesisProvider:getContext	()Landroid/content/Context;
    //   162: invokevirtual 200	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   165: aload_1
    //   166: aconst_null
    //   167: iload_3
    //   168: invokevirtual 206	android/content/ContentResolver:notifyChange	(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    //   171: aload_1
    //   172: lload 9
    //   174: invokestatic 290	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   177: astore 14
    //   179: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   182: aload 14
    //   184: areturn
    //   185: aload 6
    //   187: ldc 43
    //   189: aconst_null
    //   190: aload_2
    //   191: invokevirtual 293	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   194: lstore 7
    //   196: iconst_1
    //   197: istore_3
    //   198: lload 7
    //   200: lstore 9
    //   202: goto -83 -> 119
    //
    // Exception table:
    //   from	to	target	type
    //   2	68	96	finally
    //   68	96	96	finally
    //   104	119	96	finally
    //   119	179	96	finally
    //   185	196	96	finally
  }

  public boolean onCreate()
  {
    try
    {
      aj.a("NemesisProvider.onCreate");
      this.c = new g(getContext());
      return true;
    }
    finally
    {
      aj.b();
    }
  }

  // ERROR //
  public android.database.Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: ldc_w 304
    //   6: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   9: new 141	com/nianticproject/ingress/common/w/al
    //   12: dup
    //   13: invokespecial 142	com/nianticproject/ingress/common/w/al:<init>	()V
    //   16: invokevirtual 145	com/nianticproject/ingress/common/w/al:a	()Lcom/nianticproject/ingress/common/w/al;
    //   19: astore 8
    //   21: new 213	com/nianticproject/ingress/content/h
    //   24: dup
    //   25: aload_0
    //   26: aload_3
    //   27: aload 4
    //   29: invokespecial 216	com/nianticproject/ingress/content/h:<init>	(Lcom/nianticproject/ingress/content/NemesisProvider;Ljava/lang/String;[Ljava/lang/String;)V
    //   32: astore 9
    //   34: ldc 211
    //   36: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   39: getstatic 27	com/nianticproject/ingress/content/NemesisProvider:b	Landroid/content/UriMatcher;
    //   42: aload_1
    //   43: invokevirtual 157	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   46: tableswitch	default:+30 -> 76, 1:+74->120, 2:+170->216, 3:+233->279, 4:+215->261
    //   77: nop
    //   78: <illegal opcode>
    //   79: dup
    //   80: new 220	java/lang/StringBuilder
    //   83: dup
    //   84: ldc_w 306
    //   87: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: aload_1
    //   91: invokevirtual 227	android/net/Uri:toString	()Ljava/lang/String;
    //   94: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokespecial 233	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   103: athrow
    //   104: astore 10
    //   106: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   109: aload 10
    //   111: athrow
    //   112: astore 7
    //   114: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   117: aload 7
    //   119: athrow
    //   120: ldc 31
    //   122: astore 11
    //   124: aload 9
    //   126: ldc 241
    //   128: aload_1
    //   129: invokevirtual 244	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   132: invokestatic 248	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   135: invokestatic 253	com/nianticproject/ingress/common/b:a	(I)Lcom/nianticproject/ingress/common/b;
    //   138: getfield 256	com/nianticproject/ingress/common/b:c	I
    //   141: invokestatic 259	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   144: invokevirtual 262	com/nianticproject/ingress/content/h:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   147: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   150: ldc 235
    //   152: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   155: aload_0
    //   156: getfield 147	com/nianticproject/ingress/content/NemesisProvider:c	Lcom/nianticproject/ingress/content/g;
    //   159: invokevirtual 309	com/nianticproject/ingress/content/g:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   162: aload 11
    //   164: aload_2
    //   165: aload 9
    //   167: invokevirtual 237	com/nianticproject/ingress/content/h:a	()Ljava/lang/String;
    //   170: aload 9
    //   172: invokevirtual 239	com/nianticproject/ingress/content/h:b	()[Ljava/lang/String;
    //   175: aconst_null
    //   176: aconst_null
    //   177: aload 5
    //   179: aload 6
    //   181: invokevirtual 312	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   184: astore 13
    //   186: aload 13
    //   188: aload_0
    //   189: invokevirtual 194	com/nianticproject/ingress/content/NemesisProvider:getContext	()Landroid/content/Context;
    //   192: invokevirtual 200	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   195: aload_1
    //   196: invokeinterface 318 3 0
    //   201: aload 8
    //   203: invokevirtual 178	com/nianticproject/ingress/common/w/al:b	()Lcom/nianticproject/ingress/common/w/al;
    //   206: pop
    //   207: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   210: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   213: aload 13
    //   215: areturn
    //   216: ldc 31
    //   218: astore 11
    //   220: aload_1
    //   221: invokevirtual 244	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   224: astore 6
    //   226: aload 9
    //   228: ldc 241
    //   230: aload_1
    //   231: invokevirtual 322	android/net/Uri:getPathSegments	()Ljava/util/List;
    //   234: iconst_2
    //   235: invokeinterface 328 2 0
    //   240: checkcast 66	java/lang/String
    //   243: invokestatic 248	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   246: invokestatic 253	com/nianticproject/ingress/common/b:a	(I)Lcom/nianticproject/ingress/common/b;
    //   249: getfield 256	com/nianticproject/ingress/common/b:c	I
    //   252: invokestatic 259	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   255: invokevirtual 262	com/nianticproject/ingress/content/h:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   258: goto -111 -> 147
    //   261: ldc 43
    //   263: astore 11
    //   265: aconst_null
    //   266: astore 6
    //   268: goto -121 -> 147
    //   271: astore 12
    //   273: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   276: aload 12
    //   278: athrow
    //   279: ldc 31
    //   281: astore 11
    //   283: aconst_null
    //   284: astore 6
    //   286: goto -139 -> 147
    //
    // Exception table:
    //   from	to	target	type
    //   34	76	104	finally
    //   76	104	104	finally
    //   124	147	104	finally
    //   220	258	104	finally
    //   3	34	112	finally
    //   106	112	112	finally
    //   147	150	112	finally
    //   207	210	112	finally
    //   273	279	112	finally
    //   150	207	271	finally
  }

  // ERROR //
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: ldc_w 332
    //   3: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   6: new 141	com/nianticproject/ingress/common/w/al
    //   9: dup
    //   10: invokespecial 142	com/nianticproject/ingress/common/w/al:<init>	()V
    //   13: invokevirtual 145	com/nianticproject/ingress/common/w/al:a	()Lcom/nianticproject/ingress/common/w/al;
    //   16: astore 6
    //   18: ldc 211
    //   20: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   23: getstatic 27	com/nianticproject/ingress/content/NemesisProvider:b	Landroid/content/UriMatcher;
    //   26: aload_1
    //   27: invokevirtual 157	android/content/UriMatcher:match	(Landroid/net/Uri;)I
    //   30: lookupswitch	default:+26->56, 0:+70->100, 4:+128->158
    //   57: nop
    //   58: <illegal opcode>
    //   59: dup
    //   60: new 220	java/lang/StringBuilder
    //   63: dup
    //   64: ldc_w 334
    //   67: invokespecial 224	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: aload_1
    //   71: invokevirtual 227	android/net/Uri:toString	()Ljava/lang/String;
    //   74: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 232	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokespecial 233	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   83: athrow
    //   84: astore 7
    //   86: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   89: aload 7
    //   91: athrow
    //   92: astore 5
    //   94: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   97: aload 5
    //   99: athrow
    //   100: ldc 31
    //   102: astore 8
    //   104: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   107: ldc 235
    //   109: invokestatic 139	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   112: aload_0
    //   113: getfield 147	com/nianticproject/ingress/content/NemesisProvider:c	Lcom/nianticproject/ingress/content/g;
    //   116: invokevirtual 153	com/nianticproject/ingress/content/g:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   119: aload 8
    //   121: aload_2
    //   122: aload_3
    //   123: aload 4
    //   125: invokevirtual 337	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   128: istore 10
    //   130: aload 6
    //   132: invokevirtual 178	com/nianticproject/ingress/common/w/al:b	()Lcom/nianticproject/ingress/common/w/al;
    //   135: pop
    //   136: aload_0
    //   137: invokevirtual 194	com/nianticproject/ingress/content/NemesisProvider:getContext	()Landroid/content/Context;
    //   140: invokevirtual 200	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   143: aload_1
    //   144: aconst_null
    //   145: iconst_0
    //   146: invokevirtual 206	android/content/ContentResolver:notifyChange	(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    //   149: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   152: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   155: iload 10
    //   157: ireturn
    //   158: ldc 43
    //   160: astore 8
    //   162: goto -58 -> 104
    //   165: astore 9
    //   167: invokestatic 161	com/nianticproject/ingress/shared/aj:b	()V
    //   170: aload 9
    //   172: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   18	56	84	finally
    //   56	84	84	finally
    //   0	18	92	finally
    //   86	92	92	finally
    //   104	107	92	finally
    //   149	152	92	finally
    //   167	173	92	finally
    //   107	149	165	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.content.NemesisProvider
 * JD-Core Version:    0.6.2
 */