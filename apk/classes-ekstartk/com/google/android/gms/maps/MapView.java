package com.google.android.gms.maps;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class MapView extends FrameLayout
{
  private final f a;

  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = new f(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
  }

  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = new f(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.MapView
 * JD-Core Version:    0.6.2
 */