package org.codehaus.jackson;

public abstract interface SerializableString
{
  public abstract char[] asQuotedChars();

  public abstract String getValue();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.SerializableString
 * JD-Core Version:    0.6.2
 */