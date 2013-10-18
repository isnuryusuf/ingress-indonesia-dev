package com.nianticproject.ingress.common.h;

import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.aj;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;
import com.nianticproject.ingress.shared.rpc.r;

public final class ai extends j<Void, r>
{
  private final NotificationSettings a;

  public ai(q paramq, NotificationSettings paramNotificationSettings)
  {
    super(paramq);
    this.a = paramNotificationSettings;
  }

  protected final Result<t<Void, r>, r> c()
  {
    return Result.a(aj.a(this.a));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.ai
 * JD-Core Version:    0.6.2
 */