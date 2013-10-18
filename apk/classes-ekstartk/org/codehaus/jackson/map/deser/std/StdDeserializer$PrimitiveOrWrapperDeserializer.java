package org.codehaus.jackson.map.deser.std;

public abstract class StdDeserializer$PrimitiveOrWrapperDeserializer<T> extends StdScalarDeserializer<T>
{
  final T _nullValue;

  protected StdDeserializer$PrimitiveOrWrapperDeserializer(Class<T> paramClass, T paramT)
  {
    super(paramClass);
    this._nullValue = paramT;
  }

  public final T getNullValue()
  {
    return this._nullValue;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.PrimitiveOrWrapperDeserializer
 * JD-Core Version:    0.6.2
 */