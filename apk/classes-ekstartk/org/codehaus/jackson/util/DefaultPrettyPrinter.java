package org.codehaus.jackson.util;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.PrettyPrinter;
import org.codehaus.jackson.impl.Indenter;

public class DefaultPrettyPrinter
  implements PrettyPrinter
{
  protected Indenter _arrayIndenter = new DefaultPrettyPrinter.FixedSpaceIndenter();
  protected int _nesting = 0;
  protected Indenter _objectIndenter = new DefaultPrettyPrinter.Lf2SpacesIndenter();
  protected boolean _spacesInObjectEntries = true;

  public void beforeArrayValues(JsonGenerator paramJsonGenerator)
  {
    this._arrayIndenter.writeIndentation(paramJsonGenerator, this._nesting);
  }

  public void beforeObjectEntries(JsonGenerator paramJsonGenerator)
  {
    this._objectIndenter.writeIndentation(paramJsonGenerator, this._nesting);
  }

  public void writeArrayValueSeparator(JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeRaw(',');
    this._arrayIndenter.writeIndentation(paramJsonGenerator, this._nesting);
  }

  public void writeEndArray(JsonGenerator paramJsonGenerator, int paramInt)
  {
    if (!this._arrayIndenter.isInline())
      this._nesting = (-1 + this._nesting);
    if (paramInt > 0)
      this._arrayIndenter.writeIndentation(paramJsonGenerator, this._nesting);
    while (true)
    {
      paramJsonGenerator.writeRaw(']');
      return;
      paramJsonGenerator.writeRaw(' ');
    }
  }

  public void writeEndObject(JsonGenerator paramJsonGenerator, int paramInt)
  {
    if (!this._objectIndenter.isInline())
      this._nesting = (-1 + this._nesting);
    if (paramInt > 0)
      this._objectIndenter.writeIndentation(paramJsonGenerator, this._nesting);
    while (true)
    {
      paramJsonGenerator.writeRaw('}');
      return;
      paramJsonGenerator.writeRaw(' ');
    }
  }

  public void writeObjectEntrySeparator(JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeRaw(',');
    this._objectIndenter.writeIndentation(paramJsonGenerator, this._nesting);
  }

  public void writeObjectFieldValueSeparator(JsonGenerator paramJsonGenerator)
  {
    if (this._spacesInObjectEntries)
    {
      paramJsonGenerator.writeRaw(" : ");
      return;
    }
    paramJsonGenerator.writeRaw(':');
  }

  public void writeRootValueSeparator(JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeRaw(' ');
  }

  public void writeStartArray(JsonGenerator paramJsonGenerator)
  {
    if (!this._arrayIndenter.isInline())
      this._nesting = (1 + this._nesting);
    paramJsonGenerator.writeRaw('[');
  }

  public void writeStartObject(JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeRaw('{');
    if (!this._objectIndenter.isInline())
      this._nesting = (1 + this._nesting);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.DefaultPrettyPrinter
 * JD-Core Version:    0.6.2
 */