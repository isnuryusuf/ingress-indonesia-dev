package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.v;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class r extends v
{
  private final j a;
  private s b = null;
  private ArrayList<Fragment.SavedState> c = new ArrayList();
  private ArrayList<Fragment> d = new ArrayList();
  private Fragment e = null;

  public r(j paramj)
  {
    this.a = paramj;
  }

  public abstract Fragment a(int paramInt);

  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.d.size() > paramInt)
    {
      Fragment localFragment2 = (Fragment)this.d.get(paramInt);
      if (localFragment2 != null)
        return localFragment2;
    }
    if (this.b == null)
      this.b = this.a.a();
    Fragment localFragment1 = a(paramInt);
    if (this.c.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)this.c.get(paramInt);
      if (localSavedState != null)
        localFragment1.a(localSavedState);
    }
    while (this.d.size() <= paramInt)
      this.d.add(null);
    localFragment1.a(false);
    this.d.set(paramInt, localFragment1);
    this.b.a(paramViewGroup.getId(), localFragment1);
    return localFragment1;
  }

  public final void a()
  {
    if (this.b != null)
    {
      this.b.b();
      this.b = null;
      this.a.b();
    }
  }

  public final void a(int paramInt, Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (this.b == null)
      this.b = this.a.a();
    while (this.c.size() <= paramInt)
      this.c.add(null);
    this.c.set(paramInt, this.a.a(localFragment));
    this.d.set(paramInt, null);
    this.b.b(localFragment);
  }

  public final void a(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    if (paramParcelable != null)
    {
      Bundle localBundle = (Bundle)paramParcelable;
      localBundle.setClassLoader(paramClassLoader);
      Parcelable[] arrayOfParcelable = localBundle.getParcelableArray("states");
      this.c.clear();
      this.d.clear();
      if (arrayOfParcelable != null)
        for (int j = 0; j < arrayOfParcelable.length; j++)
          this.c.add((Fragment.SavedState)arrayOfParcelable[j]);
      Iterator localIterator = localBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str.startsWith("f"))
        {
          int i = Integer.parseInt(str.substring(1));
          Fragment localFragment = this.a.a(localBundle, str);
          if (localFragment != null)
          {
            while (this.d.size() <= i)
              this.d.add(null);
            localFragment.a(false);
            this.d.set(i, localFragment);
          }
          else
          {
            Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + str);
          }
        }
      }
    }
  }

  public final void a(Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (localFragment != this.e)
    {
      if (this.e != null)
        this.e.a(false);
      if (localFragment != null)
        localFragment.a(true);
      this.e = localFragment;
    }
  }

  public final boolean a(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).p() == paramView;
  }

  public final Parcelable b()
  {
    int i = this.c.size();
    Bundle localBundle1 = null;
    if (i > 0)
    {
      localBundle1 = new Bundle();
      Fragment.SavedState[] arrayOfSavedState = new Fragment.SavedState[this.c.size()];
      this.c.toArray(arrayOfSavedState);
      localBundle1.putParcelableArray("states", arrayOfSavedState);
    }
    int j = 0;
    Bundle localBundle2 = localBundle1;
    while (j < this.d.size())
    {
      Fragment localFragment = (Fragment)this.d.get(j);
      if (localFragment != null)
      {
        if (localBundle2 == null)
          localBundle2 = new Bundle();
        String str = "f" + j;
        this.a.a(localBundle2, str, localFragment);
      }
      j++;
    }
    return localBundle2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.r
 * JD-Core Version:    0.6.2
 */