package com.nianticproject.ingress.common.ui.e;

import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.ui.d.b;

public abstract interface a extends Disposable, b
{
  public abstract d a();

  public abstract void a(as paramas);

  public abstract void a(GameState paramGameState);

  public abstract boolean a(float paramFloat);

  public abstract boolean a(ej paramej);

  public abstract boolean a(bt parambt);

  public abstract void b();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.e.a
 * JD-Core Version:    0.6.2
 */