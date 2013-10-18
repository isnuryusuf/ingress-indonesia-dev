package com.nianticproject.ingress.common.factionchoice;

import com.nianticproject.ingress.common.w.g;

final class ac extends g
{
  ac(n paramn, String paramString)
  {
    super(paramString);
  }

  public final void a()
  {
    d locald = n.c(this.a);
    az localaz = n.d(this.a);
    String str1;
    if (!n.e(this.a))
    {
      str1 = "Awaiting input:";
      if (n.e(this.a))
        break label58;
    }
    label58: for (String str2 = "fc-message"; ; str2 = "fc-error-message")
    {
      locald.a(localaz, str1, str2);
      return;
      str1 = "Error occurred. Please try again:";
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.ac
 * JD-Core Version:    0.6.2
 */