package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonGenerator;

public abstract class TypeSerializer
{
  public abstract void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator);

  public abstract void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator);

  public abstract void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator);

  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    writeTypePrefixForScalar(paramObject, paramJsonGenerator);
  }

  public abstract void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator);

  public abstract void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator);

  public abstract void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.TypeSerializer
 * JD-Core Version:    0.6.2
 */