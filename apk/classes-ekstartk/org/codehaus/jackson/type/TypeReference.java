package org.codehaus.jackson.type;

import java.lang.reflect.Type;

public abstract class TypeReference<T>
  implements Comparable<TypeReference<T>>
{
  final Type _type;

  protected TypeReference()
  {
    Type localType = getClass().getGenericSuperclass();
    if ((localType instanceof Class))
      throw new IllegalArgumentException("Internal error: TypeReference constructed without actual type information");
    this._type = ((java.lang.reflect.ParameterizedType)localType).getActualTypeArguments()[0];
  }

  public int compareTo(TypeReference<T> paramTypeReference)
  {
    return 0;
  }

  public Type getType()
  {
    return this._type;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.type.TypeReference
 * JD-Core Version:    0.6.2
 */