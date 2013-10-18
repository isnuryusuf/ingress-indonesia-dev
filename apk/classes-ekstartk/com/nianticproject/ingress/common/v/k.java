package com.nianticproject.ingress.common.v;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.ag;
import com.nianticproject.ingress.common.ui.widget.bd;

final class k
  implements ac
{
  Table a;

  private k(j paramj)
  {
  }

  private static a a(Skin paramSkin, Table paramTable, String paramString, c[] paramArrayOfc)
  {
    a locala = new a(paramSkin, paramString, paramArrayOfc);
    a(paramTable, locala);
    return locala;
  }

  private static aj a(Skin paramSkin, Table paramTable, String paramString1, String paramString2, String paramString3)
  {
    aj localaj = new aj(paramSkin, paramString1);
    localaj.a(paramString2);
    if (paramString3 != null)
      localaj.a().setText(paramString3);
    a(paramTable, localaj);
    return localaj;
  }

  private static void a(Table paramTable, aj paramaj)
  {
    paramTable.add(paramaj).o().g().j(-2.0F);
    paramTable.row();
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    Table localTable = new Table();
    localTable.top().pad(10.0F);
    j.a(this.b, a(paramSkin, localTable, "User", "", "Sign out"));
    j.b(this.b, a(paramSkin, localTable, "Help", "Go to the help center", "Go"));
    j.c(this.b, a(paramSkin, localTable, "Data", "Force clear data and resync.", "Force sync"));
    j.d(this.b, a(paramSkin, localTable, "Sources", "", "Show"));
    j.e(this.b, a(paramSkin, localTable, "Build", "", null));
    j localj1 = this.b;
    ak localak = new ak(paramSkin);
    a(localTable, localak);
    j.a(localj1, localak);
    j.f(this.b, a(paramSkin, localTable, "Compass", "", "Toggle"));
    j.g(this.b, a(paramSkin, localTable, "Location smoothing", "", "Toggle"));
    j localj2 = this.b;
    c[] arrayOfc1 = new c[2];
    arrayOfc1[0] = new c(1, "Game notifications (Portal under attack, etc).", false);
    arrayOfc1[1] = new c(2, "Send me Ingress-related events, promotion information, offers, and news updates to my email address.", false);
    j.a(localj2, a(paramSkin, localTable, "Email", arrayOfc1));
    j localj3 = this.b;
    c[] arrayOfc2 = new c[4];
    arrayOfc2[0] = new c(3, "You are mentioned in COMM.", false);
    arrayOfc2[1] = new c(4, "Portal under attack.", false);
    arrayOfc2[2] = new c(5, "Recruiting and faction activity.", false);
    arrayOfc2[3] = new c(6, "Vibrate", true);
    j.b(localj3, a(paramSkin, localTable, "Notifications", arrayOfc2));
    j.h(this.b, a(paramSkin, localTable, "Notification Sounds", "", "CHOOSE"));
    j localj4 = this.b;
    c[] arrayOfc3 = new c[1];
    arrayOfc3[0] = new c(7, "Make agent stats private.", false);
    j.c(localj4, a(paramSkin, localTable, "Agent Profile", arrayOfc3));
    Image localImage = new Image(paramSkin.getPatch("default-pane"));
    ScrollPane localScrollPane = new ScrollPane(localTable);
    this.a = new Table();
    this.a.setWidth(paramStage.getWidth());
    this.a.setHeight(paramStage.getHeight());
    j.a(this.b, new aa(paramSkin, (int)paramStage.getWidth(), j.y(this.b), ag.g));
    this.a.add(j.z(this.b));
    this.a.row();
    this.a.add(bd.a(new Actor[] { localImage, localScrollPane })).n().f().g(2.0F);
    paramStage.addActor(this.a);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.a.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v.k
 * JD-Core Version:    0.6.2
 */