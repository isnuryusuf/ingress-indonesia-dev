package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.math.collision.Ray;
import com.badlogic.gdx.utils.Array;
import java.util.Iterator;

public class q extends p
  implements aj, o
{
  private final Ray e = new Ray(new Vector3(), new Vector3());

  public q()
  {
    super(new Array(false, 0));
  }

  public final ak a(Ray paramRay)
  {
    int i = this.a.size;
    Object localObject1 = null;
    if (i == 0)
      return localObject1;
    this.e.set(paramRay).mul(this.c);
    Iterator localIterator = this.a.iterator();
    label41: Object localObject2;
    if (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
      if (!(localo instanceof o))
        break label115;
      localObject2 = ((o)localo).a(this.e);
      if ((localObject2 == null) || ((localObject1 != null) && (((ak)localObject2).b >= ((ak)localObject1).b)))
        break label115;
    }
    while (true)
    {
      localObject1 = localObject2;
      break label41;
      break;
      label115: localObject2 = localObject1;
    }
  }

  public final ak a(f paramf, Matrix4 paramMatrix4, Vector2 paramVector2)
  {
    int i = this.a.size;
    Object localObject1 = null;
    if (i == 0)
      return localObject1;
    this.d.set(paramMatrix4).mul(this.b);
    Iterator localIterator = this.a.iterator();
    label45: Object localObject2;
    if (localIterator.hasNext())
    {
      o localo = (o)localIterator.next();
      if (!(localo instanceof o))
        break label124;
      localObject2 = ((o)localo).a(paramf, this.d, paramVector2);
      if ((localObject2 == null) || ((localObject1 != null) && (((ak)localObject2).b >= ((ak)localObject1).b)))
        break label124;
    }
    while (true)
    {
      localObject1 = localObject2;
      break label45;
      break;
      label124: localObject2 = localObject1;
    }
  }

  public final void b(o paramo)
  {
    this.a.add(paramo);
  }

  public final boolean c(o paramo)
  {
    return this.a.removeValue(paramo, true);
  }

  public final boolean w_()
  {
    return this.a.size != 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.q
 * JD-Core Version:    0.6.2
 */