package com.nianticproject.ingress.common.missions;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.nianticproject.ingress.common.ui.a;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.af;

public class cc extends a
{
  private final af a;
  private aa b;
  private cd c;

  public cc(af paramaf)
  {
    super("MissionsActivity");
    this.a = paramaf;
    K().a(new cf(this, (byte)0));
  }

  public final void a()
  {
    Gdx.gl.glClearColor(0.0F, 0.0F, 0.0F, 1.0F);
    this.b.a();
  }

  public final void a(cd paramcd)
  {
    this.c = paramcd;
  }

  protected final String d()
  {
    return "MissionListActivity";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.cc
 * JD-Core Version:    0.6.2
 */