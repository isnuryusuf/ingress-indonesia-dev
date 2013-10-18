package com.nianticproject.ingress.common.factionchoice;

import com.nianticproject.ingress.common.w.g;

final class ad extends g
{
  ad(n paramn, String paramString)
  {
    super(paramString);
  }

  public final void a()
  {
    d locald = n.c(this.a);
    az localaz = n.f(this.a);
    String str1;
    if (!n.e(this.a))
    {
      str1 = "Choose your faction:";
      if (n.e(this.a))
        break label58;
    }
    label58: for (String str2 = "fc-header"; ; str2 = "fc-error-message")
    {
      locald.b(localaz, str1, str2);
      return;
      str1 = "Error occurred. Please try again:";
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.ad
 * JD-Core Version:    0.6.2
 */