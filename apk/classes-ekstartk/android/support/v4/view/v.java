package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class v
{
  private DataSetObservable a = new DataSetObservable();

  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }

  public void a()
  {
  }

  public void a(int paramInt, Object paramObject)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }

  final void a(DataSetObserver paramDataSetObserver)
  {
    this.a.registerObserver(paramDataSetObserver);
  }

  public void a(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
  }

  public void a(Object paramObject)
  {
  }

  public abstract boolean a(View paramView, Object paramObject);

  public Parcelable b()
  {
    return null;
  }

  final void b(DataSetObserver paramDataSetObserver)
  {
    this.a.unregisterObserver(paramDataSetObserver);
  }

  public abstract int c();

  public final void d()
  {
    this.a.notifyChanged();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.v
 * JD-Core Version:    0.6.2
 */