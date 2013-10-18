package com.nianticproject.ingress.n;

import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.nianticproject.ingress.common.o.c;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.PregameStatus;
import com.nianticproject.ingress.shared.PregameStatus.UserAction;
import com.nianticproject.ingress.shared.y;
import com.nianticproject.ingress.shared.z;
import java.io.IOException;
import java.io.StringWriter;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser;

public class j extends p
{
  private static final aa a = new aa(j.class);

  public static j a(PregameStatus paramPregameStatus)
  {
    j localj = new j();
    Bundle localBundle = new Bundle();
    localBundle.putString("pregame_status_json", b(paramPregameStatus));
    localj.e(localBundle);
    return localj;
  }

  private static PregameStatus a(String paramString)
  {
    try
    {
      PregameStatus localPregameStatus = (PregameStatus)c.b.createJsonParser(paramString).readValueAs(PregameStatus.class);
      return localPregameStatus;
    }
    catch (Exception localException)
    {
      a.b(localException, "Exception while re-inflating PregameStatus");
    }
    return null;
  }

  private static void a(Button paramButton, PregameStatus.UserAction paramUserAction, q paramq)
  {
    paramButton.setVisibility(0);
    if (paramUserAction.a() != null)
      paramButton.setText(paramUserAction.a());
    if (paramq != null)
      paramButton.setOnClickListener(new l(paramUserAction, paramq));
  }

  private static String b(PregameStatus paramPregameStatus)
  {
    StringWriter localStringWriter = new StringWriter();
    try
    {
      JsonGenerator localJsonGenerator = c.b.createJsonGenerator(localStringWriter);
      localJsonGenerator.writeObject(paramPregameStatus);
      localJsonGenerator.flush();
      localJsonGenerator.close();
      return localStringWriter.toString();
    }
    catch (IOException localIOException)
    {
      while (true)
        a.b(localIOException, "Exception while flattening PregameStatus");
    }
  }

  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903068, paramViewGroup, false);
    PregameStatus localPregameStatus1 = a(h().getString("pregame_status_json"));
    if (localPregameStatus1 == null)
      localPregameStatus1 = new PregameStatus(y.a, null, null, null);
    String str1 = localPregameStatus1.b();
    PregameStatus.UserAction localUserAction1 = localPregameStatus1.c();
    PregameStatus.UserAction localUserAction2 = localPregameStatus1.d();
    switch (k.b[localPregameStatus1.a().ordinal()])
    {
    default:
      if ((str1 != null) && (!str1.isEmpty()))
        break;
    case 1:
    case 2:
    case 3:
    }
    for (String str2 = b(2131296315); ; str2 = str1)
    {
      if (localUserAction1 == null);
      for (PregameStatus.UserAction localUserAction6 = PregameStatus.b(b(17039370)); ; localUserAction6 = localUserAction1)
      {
        if (localUserAction2 == null)
          localUserAction2 = PregameStatus.a(b(2131296317));
        PregameStatus localPregameStatus2 = new PregameStatus(localPregameStatus1.a(), str2, localUserAction6, localUserAction2);
        q localq = H();
        ((TextView)localView.findViewById(16908308)).setText(Html.fromHtml(localPregameStatus2.b()));
        Button localButton1 = (Button)localView.findViewById(2131230821);
        PregameStatus.UserAction localUserAction3 = localPregameStatus2.c();
        PregameStatus.UserAction localUserAction4 = localPregameStatus2.d();
        if ((localUserAction3 != null) && (localUserAction4 != null))
        {
          Button localButton2 = (Button)localView.findViewById(2131230819);
          Button localButton3 = (Button)localView.findViewById(2131230820);
          a(localButton2, localUserAction3, localq);
          a(localButton3, localUserAction4, localq);
        }
        while (true)
        {
          return localView;
          if ((localUserAction1 == null) && (localUserAction2 == null))
          {
            localPregameStatus2 = new PregameStatus(localPregameStatus1.a(), str1, new PregameStatus.UserAction(null, z.a, null), null);
            break;
          }
          localPregameStatus2 = localPregameStatus1;
          break;
          if (localUserAction3 == null);
          for (PregameStatus.UserAction localUserAction5 = localUserAction4; localUserAction5 != null; localUserAction5 = localUserAction3)
          {
            a(localButton1, localUserAction5, localq);
            return localView;
          }
        }
      }
    }
  }

  protected final String b()
  {
    return "PregameStatusDialogFragment";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.j
 * JD-Core Version:    0.6.2
 */