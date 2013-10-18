package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.ui.NemesisIndeterminateProgressBar;

public final class aj extends m
{
  private boolean a;
  private bn b;

  public static Fragment F()
  {
    return new aj();
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    NemesisIndeterminateProgressBar localNemesisIndeterminateProgressBar = (NemesisIndeterminateProgressBar)localView.findViewById(16908301);
    localNemesisIndeterminateProgressBar.a();
    localNemesisIndeterminateProgressBar.b();
    localNemesisIndeterminateProgressBar.c();
    return localView;
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = false;
  }

  protected final void a(TextView paramTextView)
  {
    FragmentActivity localFragmentActivity = i();
    Object[] arrayOfObject = new Object[1];
    if (ec.e());
    for (String str = ec.b(i()); ; str = ec.c(i()) + "\n" + ec.a())
    {
      arrayOfObject[0] = str;
      paramTextView.setText(localFragmentActivity.getString(2131296340, arrayOfObject));
      return;
    }
  }

  protected final void b(TextView paramTextView)
  {
    paramTextView.setText(2131296378);
  }

  public final void q()
  {
    super.q();
    if (!this.a)
    {
      this.b = bs.aU.a();
      o.a().a(this.b);
      this.a = true;
    }
  }

  public final void r()
  {
    this.a = false;
    if (this.b != null)
    {
      this.b.n();
      this.b = null;
    }
    super.r();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.aj
 * JD-Core Version:    0.6.2
 */