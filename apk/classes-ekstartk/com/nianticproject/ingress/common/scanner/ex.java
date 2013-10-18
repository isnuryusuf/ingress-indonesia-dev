package com.nianticproject.ingress.common.scanner;

import com.nianticproject.ingress.common.j.as;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.ui.d.e;
import com.nianticproject.ingress.common.ui.e.a;
import com.nianticproject.ingress.common.ui.e.d;
import com.nianticproject.ingress.common.ui.t;

public class ex extends e
  implements a
{
  private final a a;
  private final t b;
  private boolean c;

  public ex(a parama, t paramt)
  {
    this.a = parama;
    this.b = paramt;
  }

  public final d a()
  {
    return this.a.a();
  }

  public final void a(as paramas)
  {
    this.c = true;
    this.a.a(paramas);
  }

  public final void a(GameState paramGameState)
  {
    this.a.a(paramGameState);
  }

  public final boolean a(float paramFloat)
  {
    boolean bool = this.a.a(paramFloat);
    if (this.c != bool)
    {
      this.c = bool;
      this.b.d();
    }
    return true;
  }

  public final boolean a(float paramFloat1, float paramFloat2)
  {
    return this.a.a(paramFloat1, paramFloat2);
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    return this.a.a(paramInt1, paramInt2);
  }

  public final boolean a(ej paramej)
  {
    return this.a.a(paramej);
  }

  public final boolean a(bt parambt)
  {
    return this.a.a(parambt);
  }

  public final void b()
  {
    this.c = false;
    this.a.b();
  }

  public final a c()
  {
    return this.a;
  }

  public void dispose()
  {
    this.a.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ex
 * JD-Core Version:    0.6.2
 */