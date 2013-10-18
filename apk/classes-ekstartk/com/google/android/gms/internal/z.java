package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.a.a;

final class z
  implements ad
{
  z(v paramv, FrameLayout paramFrameLayout, LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
  }

  public final int a()
  {
    return 2;
  }

  public final void b()
  {
    this.a.removeAllViews();
    this.a.addView(v.b(this.e).a(this.b, this.c, this.d));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.z
 * JD-Core Version:    0.6.2
 */