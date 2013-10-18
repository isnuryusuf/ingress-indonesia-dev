package org.codehaus.jackson.map.type;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.JsonSerializableWithType;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeBase extends JavaType
  implements JsonSerializableWithType
{
  volatile String _canonicalName;

  protected TypeBase(Class<?> paramClass, int paramInt, Object paramObject1, Object paramObject2)
  {
    super(paramClass, paramInt);
    this._valueHandler = paramObject1;
    this._typeHandler = paramObject2;
  }

  protected abstract String buildCanonicalName();

  public <T> T getTypeHandler()
  {
    return this._typeHandler;
  }

  public <T> T getValueHandler()
  {
    return this._valueHandler;
  }

  public void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeString(toCanonical());
  }

  public void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(this, paramJsonGenerator);
    serialize(paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(this, paramJsonGenerator);
  }

  public String toCanonical()
  {
    String str = this._canonicalName;
    if (str == null)
      str = buildCanonicalName();
    return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.TypeBase
 * JD-Core Version:    0.6.2
 */