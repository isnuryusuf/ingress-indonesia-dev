package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.a.a;
import com.google.android.gms.common.f;
import java.util.LinkedList;

public abstract class v<T extends a>
{
  private T a;
  private Bundle b;
  private LinkedList<ad> c;
  private final am<T> d = new w(this);

  private void a(int paramInt)
  {
    while ((!this.c.isEmpty()) && (((ad)this.c.getLast()).a() >= paramInt))
      this.c.removeLast();
  }

  private void a(Bundle paramBundle, ad paramad)
  {
    if (this.a != null)
    {
      paramad.b();
      return;
    }
    if (this.c == null)
      this.c = new LinkedList();
    this.c.add(paramad);
    if (paramBundle != null)
    {
      if (this.b != null)
        break label77;
      this.b = ((Bundle)paramBundle.clone());
    }
    while (true)
    {
      a(this.d);
      return;
      label77: this.b.putAll(paramBundle);
    }
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramLayoutInflater.getContext());
    a(paramBundle, new z(this, localFrameLayout, paramLayoutInflater, paramViewGroup, paramBundle));
    if (this.a == null)
    {
      Context localContext = localFrameLayout.getContext();
      int i = f.a(localContext);
      String str1 = f.a(localContext, i);
      String str2 = f.b(localContext, i);
      LinearLayout localLinearLayout = new LinearLayout(localFrameLayout.getContext());
      localLinearLayout.setOrientation(1);
      localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      localFrameLayout.addView(localLinearLayout);
      TextView localTextView = new TextView(localFrameLayout.getContext());
      localTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      localTextView.setText(str1);
      localLinearLayout.addView(localTextView);
      if (str2 != null)
      {
        Button localButton = new Button(localContext);
        localButton.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        localButton.setText(str2);
        localLinearLayout.addView(localButton);
        localButton.setOnClickListener(new ab(this, localContext, i));
      }
    }
    return localFrameLayout;
  }

  public final T a()
  {
    return this.a;
  }

  public final void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    a(paramBundle2, new x(this, paramActivity, paramBundle1, paramBundle2));
  }

  public final void a(Bundle paramBundle)
  {
    a(paramBundle, new y(this, paramBundle));
  }

  protected abstract void a(am<T> paramam);

  public final void b()
  {
    a(null, new ac(this));
  }

  public final void b(Bundle paramBundle)
  {
    if (this.a != null)
      this.a.b(paramBundle);
    while (this.b == null)
      return;
    paramBundle.putAll(this.b);
  }

  public final void c()
  {
    if (this.a != null)
    {
      this.a.b();
      return;
    }
    a(3);
  }

  public final void d()
  {
    if (this.a != null)
    {
      this.a.c();
      return;
    }
    a(2);
  }

  public final void e()
  {
    if (this.a != null)
    {
      this.a.d();
      return;
    }
    a(1);
  }

  public final void f()
  {
    if (this.a != null)
      this.a.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.v
 * JD-Core Version:    0.6.2
 */