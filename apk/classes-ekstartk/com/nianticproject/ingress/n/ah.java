package com.nianticproject.ingress.n;

import android.view.View;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class ah
  implements CompoundButton.OnCheckedChangeListener
{
  ah(af paramaf, Button paramButton, View paramView)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.a.setEnabled(paramBoolean);
    this.b.setSelected(paramBoolean);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.ah
 * JD-Core Version:    0.6.2
 */