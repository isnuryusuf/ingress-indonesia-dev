package com.nianticproject.ingress.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.j;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

public final class a extends android.support.v4.app.d
  implements DialogInterface.OnClickListener
{
  private int W = -1;
  private String X = "";
  private String Y = "";
  private String Z = "";
  private String aa = "";
  private String[] ab = null;

  public static a a(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a locala = new a();
    Bundle localBundle = new Bundle();
    localBundle.putInt("id", paramInt);
    localBundle.putString("title", paramString1);
    localBundle.putString("message", paramString2);
    localBundle.putString("positive", paramString3);
    localBundle.putString("negative", paramString4);
    locala.e(localBundle);
    return locala;
  }

  public static a a(int paramInt, Object[] paramArrayOfObject)
  {
    return a(paramInt, paramArrayOfObject, null);
  }

  public static a a(int paramInt, Object[] paramArrayOfObject, Bundle paramBundle)
  {
    int i = 0;
    a locala = a(paramInt, null, null, null, null);
    Bundle localBundle = locala.h();
    String[] arrayOfString = null;
    if (paramArrayOfObject == null);
    while (true)
    {
      localBundle.putStringArray("items", arrayOfString);
      localBundle.putBundle("extras", paramBundle);
      return locala;
      arrayOfString = new String[paramArrayOfObject.length];
      int j = paramArrayOfObject.length;
      int m;
      for (int k = 0; i < j; k = m)
      {
        Object localObject = paramArrayOfObject[i];
        m = k + 1;
        arrayOfString[k] = localObject.toString();
        i++;
      }
    }
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    aj.a(i(), localView, "coda.ttf");
    return localView;
  }

  public final String a(String paramString)
  {
    return h().getBundle("extras").getString(paramString);
  }

  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    Bundle localBundle = h();
    this.W = localBundle.getInt("id");
    this.X = localBundle.getString("title");
    this.Y = localBundle.getString("message");
    this.Z = localBundle.getString("positive");
    this.aa = localBundle.getString("negative");
    this.ab = localBundle.getStringArray("items");
  }

  public final void a(j paramj, String paramString)
  {
    s locals = paramj.a();
    locals.a(this, paramString);
    locals.b();
  }

  public final Dialog b()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(i());
    if (this.ab != null)
      localBuilder.setAdapter(new e(this.ab), this);
    if (!TextUtils.isEmpty(this.X))
      localBuilder.setTitle(this.X);
    if (!TextUtils.isEmpty(this.Y))
      localBuilder.setMessage(this.Y);
    if (!TextUtils.isEmpty(this.Z))
      localBuilder.setPositiveButton(this.Z, new b(this));
    if (!TextUtils.isEmpty(this.aa))
      localBuilder.setNegativeButton(this.aa, new c(this));
    AlertDialog localAlertDialog = localBuilder.create();
    ListView localListView = localAlertDialog.getListView();
    if (localListView != null)
      localListView.setBackgroundResource(2130837597);
    return localAlertDialog;
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    FragmentActivity localFragmentActivity = i();
    if ((localFragmentActivity instanceof d))
      if (this.ab == null)
        break label44;
    label44: for (String str = this.ab[paramInt]; ; str = null)
    {
      ((d)localFragmentActivity).a(this.W, paramInt, str);
      return;
    }
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    FragmentActivity localFragmentActivity = i();
    if ((localFragmentActivity instanceof d))
      ((d)localFragmentActivity).c(this.W);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.a
 * JD-Core Version:    0.6.2
 */