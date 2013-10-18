package com.nianticproject.ingress.service;

import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.u.u;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.FactionChoiceHint;
import com.nianticproject.ingress.gameentity.components.PlayerPersonal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.PregameStatus;
import com.nianticproject.ingress.shared.Result;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.handshake.ServerHandshake;
import org.codehaus.jackson.JsonProcessingException;

public class b
{
  private static final aa a = new aa(b.class);
  private final u b;

  public b(u paramu)
  {
    this.b = paramu;
  }

  private static Result<d, Boolean> a(ServerHandshake paramServerHandshake)
  {
    a.a("...handshake succeeded");
    long l = System.currentTimeMillis();
    while (true)
    {
      try
      {
        PregameStatus localPregameStatus = paramServerHandshake.a();
        StringBuilder localStringBuilder = new StringBuilder("ServerHandshake received.");
        localStringBuilder.append(" Pregame: ").append(localPregameStatus.a());
        q.a(paramServerHandshake.f());
        f localf = paramServerHandshake.b();
        String str1 = paramServerHandshake.c();
        try
        {
          aj.a("HandshakeHelper.processPlayerFields");
          if (localf != null)
          {
            localf.getGuid();
            boolean bool = ((PlayerPersonal)localf.getComponent(PlayerPersonal.class)).getAllowNicknameEdit();
            if (bool)
            {
              c.e(null);
              FactionChoiceHint localFactionChoiceHint = (FactionChoiceHint)localf.getComponent(FactionChoiceHint.class);
              c.a(localFactionChoiceHint);
              localStringBuilder.append(", Nickname: ").append(str1);
              localStringBuilder.append(", allowNicknameEdit: ").append(bool);
              localStringBuilder.append(", factionChoiceHint: ");
              if (localFactionChoiceHint == null)
                break label316;
              localai = localFactionChoiceHint.getTeamHint();
              localStringBuilder.append(localai);
            }
          }
          else
          {
            aj.b();
            String str2 = paramServerHandshake.d();
            if (str2 != null)
              c.c(str2);
            Result localResult = Result.a(new d(localPregameStatus, paramServerHandshake.c(), paramServerHandshake.b(), paramServerHandshake.e()));
            aa localaa2;
            Object[] arrayOfObject2;
            return localResult;
          }
          c.e(str1);
          continue;
        }
        finally
        {
          aj.b();
        }
      }
      finally
      {
        aa localaa1 = a;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(System.currentTimeMillis() - l);
        localaa1.a("handleSuccess: %sms", arrayOfObject1);
      }
      label316: ai localai = null;
    }
  }

  public final Result<d, Boolean> a(String paramString, boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        aj.a("HandshakeHelper.runHandshake");
        a.a("Performing handshake...");
        ServerHandshake localServerHandshake = this.b.a(paramString, paramBoolean);
        localPregameStatus = localServerHandshake.a();
        i = 0;
        if (localPregameStatus == null)
        {
          if (i != 0)
          {
            Result localResult4 = a(localServerHandshake);
            return localResult4;
          }
        }
        else if (localPregameStatus.a() == null)
        {
          a.c("Pregame status has null action");
          i = 0;
          continue;
        }
      }
      catch (com.nianticproject.ingress.common.u.a locala)
      {
        PregameStatus localPregameStatus;
        a.a(locala, "...handshake failed: unauthenticated");
        com.nianticproject.ingress.common.a.a.a(com.nianticproject.ingress.common.a.b.f, "AppEngineUnauthenticatedException");
        Result localResult3 = Result.b(Boolean.TRUE);
        return localResult3;
        switch (c.a[localPregameStatus.a().ordinal()])
        {
        default:
          c.d(false);
          break;
        case 1:
        case 2:
          c.d(true);
        }
      }
      catch (com.nianticproject.ingress.shared.rpc.y localy)
      {
        if ((localy.getCause() instanceof JsonProcessingException))
        {
          a.a(localy, "...handshake failed: unable to parse handshake");
          com.nianticproject.ingress.common.a.a.a(com.nianticproject.ingress.common.a.b.f, "JsonProcessingException");
          Result localResult2 = Result.a(new d(new PregameStatus(com.nianticproject.ingress.shared.y.b, "There was an error while trying to talk with the server. It is possible that upgrading your scanner will fix the problem.", null, null), "", null, null));
          return localResult2;
          a.c("Received null ServerHandshake from server");
          Result localResult5 = Result.b(Boolean.FALSE);
          return localResult5;
        }
        a.a(localy, "...handshake failed");
        com.nianticproject.ingress.common.a.a.a(com.nianticproject.ingress.common.a.b.f, "RpcException");
        Result localResult1 = Result.b(Boolean.FALSE);
        return localResult1;
      }
      finally
      {
        aj.b();
      }
      int i = 1;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.service.b
 * JD-Core Version:    0.6.2
 */