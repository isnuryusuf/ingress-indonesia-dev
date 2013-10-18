package com.nianticproject.ingress;

import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.Toast;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.f.b;
import com.nianticproject.ingress.f.k;

final class bf
  implements Runnable
{
  bf(InviteActivity paramInviteActivity, int paramInt, String paramString)
  {
  }

  public final void run()
  {
    InviteActivity.a(this.c).a("onInviteViaEmailSuccess");
    if (this.a == 0)
    {
      InviteActivity.j(this.c).setText(null);
      InviteActivity.j(this.c).setEnabled(true);
      InviteActivity.k(this.c).setVisibility(0);
      InviteActivity.l(this.c).setVisibility(4);
      InviteActivity localInviteActivity1 = this.c;
      InviteActivity localInviteActivity2 = this.c;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.b;
      Toast.makeText(localInviteActivity1, localInviteActivity2.getString(2131296365, arrayOfObject), 1).show();
    }
    InviteActivity.m(this.c).a(this.b, b.b);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.bf
 * JD-Core Version:    0.6.2
 */