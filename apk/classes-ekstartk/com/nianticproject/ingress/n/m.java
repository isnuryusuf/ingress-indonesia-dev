package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class m extends p
{
  public static Fragment a(String paramString)
  {
    m localm = new m();
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString);
    localBundle.putString("footer", null);
    localm.e(localBundle);
    return localm;
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903079, paramViewGroup, false);
    a((TextView)localView.findViewById(16908308));
    b((TextView)localView.findViewById(16908309));
    return localView;
  }

  protected void a(TextView paramTextView)
  {
    paramTextView.setText(h().getString("message"));
  }

  protected final String b()
  {
    return "ProgressFragment";
  }

  protected void b(TextView paramTextView)
  {
    paramTextView.setText(h().getString("footer"));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.m
 * JD-Core Version:    0.6.2
 */