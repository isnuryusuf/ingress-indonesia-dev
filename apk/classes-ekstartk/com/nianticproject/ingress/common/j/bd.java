package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.VertexAttributes;

public final class bd
{
  public static VertexAttribute a(VertexAttributes paramVertexAttributes)
  {
    for (int i = 0; i < paramVertexAttributes.size(); i++)
    {
      VertexAttribute localVertexAttribute = paramVertexAttributes.get(i);
      if (localVertexAttribute.usage == 0)
        return localVertexAttribute;
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.bd
 * JD-Core Version:    0.6.2
 */