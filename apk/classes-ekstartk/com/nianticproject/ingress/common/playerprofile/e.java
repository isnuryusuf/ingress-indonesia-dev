package com.nianticproject.ingress.common.playerprofile;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ui.widget.bc;
import com.nianticproject.ingress.shared.playerprofile.AvatarLayerOption;

final class e
  implements bc
{
  private final f a;
  private g b = null;

  public e(f paramf)
  {
    this.a = ((f)an.a(paramf));
  }

  public final void a()
  {
  }

  public final void a(Actor paramActor, boolean paramBoolean)
  {
    if ((paramActor != null) && (!paramBoolean))
      ((g)paramActor).b();
  }

  public final void b(Actor paramActor)
  {
    if (this.b != null)
      this.b.a(false);
    this.b = ((g)paramActor);
    if (this.b != null)
    {
      this.b.a(true);
      AvatarLayerOption localAvatarLayerOption = this.b.a();
      this.a.a(localAvatarLayerOption.c(), localAvatarLayerOption);
    }
  }

  public final void c(Actor paramActor)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.e
 * JD-Core Version:    0.6.2
 */