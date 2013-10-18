package com.nianticproject.ingress;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.j;
import android.widget.TextView;
import com.google.android.youtube.player.YouTubePlayerSupportFragment;
import com.google.android.youtube.player.c;
import com.google.android.youtube.player.f;
import com.google.android.youtube.player.h;
import com.google.android.youtube.player.i;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.StoryItem;
import com.nianticproject.ingress.ui.a;
import com.nianticproject.ingress.ui.aj;
import com.nianticproject.ingress.ui.d;

public class YouTubeActivity extends FragmentActivity
  implements DialogInterface.OnCancelListener, h, i, d
{
  private static final aa a = new aa(YouTubeActivity.class);
  private YouTubePlayerSupportFragment b;
  private String c;
  private String d;

  public static Intent a(Context paramContext, StoryItem paramStoryItem)
  {
    Intent localIntent = new Intent(paramContext, YouTubeActivity.class);
    localIntent.putExtra("title", paramStoryItem.getShortDescription());
    localIntent.putExtra("video_url", paramStoryItem.getPrimaryUrl());
    return localIntent;
  }

  private Intent b()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("video_url", this.d);
    return localIntent;
  }

  public final void a()
  {
    setResult(-1, b());
  }

  public final void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.d)));
    finish();
  }

  public final void a(int paramInt1, int paramInt2, String paramString)
  {
  }

  public final void a(c paramc)
  {
    if (paramc.a())
    {
      paramc.a(this, this).show();
      return;
    }
    a.c("Unrecoverable YouTube player error: %s", new Object[] { paramc });
    a.a(0, getString(2131296331), getString(2131296426), getString(2131296427), getString(2131296391)).a(getSupportFragmentManager(), "unrecoverable_error");
  }

  public final void a(f paramf, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      String str = Uri.parse(this.d).getQueryParameter("v");
      paramf.a(this);
      paramf.a(str);
    }
  }

  public final void b(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    finish();
  }

  public final void c(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    finish();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    case 0:
    }
    this.b.a("AIzaSyB0PCixY_NOhjG0M-6YWaNz5mL8IUIVD0M", this);
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    aj.a(this, findViewById(16908290), "coda.ttf");
    if (paramBundle != null)
      this.d = paramBundle.getString("video_url");
    Intent localIntent;
    for (this.c = paramBundle.getString("title"); ; this.c = localIntent.getStringExtra("title"))
    {
      ((TextView)findViewById(2131230747)).setText(this.c);
      this.b = ((YouTubePlayerSupportFragment)getSupportFragmentManager().a(2131230869));
      this.b.a("AIzaSyB0PCixY_NOhjG0M-6YWaNz5mL8IUIVD0M", this);
      setResult(0, b());
      return;
      localIntent = getIntent();
      this.d = localIntent.getStringExtra("video_url");
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("title", this.c);
    paramBundle.putString("video_url", this.d);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.YouTubeActivity
 * JD-Core Version:    0.6.2
 */