package org.codehaus.jackson.impl;

import org.codehaus.jackson.JsonGenerator;

public abstract interface Indenter
{
  public abstract boolean isInline();

  public abstract void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.impl.Indenter
 * JD-Core Version:    0.6.2
 */