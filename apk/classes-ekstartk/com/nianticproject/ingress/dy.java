package com.nianticproject.ingress;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.e;
import java.util.List;

final class dy
  implements View.OnClickListener
{
  dy(dw paramdw, bn parambn, int paramInt1, int paramInt2)
  {
  }

  public final void onClick(View paramView)
  {
    String str = ((bi)this.a.a().get(0)).a().name();
    dv localdv = dw.a(this.d);
    if (localdv == null)
    {
      TextView localTextView2 = dw.b(this.d);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(this.b);
      arrayOfObject2[1] = str;
      localTextView2.setText(String.format("[%d] %s (too many!)", arrayOfObject2));
      return;
    }
    localdv.a().setBackgroundColor(this.c);
    TextView localTextView1 = dw.b(this.d);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.b);
    arrayOfObject1[1] = str;
    localTextView1.setText(String.format("[%d] %s", arrayOfObject1));
    dw.c(this.d).a(this.a);
    localdv.a().postDelayed(new dz(this, localdv), ((bi)this.a.a().get(0)).a().d());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.dy
 * JD-Core Version:    0.6.2
 */