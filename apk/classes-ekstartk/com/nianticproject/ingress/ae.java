package com.nianticproject.ingress;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.ViewConfiguration;
import com.google.a.a.aj;
import com.google.a.a.ba;
import com.google.a.d.u;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.StoryItem;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.multiphotos.MoreInfoActivity;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ae
  implements ac
{
  private static final aa a = new aa(ae.class);
  private final NemesisActivity b;
  private final com.nianticproject.ingress.common.u.q c;
  private final com.nianticproject.ingress.ui.f d;

  public ae(NemesisActivity paramNemesisActivity, com.nianticproject.ingress.common.u.q paramq)
  {
    this.b = paramNemesisActivity;
    this.c = paramq;
    this.d = new com.nianticproject.ingress.ui.f(paramNemesisActivity);
  }

  public static void a(Activity paramActivity)
  {
    paramActivity.moveTaskToBack(true);
  }

  public final void a()
  {
    a.a("Item", "passcodeActivity");
    this.b.startActivityForResult(PasscodeActivity.a(this.b), 1002);
  }

  public final void a(ba<aj<byte[]>> paramba)
  {
    this.b.a(paramba);
  }

  public final void a(u paramu)
  {
    BlankPassThroughActivity.a(this.b, paramu);
  }

  public final void a(Portal paramPortal)
  {
    a.b("Portal", "info");
    this.b.startActivityForResult(MoreInfoActivity.a(this.b, paramPortal.getEntityGuid()), 1006);
  }

  public final void a(com.nianticproject.ingress.gameentity.f paramf)
  {
    StoryItem localStoryItem = (StoryItem)paramf.getComponent(StoryItem.class);
    if (localStoryItem == null)
    {
      aa localaa = a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = paramf.getGuid();
      localaa.b("Attempt to open %s as a story item, but no such component", arrayOfObject);
      return;
    }
    new af(this, paramf).e();
    localStoryItem.setHasBeenViewed(true);
    String str = localStoryItem.getPrimaryUrl();
    if ((com.nianticproject.ingress.common.q.f().a()) && (Pattern.compile("https?:\\/\\/(?:[0-9A-Z-]+\\.)?(?:youtu\\.be\\/|youtube\\.com\\S*[^\\w\\-\\s])([\\w\\-]{11})(?=[^\\w\\-]|$)(?![?=&+%\\w]*(?:['\"][^<>]*>|<\\/a>))[?=&+%\\w]*", 2).matcher(str).matches()));
    for (Intent localIntent = YouTubeActivity.a(this.b, localStoryItem); ; localIntent = new Intent("android.intent.action.VIEW", Uri.parse(localStoryItem.getPrimaryUrl())))
    {
      this.b.startActivity(localIntent);
      a.b("StoryItem", "open");
      return;
    }
  }

  public final void a(String paramString)
  {
    this.d.a(paramString);
  }

  public final void b()
  {
    this.b.moveTaskToBack(true);
  }

  public final void c()
  {
    a.a("Item", "invitesActivity");
    this.b.startActivity(new Intent(this.b, InviteActivity.class));
  }

  public final void d()
  {
    this.d.a();
  }

  public final long e()
  {
    return ViewConfiguration.getLongPressTimeout();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ae
 * JD-Core Version:    0.6.2
 */