import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.ScrollPane;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.ag;

final class c
  implements ac
{
  c(b paramb)
  {
  }

  private void a(G paramG)
  {
    b.a(this.a).add(paramG).o().g().h(-2.0F);
    b.a(this.a).row();
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    b.a(this.a, new Table());
    b.a(this.a).top().pad(10.0F);
    b.a(this.a, new G(paramSkin, "Gameplay tweaks", null));
    b.a(this.a).a("TARGET and FIRE", "", new d(this));
    a(b.a(this.a));
    b.b(this.a, new G(paramSkin, "Menu tabs", null));
    b.b(this.a).a("[ITEMS]", "", new o(this));
    b.b(this.a).a("INVENTORY", "Show", new z(this));
    b.b(this.a).a("AGENT", "Show", new A(this));
    b.b(this.a).a("MISSIONS", "Show", new B(this));
    b.b(this.a).a("INTEL", "Show", new C(this));
    b.b(this.a).a("RECRUIT", "Show", new D(this));
    b.b(this.a).a("PASSCODE", "Show", new E(this));
    b.b(this.a).a("DEVICE", "Show", new F(this));
    a(b.b(this.a));
    b.c(this.a, new G(paramSkin, "Animations", null));
    b.c(this.a).a("Scanner zoom in", "", new e(this));
    b.c(this.a).a("Hacking", "", new f(this));
    b.c(this.a).a("Item rotation", "", new g(this));
    b.c(this.a).a("Recycle animation", "", new h(this));
    b.c(this.a).a("XM flow", "", new i(this));
    b.c(this.a).a("Shield Animation", "", new j(this));
    a(b.c(this.a));
    b.d(this.a, new G(paramSkin, "UI tweaks", null));
    b.e(this.a).a("Fullscreen", "", new k(this));
    b.e(this.a).a("Portal vectors", "", new l(this));
    b.e(this.a).a("Portal particles", "", new m(this));
    b.e(this.a).a("Scanner objects", "", new n(this));
    b.e(this.a).a("Simplify Items", "", new p(this));
    b.e(this.a).a("Chat time format", "", new q(this));
    b.e(this.a).a("Vibrate", "", new r(this));
    b.e(this.a).a("Keep screen on", "", new s(this));
    b.e(this.a).a("Keep GPS on", "", new t(this));
    b.e(this.a).a("Modify portal info", "", new u(this));
    b.e(this.a).a("Allow Cubes recyling", "", new v(this));
    b.e(this.a).a("Privacy", "", new w(this));
    a(b.e(this.a));
    a(b.e(this.a, new G(paramSkin, "UI variant", "", "Toggle", new x(this))));
    a(b.f(this.a, new G(paramSkin, "Restart", "", "Restart app", new y())));
    a(new G(paramSkin, "Mod version", J.a()));
    Table localTable = new Table();
    localTable.setFillParent(true);
    b.a(this.a, new aa(paramSkin, (int)paramStage.getWidth(), J.a, ag.MOD_ABOUT));
    b.a(this.a).a();
    localTable.add(b.a(this.a));
    localTable.row();
    localTable.add(new ScrollPane(b.a(this.a))).n().f().e(2.0F);
    paramStage.addActor(localTable);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     c
 * JD-Core Version:    0.6.2
 */