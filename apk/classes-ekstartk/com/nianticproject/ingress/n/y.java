package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public final class y extends p
  implements View.OnClickListener
{
  public static Fragment a(String paramString1, String paramString2)
  {
    y localy = new y();
    Bundle localBundle = new Bundle();
    localBundle.putString("error_message_text", paramString1);
    localBundle.putString("retry_button_text", paramString2);
    localy.e(localBundle);
    return localy;
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903075, paramViewGroup, false);
    TextView localTextView = (TextView)localView.findViewById(16908308);
    Button localButton = (Button)localView.findViewById(16908313);
    localTextView.setText(h().getString("error_message_text"));
    localButton.setText(h().getString("retry_button_text"));
    localButton.setOnClickListener(this);
    return localView;
  }

  protected final String b()
  {
    return "SignOnErrorFragment";
  }

  public final void onClick(View paramView)
  {
    H().c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.y
 * JD-Core Version:    0.6.2
 */