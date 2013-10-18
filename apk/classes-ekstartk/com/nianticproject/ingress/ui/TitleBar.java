package com.nianticproject.ingress.ui;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class TitleBar extends RelativeLayout
{
  private TextView a;
  private ImageButton b;
  private boolean c = false;

  public TitleBar(Context paramContext)
  {
    super(paramContext);
  }

  public TitleBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public TitleBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public static TitleBar a(Activity paramActivity)
  {
    return (TitleBar)paramActivity.findViewById(2131230867);
  }

  public final void a()
  {
    this.c = true;
    if (this.b != null)
    {
      if (this.c)
        this.b.setVisibility(0);
    }
    else
      return;
    this.b.setVisibility(8);
  }

  public final void a(String paramString)
  {
    this.a.setText(paramString);
  }

  public void onFinishInflate()
  {
    this.a = ((TextView)findViewById(2131230747));
    this.b = ((ImageButton)findViewById(2131230868));
    if (this.b != null)
      this.b.setOnClickListener(new ah(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.TitleBar
 * JD-Core Version:    0.6.2
 */