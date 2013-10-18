import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

final class o extends ClickListener
{
  o(c paramc)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    J.a = S.values()[((1 + J.a.ordinal()) % S.values().length)];
    J.d();
    b.a(this.a.a, false);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     o
 * JD-Core Version:    0.6.2
 */