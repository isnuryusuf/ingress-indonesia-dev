package com.nianticproject.ingress.n;

import android.accounts.Account;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.common.z;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.o.a;
import com.nianticproject.ingress.shared.rpc.y;
import java.net.URI;

final class v extends com.nianticproject.ingress.b.b<Void, Boolean>
{
  private v(s params)
  {
  }

  private static Boolean j()
  {
    try
    {
      Account localAccount = a.c();
      URI localURI = URI.create(ec.a() + "/loggedin/requestActivationCode?emailAddress=" + localAccount.name);
      NemesisApplication.a();
      z.a(localURI, NemesisApplication.f().b());
      Boolean localBoolean = Boolean.valueOf(true);
      return localBoolean;
    }
    catch (y localy)
    {
    }
    return Boolean.valueOf(false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.v
 * JD-Core Version:    0.6.2
 */