package org.codehaus.jackson.annotate;

public enum JsonTypeInfo$Id
{
  private final String _defaultPropertyName;

  static
  {
    CLASS = new Id("CLASS", 1, "@class");
    MINIMAL_CLASS = new Id("MINIMAL_CLASS", 2, "@c");
    NAME = new Id("NAME", 3, "@type");
    CUSTOM = new Id("CUSTOM", 4, null);
    Id[] arrayOfId = new Id[5];
    arrayOfId[0] = NONE;
    arrayOfId[1] = CLASS;
    arrayOfId[2] = MINIMAL_CLASS;
    arrayOfId[3] = NAME;
    arrayOfId[4] = CUSTOM;
  }

  private JsonTypeInfo$Id(String paramString)
  {
    this._defaultPropertyName = paramString;
  }

  public final String getDefaultPropertyName()
  {
    return this._defaultPropertyName;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.annotate.JsonTypeInfo.Id
 * JD-Core Version:    0.6.2
 */