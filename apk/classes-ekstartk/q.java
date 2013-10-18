import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;

final class q extends ClickListener
{
  q(c paramc)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    J.a = (1 + J.a) % 3;
    b.c(this.a.a);
    b.d(this.a.a).a.setText("Restart is recommended");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     q
 * JD-Core Version:    0.6.2
 */