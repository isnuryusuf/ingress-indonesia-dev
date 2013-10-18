package org.codehaus.jackson;

public enum JsonParser$Feature
{
  final boolean _defaultState;

  static
  {
    ALLOW_COMMENTS = new Feature("ALLOW_COMMENTS", 1, false);
    ALLOW_UNQUOTED_FIELD_NAMES = new Feature("ALLOW_UNQUOTED_FIELD_NAMES", 2, false);
    ALLOW_SINGLE_QUOTES = new Feature("ALLOW_SINGLE_QUOTES", 3, false);
    ALLOW_UNQUOTED_CONTROL_CHARS = new Feature("ALLOW_UNQUOTED_CONTROL_CHARS", 4, false);
    ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER = new Feature("ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER", 5, false);
    ALLOW_NUMERIC_LEADING_ZEROS = new Feature("ALLOW_NUMERIC_LEADING_ZEROS", 6, false);
    ALLOW_NON_NUMERIC_NUMBERS = new Feature("ALLOW_NON_NUMERIC_NUMBERS", 7, false);
    INTERN_FIELD_NAMES = new Feature("INTERN_FIELD_NAMES", 8, true);
    CANONICALIZE_FIELD_NAMES = new Feature("CANONICALIZE_FIELD_NAMES", 9, true);
    Feature[] arrayOfFeature = new Feature[10];
    arrayOfFeature[0] = AUTO_CLOSE_SOURCE;
    arrayOfFeature[1] = ALLOW_COMMENTS;
    arrayOfFeature[2] = ALLOW_UNQUOTED_FIELD_NAMES;
    arrayOfFeature[3] = ALLOW_SINGLE_QUOTES;
    arrayOfFeature[4] = ALLOW_UNQUOTED_CONTROL_CHARS;
    arrayOfFeature[5] = ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER;
    arrayOfFeature[6] = ALLOW_NUMERIC_LEADING_ZEROS;
    arrayOfFeature[7] = ALLOW_NON_NUMERIC_NUMBERS;
    arrayOfFeature[8] = INTERN_FIELD_NAMES;
    arrayOfFeature[9] = CANONICALIZE_FIELD_NAMES;
  }

  private JsonParser$Feature(boolean paramBoolean)
  {
    this._defaultState = paramBoolean;
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

  public final boolean enabledIn(int paramInt)
  {
    return (paramInt & getMask()) != 0;
  }

  public final int getMask()
  {
    return 1 << ordinal();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonParser.Feature
 * JD-Core Version:    0.6.2
 */