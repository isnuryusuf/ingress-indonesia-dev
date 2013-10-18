package com.nianticproject.ingress.f;

import android.graphics.Bitmap;
import android.graphics.LightingColorFilter;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.nianticproject.ingress.ec;

final class d
{
  public final ImageView a;
  public final TextView b;
  public final TextView c;
  public final Button d;
  public final TextView e;
  public final View f;
  public int g;

  public d(View paramView)
  {
    this.a = ((ImageView)paramView.findViewById(2131230754));
    this.b = ((TextView)paramView.findViewById(2131230759));
    this.c = ((TextView)paramView.findViewById(2131230760));
    this.d = ((Button)paramView.findViewById(2131230756));
    this.e = ((TextView)paramView.findViewById(2131230757));
    this.f = paramView.findViewById(2131230758);
  }

  public final void a(Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramBitmap == null)
    {
      this.a.setImageResource(2130837561);
      return;
    }
    if (paramBoolean)
    {
      this.a.setImageResource(2130837561);
      ec.a(this.a.getContext(), this.a, paramBitmap);
      return;
    }
    this.a.setImageBitmap(paramBitmap);
  }

  public final void a(boolean paramBoolean)
  {
    this.b.setEnabled(paramBoolean);
    this.c.setEnabled(paramBoolean);
    this.e.setEnabled(paramBoolean);
    if (paramBoolean)
    {
      this.a.setColorFilter(null);
      return;
    }
    this.a.setColorFilter(new LightingColorFilter(8947848, 0));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.f.d
 * JD-Core Version:    0.6.2
 */