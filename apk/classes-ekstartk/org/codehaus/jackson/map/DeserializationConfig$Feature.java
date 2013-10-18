package org.codehaus.jackson.map;

public enum DeserializationConfig$Feature
  implements MapperConfig.ConfigFeature
{
  final boolean _defaultState;

  static
  {
    AUTO_DETECT_SETTERS = new Feature("AUTO_DETECT_SETTERS", 1, true);
    AUTO_DETECT_CREATORS = new Feature("AUTO_DETECT_CREATORS", 2, true);
    AUTO_DETECT_FIELDS = new Feature("AUTO_DETECT_FIELDS", 3, true);
    USE_GETTERS_AS_SETTERS = new Feature("USE_GETTERS_AS_SETTERS", 4, true);
    CAN_OVERRIDE_ACCESS_MODIFIERS = new Feature("CAN_OVERRIDE_ACCESS_MODIFIERS", 5, true);
    USE_BIG_DECIMAL_FOR_FLOATS = new Feature("USE_BIG_DECIMAL_FOR_FLOATS", 6, false);
    USE_BIG_INTEGER_FOR_INTS = new Feature("USE_BIG_INTEGER_FOR_INTS", 7, false);
    USE_JAVA_ARRAY_FOR_JSON_ARRAY = new Feature("USE_JAVA_ARRAY_FOR_JSON_ARRAY", 8, false);
    READ_ENUMS_USING_TO_STRING = new Feature("READ_ENUMS_USING_TO_STRING", 9, false);
    FAIL_ON_UNKNOWN_PROPERTIES = new Feature("FAIL_ON_UNKNOWN_PROPERTIES", 10, true);
    FAIL_ON_NULL_FOR_PRIMITIVES = new Feature("FAIL_ON_NULL_FOR_PRIMITIVES", 11, false);
    FAIL_ON_NUMBERS_FOR_ENUMS = new Feature("FAIL_ON_NUMBERS_FOR_ENUMS", 12, false);
    WRAP_EXCEPTIONS = new Feature("WRAP_EXCEPTIONS", 13, true);
    ACCEPT_SINGLE_VALUE_AS_ARRAY = new Feature("ACCEPT_SINGLE_VALUE_AS_ARRAY", 14, false);
    UNWRAP_ROOT_VALUE = new Feature("UNWRAP_ROOT_VALUE", 15, false);
    ACCEPT_EMPTY_STRING_AS_NULL_OBJECT = new Feature("ACCEPT_EMPTY_STRING_AS_NULL_OBJECT", 16, false);
    Feature[] arrayOfFeature = new Feature[17];
    arrayOfFeature[0] = USE_ANNOTATIONS;
    arrayOfFeature[1] = AUTO_DETECT_SETTERS;
    arrayOfFeature[2] = AUTO_DETECT_CREATORS;
    arrayOfFeature[3] = AUTO_DETECT_FIELDS;
    arrayOfFeature[4] = USE_GETTERS_AS_SETTERS;
    arrayOfFeature[5] = CAN_OVERRIDE_ACCESS_MODIFIERS;
    arrayOfFeature[6] = USE_BIG_DECIMAL_FOR_FLOATS;
    arrayOfFeature[7] = USE_BIG_INTEGER_FOR_INTS;
    arrayOfFeature[8] = USE_JAVA_ARRAY_FOR_JSON_ARRAY;
    arrayOfFeature[9] = READ_ENUMS_USING_TO_STRING;
    arrayOfFeature[10] = FAIL_ON_UNKNOWN_PROPERTIES;
    arrayOfFeature[11] = FAIL_ON_NULL_FOR_PRIMITIVES;
    arrayOfFeature[12] = FAIL_ON_NUMBERS_FOR_ENUMS;
    arrayOfFeature[13] = WRAP_EXCEPTIONS;
    arrayOfFeature[14] = ACCEPT_SINGLE_VALUE_AS_ARRAY;
    arrayOfFeature[15] = UNWRAP_ROOT_VALUE;
    arrayOfFeature[16] = ACCEPT_EMPTY_STRING_AS_NULL_OBJECT;
  }

  private DeserializationConfig$Feature(boolean paramBoolean)
  {
    this._defaultState = paramBoolean;
  }

  public final boolean enabledByDefault()
  {
    return this._defaultState;
  }

  public final int getMask()
  {
    return 1 << ordinal();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.DeserializationConfig.Feature
 * JD-Core Version:    0.6.2
 */