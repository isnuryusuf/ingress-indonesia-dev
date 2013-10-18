package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.math.Vector3;
import com.nianticproject.ingress.common.j.ap;
import com.nianticproject.ingress.common.j.ar;

public final class bz
  implements ar
{
  private final ap a = new ap();

  public bz(j paramj, Vector3 paramVector3, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5)
  {
    paramj.a(this.a);
    Vector3 localVector31 = new Vector3(paramVector3.x, 0.0F, paramVector3.z);
    Vector3 localVector32 = new Vector3(this.a.d);
    localVector32.sub(this.a.e).nor();
    this.a.e.set(localVector32).mul(-paramFloat1).add(localVector31);
    this.a.d.set(localVector32).mul(0.05F * paramFloat1).add(localVector31);
    float f1 = a(paramFloat1, paramFloat2, paramFloat4);
    float f2 = paramFloat5 * a(paramFloat1, paramFloat2, paramFloat3);
    Vector3 localVector33 = localVector32.crs(Vector3.Y).nor().mul(f2);
    localVector33.y = f1;
    this.a.d.add(localVector33);
    this.a.a = paramFloat2;
  }

  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return 2.0F * (paramFloat1 * -paramFloat3) * (float)Math.sin(3.141592653589793D * paramFloat2 / 360.0D);
  }

  public final ap a()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bz
 * JD-Core Version:    0.6.2
 */