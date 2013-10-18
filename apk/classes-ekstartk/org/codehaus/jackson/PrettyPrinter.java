package org.codehaus.jackson;

public abstract interface PrettyPrinter
{
  public abstract void beforeArrayValues(JsonGenerator paramJsonGenerator);

  public abstract void beforeObjectEntries(JsonGenerator paramJsonGenerator);

  public abstract void writeArrayValueSeparator(JsonGenerator paramJsonGenerator);

  public abstract void writeEndArray(JsonGenerator paramJsonGenerator, int paramInt);

  public abstract void writeEndObject(JsonGenerator paramJsonGenerator, int paramInt);

  public abstract void writeObjectEntrySeparator(JsonGenerator paramJsonGenerator);

  public abstract void writeObjectFieldValueSeparator(JsonGenerator paramJsonGenerator);

  public abstract void writeRootValueSeparator(JsonGenerator paramJsonGenerator);

  public abstract void writeStartArray(JsonGenerator paramJsonGenerator);

  public abstract void writeStartObject(JsonGenerator paramJsonGenerator);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.PrettyPrinter
 * JD-Core Version:    0.6.2
 */