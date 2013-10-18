package android.support.v4.d;

import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class a extends BaseAdapter
  implements d, Filterable
{
  protected boolean a;
  protected boolean b = false;
  protected Cursor c;
  protected Context d;
  protected int e;
  protected b f;
  protected DataSetObserver g;
  protected c h;
  protected FilterQueryProvider i;

  public a(Context paramContext, Cursor paramCursor)
  {
    boolean bool = false;
    if (paramCursor != null)
      bool = true;
    this.c = paramCursor;
    this.a = bool;
    this.d = paramContext;
    if (bool);
    for (int j = paramCursor.getColumnIndexOrThrow("_id"); ; j = -1)
    {
      this.e = j;
      this.f = null;
      this.g = null;
      if (bool)
      {
        if (this.f != null)
          paramCursor.registerContentObserver(this.f);
        if (this.g != null)
          paramCursor.registerDataSetObserver(this.g);
      }
      return;
    }
  }

  public final Cursor a()
  {
    return this.c;
  }

  public final Cursor a(CharSequence paramCharSequence)
  {
    if (this.i != null)
      return this.i.runQuery(paramCharSequence);
    return this.c;
  }

  public abstract View a(Context paramContext, ViewGroup paramViewGroup);

  public final void a(Cursor paramCursor)
  {
    Cursor localCursor;
    if (paramCursor == this.c)
      localCursor = null;
    while (true)
    {
      if (localCursor != null)
        localCursor.close();
      return;
      localCursor = this.c;
      if (localCursor != null)
      {
        if (this.f != null)
          localCursor.unregisterContentObserver(this.f);
        if (this.g != null)
          localCursor.unregisterDataSetObserver(this.g);
      }
      this.c = paramCursor;
      if (paramCursor != null)
      {
        if (this.f != null)
          paramCursor.registerContentObserver(this.f);
        if (this.g != null)
          paramCursor.registerDataSetObserver(this.g);
        this.e = paramCursor.getColumnIndexOrThrow("_id");
        this.a = true;
        notifyDataSetChanged();
      }
      else
      {
        this.e = -1;
        this.a = false;
        notifyDataSetInvalidated();
      }
    }
  }

  public abstract void a(View paramView, Context paramContext, Cursor paramCursor);

  public final CharSequence b(Cursor paramCursor)
  {
    if (paramCursor == null)
      return "";
    return paramCursor.toString();
  }

  protected final void b()
  {
    if ((this.b) && (this.c != null) && (!this.c.isClosed()))
      this.a = this.c.requery();
  }

  public int getCount()
  {
    if ((this.a) && (this.c != null))
      return this.c.getCount();
    return 0;
  }

  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.a)
    {
      this.c.moveToPosition(paramInt);
      if (paramView == null)
      {
        Context localContext = this.d;
        paramView = a(localContext, paramViewGroup);
      }
      a(paramView, this.d, this.c);
      return paramView;
    }
    return null;
  }

  public Filter getFilter()
  {
    if (this.h == null)
      this.h = new c(this);
    return this.h;
  }

  public Object getItem(int paramInt)
  {
    if ((this.a) && (this.c != null))
    {
      this.c.moveToPosition(paramInt);
      return this.c;
    }
    return null;
  }

  public long getItemId(int paramInt)
  {
    long l = 0L;
    if ((this.a) && (this.c != null) && (this.c.moveToPosition(paramInt)))
      l = this.c.getLong(this.e);
    return l;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.a)
      throw new IllegalStateException("this should only be called when the cursor is valid");
    if (!this.c.moveToPosition(paramInt))
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    if (paramView == null)
    {
      Context localContext = this.d;
      paramView = a(localContext, paramViewGroup);
    }
    a(paramView, this.d, this.c);
    return paramView;
  }

  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.d.a
 * JD-Core Version:    0.6.2
 */