package org.codehaus.jackson;

public enum JsonGenerator$Feature
{
  final boolean _defaultState;
  final int _mask;

  static
  {
    AUTO_CLOSE_JSON_CONTENT = new Feature("AUTO_CLOSE_JSON_CONTENT", 1, true);
    QUOTE_FIELD_NAMES = new Feature("QUOTE_FIELD_NAMES", 2, true);
    QUOTE_NON_NUMERIC_NUMBERS = new Feature("QUOTE_NON_NUMERIC_NUMBERS", 3, true);
    WRITE_NUMBERS_AS_STRINGS = new Feature("WRITE_NUMBERS_AS_STRINGS", 4, false);
    FLUSH_PASSED_TO_STREAM = new Feature("FLUSH_PASSED_TO_STREAM", 5, true);
    ESCAPE_NON_ASCII = new Feature("ESCAPE_NON_ASCII", 6, false);
    Feature[] arrayOfFeature = new Feature[7];
    arrayOfFeature[0] = AUTO_CLOSE_TARGET;
    arrayOfFeature[1] = AUTO_CLOSE_JSON_CONTENT;
    arrayOfFeature[2] = QUOTE_FIELD_NAMES;
    arrayOfFeature[3] = QUOTE_NON_NUMERIC_NUMBERS;
    arrayOfFeature[4] = WRITE_NUMBERS_AS_STRINGS;
    arrayOfFeature[5] = FLUSH_PASSED_TO_STREAM;
    arrayOfFeature[6] = ESCAPE_NON_ASCII;
  }

  private JsonGenerator$Feature(boolean paramBoolean)
  {
    this._defaultState = paramBoolean;
    this._mask = (1 << ordinal());
  }

  public static int collectDefaults()
  {
    int i = 0;
    for (Feature localFeature : values())
      if (localFeature.enabledByDefault())
        i |= localFeature.getMask();
    return i;
  }

  public final boolean enabledByDefault()
  {
    return this._defaultState;
  }

  public final int getMask()
  {
    return this._mask;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonGenerator.Feature
 * JD-Core Version:    0.6.2
 */