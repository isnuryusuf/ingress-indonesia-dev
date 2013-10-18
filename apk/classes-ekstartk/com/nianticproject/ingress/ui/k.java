package com.nianticproject.ingress.ui;

import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.a.d;
import android.support.v4.app.t;
import android.support.v4.app.w;
import android.support.v4.app.x;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.nianticproject.ingress.common.b;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.content.e;
import com.nianticproject.ingress.shared.aj;

public class k extends t
  implements x<Cursor>
{
  private b W = b.a;
  private int X;
  private boolean Y;
  private r Z;
  private final aa i = new aa(k.class);

  private void H()
  {
    m().b(this);
  }

  private void I()
  {
    a(this.Z);
  }

  public static k a(int paramInt, boolean paramBoolean)
  {
    k localk = new k();
    localk.X = paramInt;
    localk.c(paramBoolean);
    return localk;
  }

  public final void A_()
  {
    if (this.Z != null)
      this.Z.a(null);
    this.Z = null;
    I();
  }

  public final void G()
  {
    if (j())
    {
      int j = -1 + F().getCount();
      if (E().getSelectedItemPosition() != j)
        E().setSelection(j);
    }
  }

  public final d<Cursor> a()
  {
    try
    {
      aj.a("CommFragment.onCreateLoader");
      e locale = new e(i(), this.W, null, this.X, "timestamp");
      return locale;
    }
    finally
    {
      aj.b();
    }
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903045, paramViewGroup, false);
  }

  public final void a(b paramb)
  {
    if (this.W == paramb)
      return;
    this.W = paramb;
    H();
  }

  public final void c(Bundle paramBundle)
  {
    super.c(paramBundle);
    if (paramBundle != null)
    {
      this.X = paramBundle.getInt("categories");
      this.Y = paramBundle.getBoolean("active");
      Object[] arrayOfObject2 = new Object[4];
      arrayOfObject2[0] = "categories";
      arrayOfObject2[1] = Integer.valueOf(this.X);
      arrayOfObject2[2] = "active";
      arrayOfObject2[3] = Boolean.valueOf(this.Y);
    }
    while (true)
    {
      w localw = m();
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(this.X);
      arrayOfObject1[1] = localw;
      localw.a(this);
      return;
    }
  }

  public final void c(boolean paramBoolean)
  {
    this.Y = paramBoolean;
    if (this.Z != null)
      this.Z.a(paramBoolean);
  }

  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    paramBundle.putInt("categories", this.X);
    paramBundle.putBoolean("active", this.Y);
  }

  public final void q()
  {
    super.q();
    H();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.k
 * JD-Core Version:    0.6.2
 */