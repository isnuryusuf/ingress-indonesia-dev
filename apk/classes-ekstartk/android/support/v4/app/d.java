package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class d extends Fragment
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  int a = 0;
  int b = 0;
  boolean c = true;
  boolean d = true;
  int e = -1;
  Dialog f;
  boolean g;
  boolean h;
  boolean i;

  public final void B_()
  {
    super.B_();
    if ((!this.i) && (!this.h))
      this.h = true;
  }

  public final void a(Activity paramActivity)
  {
    super.a(paramActivity);
    if (!this.i)
      this.h = false;
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.E == 0);
    for (boolean bool = true; ; bool = false)
    {
      this.d = bool;
      if (paramBundle != null)
      {
        this.a = paramBundle.getInt("android:style", 0);
        this.b = paramBundle.getInt("android:theme", 0);
        this.c = paramBundle.getBoolean("android:cancelable", true);
        this.d = paramBundle.getBoolean("android:showsDialog", this.d);
        this.e = paramBundle.getInt("android:backStackId", -1);
      }
      return;
    }
  }

  public void a(j paramj, String paramString)
  {
    this.h = false;
    this.i = true;
    s locals = paramj.a();
    locals.a(this, paramString);
    locals.a();
  }

  public Dialog b()
  {
    return new Dialog(this.C, this.b);
  }

  public final LayoutInflater b(Bundle paramBundle)
  {
    if (!this.d)
      return super.b(paramBundle);
    this.f = b();
    switch (this.a)
    {
    default:
    case 3:
    case 1:
    case 2:
    }
    while (this.f != null)
    {
      return (LayoutInflater)this.f.getContext().getSystemService("layout_inflater");
      this.f.getWindow().addFlags(24);
      this.f.requestWindowFeature(1);
    }
    return (LayoutInflater)this.C.getSystemService("layout_inflater");
  }

  public final void c()
  {
    super.c();
    if (this.f != null)
    {
      this.g = false;
      this.f.show();
    }
  }

  public final void c(Bundle paramBundle)
  {
    super.c(paramBundle);
    if (!this.d);
    Bundle localBundle;
    do
    {
      do
      {
        return;
        View localView = this.P;
        if (localView != null)
        {
          if (localView.getParent() != null)
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
          this.f.setContentView(localView);
        }
        this.f.setOwnerActivity(this.C);
        this.f.setCancelable(this.c);
        this.f.setOnCancelListener(this);
        this.f.setOnDismissListener(this);
      }
      while (paramBundle == null);
      localBundle = paramBundle.getBundle("android:savedDialogState");
    }
    while (localBundle == null);
    this.f.onRestoreInstanceState(localBundle);
  }

  public final void d()
  {
    super.d();
    if (this.f != null)
      this.f.hide();
  }

  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    if (this.f != null)
    {
      Bundle localBundle = this.f.onSaveInstanceState();
      if (localBundle != null)
        paramBundle.putBundle("android:savedDialogState", localBundle);
    }
    if (this.a != 0)
      paramBundle.putInt("android:style", this.a);
    if (this.b != 0)
      paramBundle.putInt("android:theme", this.b);
    if (!this.c)
      paramBundle.putBoolean("android:cancelable", this.c);
    if (!this.d)
      paramBundle.putBoolean("android:showsDialog", this.d);
    if (this.e != -1)
      paramBundle.putInt("android:backStackId", this.e);
  }

  public final void e()
  {
    super.e();
    if (this.f != null)
    {
      this.g = true;
      this.f.dismiss();
      this.f = null;
    }
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if ((!this.g) && (!this.h))
    {
      this.h = true;
      this.i = false;
      if (this.f != null)
      {
        this.f.dismiss();
        this.f = null;
      }
      this.g = true;
      if (this.e >= 0)
      {
        this.B.b(this.e);
        this.e = -1;
      }
    }
    else
    {
      return;
    }
    s locals = this.B.a();
    locals.b(this);
    locals.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.d
 * JD-Core Version:    0.6.2
 */