package com.nianticproject.ingress.common.ui.d;

import com.badlogic.gdx.math.Vector2;
import com.google.a.a.an;
import com.google.a.c.eq;
import java.util.ArrayList;

public final class d
  implements b
{
  private final ArrayList<b> a = eq.a();

  public d()
  {
  }

  public d(b[] paramArrayOfb)
  {
    int i = paramArrayOfb.length;
    for (int j = 0; j < i; j++)
      a(paramArrayOfb[j]);
  }

  public final void a()
  {
    this.a.clear();
  }

  public final void a(b paramb)
  {
    this.a.add(an.a(paramb));
  }

  public final boolean a(float paramFloat1, float paramFloat2)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).a(paramFloat1, paramFloat2))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).a(paramInt1, paramInt2))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean fling(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).fling(paramFloat1, paramFloat2, paramInt1, paramInt2))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean longPress(float paramFloat1, float paramFloat2)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).longPress(paramFloat1, paramFloat2))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean pan(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).pan(paramFloat1, paramFloat2, paramFloat3, paramFloat4))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean pinch(Vector2 paramVector21, Vector2 paramVector22, Vector2 paramVector23, Vector2 paramVector24)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).pinch(paramVector21, paramVector22, paramVector23, paramVector24))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean tap(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).tap(paramFloat1, paramFloat2, paramInt1, paramInt2, paramInt3))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean touchDown(float paramFloat1, float paramFloat2, int paramInt)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).touchDown(paramFloat1, paramFloat2, paramInt))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final boolean zoom(float paramFloat1, float paramFloat2)
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size();
      boolean bool = false;
      if (i < j)
      {
        if (((b)this.a.get(i)).zoom(paramFloat1, paramFloat2))
          bool = true;
      }
      else
        return bool;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.d.d
 * JD-Core Version:    0.6.2
 */