import com.badlogic.gdx.scenes.scene2d.InputEvent;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import java.util.List;

final class x extends ClickListener
{
  x(c paramc)
  {
  }

  public final void clicked(InputEvent paramInputEvent, float paramFloat1, float paramFloat2)
  {
    List localList = U.a;
    J.b = (U)localList.get((1 + localList.indexOf(J.b)) % localList.size());
    J.d();
    J.c();
    b.d(this.a.a);
    b.d(this.a.a).a.setText("Restart is recommended");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     x
 * JD-Core Version:    0.6.2
 */