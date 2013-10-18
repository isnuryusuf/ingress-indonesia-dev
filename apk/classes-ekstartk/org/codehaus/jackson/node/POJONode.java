package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class POJONode extends ValueNode
{
  protected final Object _value;

  public POJONode(Object paramObject)
  {
    this._value = paramObject;
  }

  public final String asText()
  {
    if (this._value == null)
      return "null";
    return this._value.toString();
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    POJONode localPOJONode;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (paramObject.getClass() != getClass())
        return false;
      localPOJONode = (POJONode)paramObject;
      if (this._value != null)
        break;
    }
    while (localPOJONode._value == null);
    return false;
    return this._value.equals(localPOJONode._value);
  }

  public final int hashCode()
  {
    return this._value.hashCode();
  }

  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this._value == null)
    {
      paramJsonGenerator.writeNull();
      return;
    }
    paramJsonGenerator.writeObject(this._value);
  }

  public final String toString()
  {
    return String.valueOf(this._value);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.POJONode
 * JD-Core Version:    0.6.2
 */