package com.badlogic.gdx.graphics;

public final class VertexAttributes
{
  private final VertexAttribute[] attributes;
  public final int vertexSize;

  public VertexAttributes(VertexAttribute[] paramArrayOfVertexAttribute)
  {
    if (paramArrayOfVertexAttribute.length == 0)
      throw new IllegalArgumentException("attributes must be >= 1");
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[paramArrayOfVertexAttribute.length];
    for (int i = 0; i < paramArrayOfVertexAttribute.length; i++)
      arrayOfVertexAttribute[i] = paramArrayOfVertexAttribute[i];
    this.attributes = arrayOfVertexAttribute;
    checkValidity();
    this.vertexSize = calculateOffsets();
  }

  private int calculateOffsets()
  {
    int i = 0;
    int j = 0;
    if (i < this.attributes.length)
    {
      VertexAttribute localVertexAttribute = this.attributes[i];
      localVertexAttribute.offset = j;
      if (localVertexAttribute.usage == 5)
        j += 4;
      while (true)
      {
        i++;
        break;
        j += 4 * localVertexAttribute.numComponents;
      }
    }
    return j;
  }

  private void checkValidity()
  {
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < this.attributes.length)
    {
      VertexAttribute localVertexAttribute = this.attributes[i];
      if (localVertexAttribute.usage == 0)
      {
        if (k != 0)
          throw new IllegalArgumentException("two position attributes were specified");
        k = 1;
      }
      if ((localVertexAttribute.usage == 1) || (localVertexAttribute.usage == 5))
      {
        if (localVertexAttribute.numComponents != 4)
          throw new IllegalArgumentException("color attribute must have 4 components");
        if (j != 0)
          throw new IllegalArgumentException("two color attributes were specified");
        j = 1;
      }
      i++;
    }
    if (k == 0)
      throw new IllegalArgumentException("no position attribute was specified");
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof VertexAttributes));
    VertexAttributes localVertexAttributes;
    do
    {
      return false;
      localVertexAttributes = (VertexAttributes)paramObject;
    }
    while (this.attributes.length != localVertexAttributes.size());
    for (int i = 0; ; i++)
    {
      if (i >= this.attributes.length)
        break label61;
      if (!this.attributes[i].equals(localVertexAttributes.attributes[i]))
        break;
    }
    label61: return true;
  }

  public final VertexAttribute get(int paramInt)
  {
    return this.attributes[paramInt];
  }

  public final int size()
  {
    return this.attributes.length;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    for (int i = 0; i < this.attributes.length; i++)
    {
      localStringBuilder.append("(");
      localStringBuilder.append(this.attributes[i].alias);
      localStringBuilder.append(", ");
      localStringBuilder.append(this.attributes[i].usage);
      localStringBuilder.append(", ");
      localStringBuilder.append(this.attributes[i].numComponents);
      localStringBuilder.append(", ");
      localStringBuilder.append(this.attributes[i].offset);
      localStringBuilder.append(")");
      localStringBuilder.append("\n");
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.VertexAttributes
 * JD-Core Version:    0.6.2
 */