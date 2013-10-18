package com.nianticproject.ingress.content;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.util.SparseArray;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.shared.plext.c;
import java.util.List;

public final class f extends CursorWrapper
{
  private final SparseArray<List<c>> a;

  public f(Cursor paramCursor)
  {
    super(paramCursor);
    if (paramCursor != null)
    {
      this.a = new SparseArray(paramCursor.getCount());
      return;
    }
    this.a = null;
  }

  public final List<c> a()
  {
    ec.a("getMarkupForCurrentPosition");
    int i = getPosition();
    List localList = (List)this.a.get(i);
    byte[] arrayOfByte;
    if (localList == null)
    {
      arrayOfByte = getBlob(5);
      if (arrayOfByte == null)
        break label61;
    }
    label61: for (localList = e.a(arrayOfByte); ; localList = e.p())
    {
      this.a.put(i, localList);
      if (localList == e.p())
        localList = null;
      return localList;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.content.f
 * JD-Core Version:    0.6.2
 */