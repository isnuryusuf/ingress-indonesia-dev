package com.nianticproject.ingress.common.i;

import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.y;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.u;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;

public class a
  implements ApplicationListener
{
  private static final aa a = new aa(a.class);
  private ApplicationListener b;
  private String c;
  private c d;
  private int e;
  private int f;

  public a(ApplicationListener paramApplicationListener)
  {
    this.b = ((ApplicationListener)an.a(paramApplicationListener));
    this.c = paramApplicationListener.getClass().getSimpleName();
    this.d = c.a;
  }

  private void a()
  {
    switch (b.a[this.d.ordinal()])
    {
    default:
      throw new IllegalStateException("unimplemented appState=" + this.d);
    case 6:
      this.d = c.b;
      this.b.create();
      return;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    }
    throw new IllegalStateException("delegate appState=" + this.d);
  }

  public final void a(ApplicationListener paramApplicationListener)
  {
    u.a("swapDelegate");
    switch (b.a[this.d.ordinal()])
    {
    default:
      throw new IllegalStateException("unimplemented appState=" + this.d);
    case 3:
    case 4:
    case 5:
      dispose();
    case 7:
      if (paramApplicationListener == null)
        return;
      break;
    case 1:
    case 2:
    case 6:
      throw new IllegalStateException("delegate appState=" + this.d);
    }
    this.b = paramApplicationListener;
    this.c = this.b.getClass().getSimpleName();
    this.d = c.a;
    a();
    resize(this.e, this.f);
    resume();
  }

  public void create()
  {
    aa localaa = a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.c;
    localaa.a("%s.create", arrayOfObject);
    a();
    if (ag.a == ah.a)
    {
      y localy = new y(Gdx.gl20);
      Gdx.gl20 = localy;
      Gdx.gl = localy;
      an.a(Gdx.gl20.equals(Gdx.graphics.getGL20()));
      an.a(Gdx.gl.equals(Gdx.graphics.getGLCommon()));
    }
  }

  public void dispose()
  {
    aa localaa = a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.c;
    arrayOfObject[1] = this.d;
    localaa.a("%s.dispose appState=%s", arrayOfObject);
    switch (b.a[this.d.ordinal()])
    {
    default:
      throw new IllegalStateException("unimplemented appState=" + this.d);
    case 1:
    case 2:
    case 5:
    case 6:
      this.b.dispose();
    case 7:
    case 3:
    case 4:
    }
    while (true)
    {
      this.b = null;
      this.c = "null";
      this.d = c.g;
      return;
      this.b.pause();
      this.b.dispose();
    }
  }

  public void pause()
  {
    aa localaa1 = a;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.c;
    localaa1.a("%s.pause", arrayOfObject1);
    switch (b.a[this.d.ordinal()])
    {
    default:
      throw new IllegalStateException("unimplemented appState=" + this.d);
    case 5:
      aa localaa2 = a;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.d;
      localaa2.b("ignoring pause call since appState=%s", arrayOfObject2);
      return;
    case 3:
    case 4:
      this.d = c.f;
      this.b.pause();
      return;
    case 1:
    case 2:
    case 6:
    case 7:
    }
    throw new IllegalStateException("delegate appState=" + this.d);
  }

  public void render()
  {
    try
    {
      switch (b.a[this.d.ordinal()])
      {
      default:
        throw new IllegalStateException("unimplemented appState=" + this.d);
      case 2:
      case 4:
      case 3:
      case 5:
      case 1:
      case 6:
      case 7:
      }
    }
    catch (Throwable localThrowable)
    {
      a.b(localThrowable, "Exception/Error during ForwardingAppListener#render(), GL thread crashing...");
      if ((localThrowable instanceof Error))
      {
        throw ((Error)localThrowable);
        aa localaa2 = a;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.c;
        localaa2.a("%s.render (first render only)", arrayOfObject2);
        for (this.d = c.e; ; this.d = c.e)
        {
          this.b.render();
          return;
        }
        aa localaa1 = a;
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = this.d;
        localaa1.b("ignoring render call since appState=%s", arrayOfObject1);
        return;
        throw new IllegalStateException("delegate appState=" + this.d);
      }
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      throw new IllegalStateException("Unexpected throwble (should be a checked exception).", localThrowable);
    }
  }

  public void resize(int paramInt1, int paramInt2)
  {
    aa localaa = a;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.c;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    localaa.a("%s.resize(w=%d h=%d)", arrayOfObject);
    this.e = paramInt1;
    this.f = paramInt2;
    switch (b.a[this.d.ordinal()])
    {
    default:
      throw new IllegalStateException("unimplemented appState=" + this.d);
    case 1:
      this.d = c.c;
    case 2:
    case 3:
    case 4:
    case 5:
      this.b.resize(paramInt1, paramInt2);
      return;
    case 6:
    case 7:
    }
    throw new IllegalStateException("delegate appState=" + this.d);
  }

  public void resume()
  {
    aa localaa1 = a;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.c;
    localaa1.a("%s.resume", arrayOfObject1);
    switch (b.a[this.d.ordinal()])
    {
    default:
      throw new IllegalStateException("unimplemented appState=" + this.d);
    case 3:
    case 4:
      aa localaa2 = a;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.d;
      localaa2.b("ignoring resume call since appState=%s", arrayOfObject2);
      return;
    case 1:
    case 6:
    case 7:
      throw new IllegalStateException("delegate appState=" + this.d);
    case 2:
    case 5:
    }
    this.d = c.d;
    this.b.resume();
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.c;
    arrayOfObject[1] = this.d;
    return String.format("ForwardingAppListener(name=%s, appState=%s)", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.i.a
 * JD-Core Version:    0.6.2
 */