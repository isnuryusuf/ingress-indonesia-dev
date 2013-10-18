package com.nianticproject.ingress.common.scanner.visuals.b;

import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.j.am;
import com.nianticproject.ingress.common.j.an;

public abstract class c
  implements Disposable
{
  private an a;
  private am b;

  private short[] a()
  {
    short[] arrayOfShort1 = new short[6 * h()];
    short[] arrayOfShort2 = { 0, 1, 2, 1, 3, 2 };
    int i = 0;
    int j = 0;
    while (i < 6 * h())
    {
      for (int k = 0; k < 6; k++)
        arrayOfShort1[(i + k)] = ((short)(j + arrayOfShort2[k]));
      j += 4;
      i += 6;
    }
    return arrayOfShort1;
  }

  private float[] b()
  {
    float[] arrayOfFloat = new float[9 * (4 * h())];
    Vector3 localVector3 = new Vector3();
    d locald = new d();
    int i = 0;
    int j = 0;
    while (i < h())
    {
      a(localVector3);
      a(locald);
      int k = 0;
      while (k < 4)
      {
        arrayOfFloat[(j + 0)] = localVector3.x;
        arrayOfFloat[(j + 1)] = localVector3.y;
        arrayOfFloat[(j + 2)] = localVector3.z;
        arrayOfFloat[(j + 3)] = e.a[k];
        arrayOfFloat[(j + 4)] = e.b[k];
        arrayOfFloat[(j + 5)] = locald.b;
        arrayOfFloat[(j + 6)] = locald.a;
        arrayOfFloat[(j + 7)] = locald.c;
        arrayOfFloat[(j + 8)] = a(i);
        int m = j + 9;
        k++;
        j = m;
      }
      i++;
    }
    return arrayOfFloat;
  }

  abstract int a(int paramInt);

  abstract void a(Vector3 paramVector3);

  abstract void a(d paramd);

  public void dispose()
  {
    this.a.dispose();
    this.b.dispose();
  }

  final void f()
  {
    float[] arrayOfFloat = b();
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[6];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 3, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(3, 2, "a_texCoord0");
    arrayOfVertexAttribute[2] = new VertexAttribute(4, 1, "a_scale");
    arrayOfVertexAttribute[3] = new VertexAttribute(4, 1, "a_speed");
    arrayOfVertexAttribute[4] = new VertexAttribute(4, 1, "a_tOffset");
    arrayOfVertexAttribute[5] = new VertexAttribute(4, 1, "a_index");
    this.a = new an(arrayOfFloat, arrayOfVertexAttribute);
    this.b = new am(a());
  }

  abstract ShaderProgram g();

  abstract int h();

  abstract boolean i();

  public final an j()
  {
    return this.a;
  }

  public final am k()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.b.c
 * JD-Core Version:    0.6.2
 */