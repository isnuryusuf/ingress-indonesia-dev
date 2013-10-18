package com.nianticproject.ingress.f;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.ContactsContract.CommonDataKinds.Email;
import com.nianticproject.ingress.invites.ContactsLoader.ContactsLoadingProgressListener;
import java.util.ArrayList;
import java.util.HashSet;

public final class e extends android.support.v4.a.a<ArrayList<a>>
{
  private static final Uri f = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
  private static final String[] g = { "_id", "display_name", "data1", "photo_id" };
  private final Handler h = new Handler(Looper.getMainLooper());
  private final HashSet<ContactsLoader.ContactsLoadingProgressListener> i = new HashSet();

  public e(Context paramContext)
  {
    super(paramContext);
  }

  private ArrayList<a> e()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = i().getContentResolver().query(f, g, "in_visible_group == 1 AND is_primary != 0", null, "display_name");
    if (localCursor == null)
      return localArrayList;
    int j = localCursor.getCount();
    this.h.post(new f(this, j));
    try
    {
      if (localCursor.moveToNext())
      {
        localArrayList.add(new a(localCursor.getString(1), localCursor.getString(2), localCursor.getLong(3)));
        int k = 1 + localCursor.getPosition();
        this.h.post(new g(this, k));
      }
    }
    finally
    {
      localCursor.close();
      p();
    }
    return localArrayList;
  }

  private void p()
  {
    this.h.post(new h(this));
  }

  protected final void f()
  {
    k();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.f.e
 * JD-Core Version:    0.6.2
 */