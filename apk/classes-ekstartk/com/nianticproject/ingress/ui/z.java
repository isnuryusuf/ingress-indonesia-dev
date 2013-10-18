package com.nianticproject.ingress.ui;

import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import android.widget.TextView;
import com.google.a.a.an;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.plext.AttributionLinkMarkupArgSet;
import com.nianticproject.ingress.shared.plext.FactionMarkupArgSet;
import com.nianticproject.ingress.shared.plext.PlayerMarkupArgSet;
import com.nianticproject.ingress.shared.plext.PortalMarkupArgSet;
import com.nianticproject.ingress.shared.plext.ScoreMarkupArgSet;
import com.nianticproject.ingress.shared.plext.SecureMarkupArgSet;
import com.nianticproject.ingress.shared.plext.b;
import com.nianticproject.ingress.shared.plext.c;
import com.nianticproject.ingress.shared.plext.d;
import com.nianticproject.ingress.shared.plext.f;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class z
{
  private static final aa a = new aa(z.class);

  private static ad a(String paramString1, int paramInt, d paramd, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1));
    String str;
    do
    {
      return null;
      str = PlayerMarkupArgSet.a(paramd, paramString2);
    }
    while (paramString1.equals(str));
    return new ad(PlayerMarkupArgSet.a(str), paramInt);
  }

  private static void a(Context paramContext, SpannableStringBuilder paramSpannableStringBuilder, String paramString, x paramx)
  {
    a(paramContext, paramSpannableStringBuilder, paramString, paramx, null);
  }

  private static void a(Context paramContext, SpannableStringBuilder paramSpannableStringBuilder, String paramString, x paramx, ClickableSpan paramClickableSpan)
  {
    a(paramContext, paramSpannableStringBuilder, paramString, paramx, paramClickableSpan, false);
  }

  private static void a(Context paramContext, SpannableStringBuilder paramSpannableStringBuilder, String paramString, x paramx, ClickableSpan paramClickableSpan, boolean paramBoolean)
  {
    an.a(paramContext);
    an.a(paramx);
    int i = paramContext.getResources().getColor(paramx.a());
    int j = paramSpannableStringBuilder.length();
    if (paramString == null)
      paramString = b.b.c().b();
    paramSpannableStringBuilder.append(paramString);
    int k = paramSpannableStringBuilder.length();
    if (paramClickableSpan != null)
      paramSpannableStringBuilder.setSpan(paramClickableSpan, j, k, 17);
    paramSpannableStringBuilder.setSpan(new ForegroundColorSpan(i), j, k, 17);
    if (paramBoolean)
      paramSpannableStringBuilder.setSpan(new UnderlineSpan(), j, k, 17);
  }

  private static void a(TextView paramTextView, String paramString, int paramInt)
  {
    paramTextView.setText(paramString);
    paramTextView.setTextColor(paramInt);
  }

  private static void a(TextView paramTextView, String paramString1, int paramInt1, List<c> paramList, f paramf, int paramInt2, boolean paramBoolean, String paramString2, ab paramab)
  {
    SpannableStringBuilder localSpannableStringBuilder;
    int i;
    Context localContext;
    d locald;
    com.nianticproject.ingress.shared.plext.a locala;
    x localx5;
    try
    {
      aj.a("MarkupTextDecorator.decorateAndSetA");
      if (paramList == null)
      {
        a(paramTextView, paramString1, paramInt1);
        return;
      }
      localSpannableStringBuilder = new SpannableStringBuilder();
      i = 0;
      if (i >= paramList.size())
        break label910;
      c localc = (c)paramList.get(i);
      localContext = paramTextView.getContext();
      an.a(localc);
      locald = localc.a();
      locala = localc.b();
      switch (aa.b[locald.ordinal()])
      {
      default:
        if (locald != d.a)
          a.b("Treating unsupported MarkupType \"%s\" as TEXT", new Object[] { locald });
        switch (aa.a[paramf.ordinal()])
        {
        default:
          localx5 = x.u;
          a(localContext, localSpannableStringBuilder, locala.b(), localx5);
        case 1:
        case 2:
        }
        break;
      case 1:
        label197: ai localai4 = ((FactionMarkupArgSet)locala).a();
        a(localContext, localSpannableStringBuilder, localai4.a(), x.a(localai4));
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      }
    }
    finally
    {
      aj.b();
    }
    PlayerMarkupArgSet localPlayerMarkupArgSet3 = (PlayerMarkupArgSet)locala;
    ai localai3 = localPlayerMarkupArgSet3.a();
    ad localad3 = a(paramString2, paramInt2, locald, localPlayerMarkupArgSet3.b());
    a(localContext, localSpannableStringBuilder, localPlayerMarkupArgSet3.b(), x.b(localai3), localad3);
    break label920;
    PlayerMarkupArgSet localPlayerMarkupArgSet2 = (PlayerMarkupArgSet)locala;
    ai localai2 = localPlayerMarkupArgSet2.a();
    ad localad2 = a(paramString2, paramInt2, locald, localPlayerMarkupArgSet2.b());
    x localx4 = x.a(localai2, PlayerMarkupArgSet.a(locald, localPlayerMarkupArgSet2.b()), paramString2, paramab);
    a(localContext, localSpannableStringBuilder, localPlayerMarkupArgSet2.b(), localx4, localad2);
    break label920;
    x localx2;
    Object localObject2;
    label398: PortalMarkupArgSet localPortalMarkupArgSet;
    ac localac;
    if (paramf == f.a)
    {
      x localx3 = x.n;
      localx2 = x.o;
      localObject2 = localx3;
      localPortalMarkupArgSet = (PortalMarkupArgSet)locala;
      ClientFeatureKnobBundle localClientFeatureKnobBundle = q.f();
      p.a();
      if (!localClientFeatureKnobBundle.f(com.nianticproject.ingress.common.p.a.a()))
        break label937;
      localac = new ac(localPortalMarkupArgSet);
    }
    while (true)
    {
      a(localContext, localSpannableStringBuilder, localPortalMarkupArgSet.a(), (x)localObject2, localac, bool);
      a(localContext, localSpannableStringBuilder, " (" + localPortalMarkupArgSet.c() + ")", localx2);
      break label920;
      x localx1 = x.p;
      localx2 = x.q;
      localObject2 = localx1;
      break label398;
      if (paramBoolean)
      {
        a(localContext, localSpannableStringBuilder, ((SecureMarkupArgSet)locala).b(), x.v);
        break label920;
        PlayerMarkupArgSet localPlayerMarkupArgSet1 = (PlayerMarkupArgSet)locala;
        ai localai1 = localPlayerMarkupArgSet1.a();
        ad localad1 = a(paramString2, paramInt2, locald, localPlayerMarkupArgSet1.b());
        a(localContext, localSpannableStringBuilder, localPlayerMarkupArgSet1.b(), x.c(localai1), localad1);
        break label920;
        ScoreMarkupArgSet localScoreMarkupArgSet = (ScoreMarkupArgSet)locala;
        long l1 = localScoreMarkupArgSet.a();
        long l2 = localScoreMarkupArgSet.c();
        if (l2 < l1)
        {
          a(localContext, localSpannableStringBuilder, ai.a.a(), x.h);
          a(localContext, localSpannableStringBuilder, " ", x.u);
          a(localContext, localSpannableStringBuilder, Long.toString(l1), x.k);
          a(localContext, localSpannableStringBuilder, " - ", x.u);
          a(localContext, localSpannableStringBuilder, ai.b.a(), x.i);
          a(localContext, localSpannableStringBuilder, " ", x.u);
          a(localContext, localSpannableStringBuilder, Long.toString(l2), x.l);
        }
        else
        {
          a(localContext, localSpannableStringBuilder, ai.b.a(), x.i);
          a(localContext, localSpannableStringBuilder, " ", x.u);
          a(localContext, localSpannableStringBuilder, Long.toString(l2), x.l);
          a(localContext, localSpannableStringBuilder, " - ", x.u);
          a(localContext, localSpannableStringBuilder, ai.a.a(), x.h);
          a(localContext, localSpannableStringBuilder, " ", x.u);
          a(localContext, localSpannableStringBuilder, Long.toString(l1), x.k);
          break label920;
          AttributionLinkMarkupArgSet localAttributionLinkMarkupArgSet = (AttributionLinkMarkupArgSet)locala;
          String str1 = localAttributionLinkMarkupArgSet.b();
          String str2 = localAttributionLinkMarkupArgSet.a();
          if (!TextUtils.isEmpty(str2))
          {
            a(localContext, localSpannableStringBuilder, str1, x.w, new URLSpan(str2));
          }
          else
          {
            a(localContext, localSpannableStringBuilder, str1, x.w);
            break label920;
            localx5 = x.s;
            break label197;
            localx5 = x.t;
            break label197;
            label910: paramTextView.setText(localSpannableStringBuilder);
            aj.b();
            return;
          }
        }
      }
      label920: i++;
      break;
      while (true)
      {
        if (localac == null)
          break label943;
        bool = true;
        break;
        label937: localac = null;
      }
      label943: boolean bool = false;
    }
  }

  public static void a(TextView paramTextView, String paramString, List<c> paramList, f paramf, int paramInt, boolean paramBoolean, ab paramab)
  {
    try
    {
      aj.a("MarkupTextDecorator.decorateAndSetC");
      an.a(paramTextView);
      paramTextView.getContext();
      String str = p.a().b().j();
      int i = paramTextView.getResources().getColor(2131165206);
      if (paramList == null)
      {
        a(paramTextView, paramString, i);
        return;
      }
      a(paramTextView, paramString, i, paramList, paramf, paramInt, paramBoolean, str, paramab);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public static void a(TextView paramTextView, String paramString, c[] paramArrayOfc)
  {
    try
    {
      aj.a("MarkupTextDecorator.decorateAndSetB");
      List localList = null;
      if (paramArrayOfc != null)
        localList = Arrays.asList(paramArrayOfc);
      a(paramTextView, paramString, 17170443, localList, null, 0, false, null, null);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public static boolean a(String paramString, List<c> paramList)
  {
    while (true)
    {
      try
      {
        aj.a("MarkupTextDecorator.hasAtPlayer");
        if (paramList != null)
        {
          Iterator localIterator = paramList.iterator();
          if (localIterator.hasNext())
          {
            c localc = (c)localIterator.next();
            if (localc.a() != d.d)
              continue;
            PlayerMarkupArgSet localPlayerMarkupArgSet = (PlayerMarkupArgSet)localc.b();
            boolean bool2 = paramString.equals(PlayerMarkupArgSet.a(localc.a(), localPlayerMarkupArgSet.b()));
            if (!bool2)
              continue;
            bool1 = true;
            return bool1;
          }
        }
      }
      finally
      {
        aj.b();
      }
      boolean bool1 = false;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.z
 * JD-Core Version:    0.6.2
 */