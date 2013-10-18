package com.nianticproject.ingress;

import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.Toast;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.f.b;
import com.nianticproject.ingress.f.i;
import com.nianticproject.ingress.f.k;
import com.nianticproject.ingress.shared.rpc.o;

final class bg
  implements Runnable
{
  bg(InviteActivity paramInviteActivity, int paramInt, o paramo, String paramString)
  {
  }

  public final void run()
  {
    InviteActivity.a(this.d).a("onInviteViaEmailFailure");
    if (this.a == 0)
    {
      InviteActivity.j(this.d).setText(null);
      InviteActivity.j(this.d).setEnabled(true);
      InviteActivity.k(this.d).setVisibility(0);
      InviteActivity.l(this.d).setVisibility(4);
      Toast.makeText(this.d, i.a(this.d, this.b, this.c), 1).show();
    }
    InviteActivity.m(this.d).a(this.c, b.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.bg
 * JD-Core Version:    0.6.2
 */