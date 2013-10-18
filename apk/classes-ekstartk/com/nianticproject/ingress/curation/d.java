package com.nianticproject.ingress.curation;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;

public final class d
{
  public static final Uri a = new Uri.Builder().scheme("content").authority("com.nianticproject.ingress.content.NemesisProvider").path("portal_curation").build();

  public static PortalCurationTask a(Context paramContext)
  {
    Cursor localCursor = paramContext.getContentResolver().query(a, PortalCurationTask.a, "metadata_uploaded == ? OR photo_uploaded == ?", new String[] { "0", "0" }, "timestamp");
    if (localCursor == null)
      return null;
    try
    {
      if (localCursor.moveToNext())
      {
        PortalCurationTask localPortalCurationTask = PortalCurationTask.a(localCursor);
        return localPortalCurationTask;
      }
      return null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public static PortalCurationTask a(Context paramContext, String paramString)
  {
    Cursor localCursor = paramContext.getContentResolver().query(a, PortalCurationTask.a, "request_id=?", new String[] { paramString }, null);
    if (localCursor == null)
      return null;
    try
    {
      if (localCursor.moveToNext())
      {
        PortalCurationTask localPortalCurationTask = PortalCurationTask.a(localCursor);
        return localPortalCurationTask;
      }
      return null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public static void a(Context paramContext, PortalCurationTask paramPortalCurationTask)
  {
    paramContext.getContentResolver().insert(a, paramPortalCurationTask.a());
  }

  public static void b(Context paramContext, PortalCurationTask paramPortalCurationTask)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Uri localUri = a;
    ContentValues localContentValues = paramPortalCurationTask.a();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramPortalCurationTask.b();
    localContentResolver.update(localUri, localContentValues, "request_id=?", arrayOfString);
  }

  public static void c(Context paramContext, PortalCurationTask paramPortalCurationTask)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Uri localUri = a;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramPortalCurationTask.b();
    localContentResolver.delete(localUri, "request_id=?", arrayOfString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.curation.d
 * JD-Core Version:    0.6.2
 */