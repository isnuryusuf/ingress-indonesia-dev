package com.nianticproject.ingress.common.h;

import com.google.a.a.an;
import com.nianticproject.ingress.common.f.j;
import com.nianticproject.ingress.common.u.ab;
import com.nianticproject.ingress.common.u.q;
import com.nianticproject.ingress.common.u.t;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.w;
import java.util.Map;
import java.util.Set;

public final class n extends j<Map<String, com.nianticproject.ingress.shared.n>, w>
{
  private final String a;
  private final Set<String> b;

  public n(q paramq, String paramString, Set<String> paramSet)
  {
    super(paramq);
    this.b = paramSet;
    this.a = ((String)an.a(paramString));
  }

  protected final Result<t<Map<String, com.nianticproject.ingress.shared.n>, w>, w> c()
  {
    return Result.a(ab.a(this.a, this.b));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.h.n
 * JD-Core Version:    0.6.2
 */