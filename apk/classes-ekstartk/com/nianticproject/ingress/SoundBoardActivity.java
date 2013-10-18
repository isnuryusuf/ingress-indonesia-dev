package com.nianticproject.ingress;

import android.app.Activity;
import android.os.Bundle;
import android.widget.GridView;
import android.widget.TextView;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.ab;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bo;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import java.util.List;

public class SoundBoardActivity extends Activity
{
  private final ab a = new ab();
  private final List<bn> b = eq.a();
  private e c;
  private TextView d;
  private final List<dv> e = eq.a();
  private GridView f;

  public SoundBoardActivity()
  {
    for (ba localba : ba.values())
    {
      bn localbn = new bo().a(new ba[] { localba }).e().f();
      this.b.add(localbn);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setVolumeControlStream(3);
    this.c = o.a();
    this.a.a(this.c);
    setContentView(2130903082);
    this.e.add(new dv("0", findViewById(2131230849)));
    this.e.add(new dv("1", findViewById(2131230850)));
    this.e.add(new dv("2", findViewById(2131230851)));
    this.e.add(new dv("3", findViewById(2131230852)));
    this.e.add(new dv("4", findViewById(2131230853)));
    this.e.add(new dv("5", findViewById(2131230854)));
    this.e.add(new dv("6", findViewById(2131230855)));
    this.e.add(new dv("7", findViewById(2131230856)));
    this.e.add(new dv("8", findViewById(2131230857)));
    this.e.add(new dv("9", findViewById(2131230858)));
    this.e.add(new dv("a", findViewById(2131230859)));
    this.e.add(new dv("b", findViewById(2131230860)));
    this.e.add(new dv("c", findViewById(2131230861)));
    this.e.add(new dv("d", findViewById(2131230862)));
    this.e.add(new dv("e", findViewById(2131230863)));
    this.e.add(new dv("f", findViewById(2131230864)));
    this.d = ((TextView)findViewById(2131230865));
    this.f = ((GridView)findViewById(2131230866));
    this.f.setAdapter(new dw(this, this.e, this.d, this.b));
  }

  protected void onDestroy()
  {
    this.a.b();
    super.onDestroy();
  }

  protected void onPause()
  {
    this.a.c();
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    this.a.f_();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.SoundBoardActivity
 * JD-Core Version:    0.6.2
 */