package com.badlogic.gdx.graphics;

public final class VertexAttribute
{
  public String alias;
  public final int numComponents;
  public int offset;
  public final int usage;

  public VertexAttribute(int paramInt1, int paramInt2, String paramString)
  {
    this.usage = paramInt1;
    this.numComponents = paramInt2;
    this.alias = paramString;
  }

  public static VertexAttribute Color()
  {
    return new VertexAttribute(5, 4, "a_color");
  }

  public static VertexAttribute ColorUnpacked()
  {
    return new VertexAttribute(1, 4, "a_color");
  }

  public static VertexAttribute Normal()
  {
    return new VertexAttribute(2, 3, "a_normal");
  }

  public static VertexAttribute Position()
  {
    return new VertexAttribute(0, 3, "a_position");
  }

  public static VertexAttribute TexCoords(int paramInt)
  {
    return new VertexAttribute(3, 2, "a_texCoord" + paramInt);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof VertexAttribute));
    VertexAttribute localVertexAttribute;
    do
    {
      return false;
      localVertexAttribute = (VertexAttribute)paramObject;
    }
    while ((this.usage != localVertexAttribute.usage) || (this.numComponents != localVertexAttribute.numComponents) || (!this.alias.equals(localVertexAttribute.alias)));
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.VertexAttribute
 * JD-Core Version:    0.6.2
 */