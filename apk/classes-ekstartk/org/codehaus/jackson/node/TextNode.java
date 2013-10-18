package org.codehaus.jackson.node;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.util.CharTypes;

public final class TextNode extends ValueNode
{
  static final TextNode EMPTY_STRING_NODE = new TextNode("");
  final String _value;

  public TextNode(String paramString)
  {
    this._value = paramString;
  }

  protected static void appendQuoted(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('"');
    CharTypes.appendQuoted(paramStringBuilder, paramString);
    paramStringBuilder.append('"');
  }

  public static TextNode valueOf(String paramString)
  {
    if (paramString == null)
      return null;
    if (paramString.length() == 0)
      return EMPTY_STRING_NODE;
    return new TextNode(paramString);
  }

  public final String asText()
  {
    return this._value;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    Class localClass1;
    Class localClass2;
    do
    {
      do
      {
        return bool;
        bool = false;
      }
      while (paramObject == null);
      localClass1 = paramObject.getClass();
      localClass2 = getClass();
      bool = false;
    }
    while (localClass1 != localClass2);
    return ((TextNode)paramObject)._value.equals(this._value);
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
    paramJsonGenerator.writeString(this._value);
  }

  public final String toString()
  {
    int i = this._value.length();
    StringBuilder localStringBuilder = new StringBuilder(i + 2 + (i >> 4));
    appendQuoted(localStringBuilder, this._value);
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.node.TextNode
 * JD-Core Version:    0.6.2
 */