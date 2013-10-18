package org.codehaus.jackson.map;

public enum SerializationConfig$Feature
  implements MapperConfig.ConfigFeature
{
  final boolean _defaultState;

  static
  {
    AUTO_DETECT_GETTERS = new Feature("AUTO_DETECT_GETTERS", 1, true);
    AUTO_DETECT_IS_GETTERS = new Feature("AUTO_DETECT_IS_GETTERS", 2, true);
    AUTO_DETECT_FIELDS = new Feature("AUTO_DETECT_FIELDS", 3, true);
    CAN_OVERRIDE_ACCESS_MODIFIERS = new Feature("CAN_OVERRIDE_ACCESS_MODIFIERS", 4, true);
    REQUIRE_SETTERS_FOR_GETTERS = new Feature("REQUIRE_SETTERS_FOR_GETTERS", 5, false);
    WRITE_NULL_PROPERTIES = new Feature("WRITE_NULL_PROPERTIES", 6, true);
    USE_STATIC_TYPING = new Feature("USE_STATIC_TYPING", 7, false);
    DEFAULT_VIEW_INCLUSION = new Feature("DEFAULT_VIEW_INCLUSION", 8, true);
    WRAP_ROOT_VALUE = new Feature("WRAP_ROOT_VALUE", 9, false);
    INDENT_OUTPUT = new Feature("INDENT_OUTPUT", 10, false);
    SORT_PROPERTIES_ALPHABETICALLY = new Feature("SORT_PROPERTIES_ALPHABETICALLY", 11, false);
    FAIL_ON_EMPTY_BEANS = new Feature("FAIL_ON_EMPTY_BEANS", 12, true);
    WRAP_EXCEPTIONS = new Feature("WRAP_EXCEPTIONS", 13, true);
    CLOSE_CLOSEABLE = new Feature("CLOSE_CLOSEABLE", 14, false);
    FLUSH_AFTER_WRITE_VALUE = new Feature("FLUSH_AFTER_WRITE_VALUE", 15, true);
    WRITE_DATES_AS_TIMESTAMPS = new Feature("WRITE_DATES_AS_TIMESTAMPS", 16, true);
    WRITE_DATE_KEYS_AS_TIMESTAMPS = new Feature("WRITE_DATE_KEYS_AS_TIMESTAMPS", 17, false);
    WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS = new Feature("WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS", 18, false);
    WRITE_ENUMS_USING_TO_STRING = new Feature("WRITE_ENUMS_USING_TO_STRING", 19, false);
    WRITE_ENUMS_USING_INDEX = new Feature("WRITE_ENUMS_USING_INDEX", 20, false);
    WRITE_NULL_MAP_VALUES = new Feature("WRITE_NULL_MAP_VALUES", 21, true);
    WRITE_EMPTY_JSON_ARRAYS = new Feature("WRITE_EMPTY_JSON_ARRAYS", 22, true);
    Feature[] arrayOfFeature = new Feature[23];
    arrayOfFeature[0] = USE_ANNOTATIONS;
    arrayOfFeature[1] = AUTO_DETECT_GETTERS;
    arrayOfFeature[2] = AUTO_DETECT_IS_GETTERS;
    arrayOfFeature[3] = AUTO_DETECT_FIELDS;
    arrayOfFeature[4] = CAN_OVERRIDE_ACCESS_MODIFIERS;
    arrayOfFeature[5] = REQUIRE_SETTERS_FOR_GETTERS;
    arrayOfFeature[6] = WRITE_NULL_PROPERTIES;
    arrayOfFeature[7] = USE_STATIC_TYPING;
    arrayOfFeature[8] = DEFAULT_VIEW_INCLUSION;
    arrayOfFeature[9] = WRAP_ROOT_VALUE;
    arrayOfFeature[10] = INDENT_OUTPUT;
    arrayOfFeature[11] = SORT_PROPERTIES_ALPHABETICALLY;
    arrayOfFeature[12] = FAIL_ON_EMPTY_BEANS;
    arrayOfFeature[13] = WRAP_EXCEPTIONS;
    arrayOfFeature[14] = CLOSE_CLOSEABLE;
    arrayOfFeature[15] = FLUSH_AFTER_WRITE_VALUE;
    arrayOfFeature[16] = WRITE_DATES_AS_TIMESTAMPS;
    arrayOfFeature[17] = WRITE_DATE_KEYS_AS_TIMESTAMPS;
    arrayOfFeature[18] = WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS;
    arrayOfFeature[19] = WRITE_ENUMS_USING_TO_STRING;
    arrayOfFeature[20] = WRITE_ENUMS_USING_INDEX;
    arrayOfFeature[21] = WRITE_NULL_MAP_VALUES;
    arrayOfFeature[22] = WRITE_EMPTY_JSON_ARRAYS;
  }

  private SerializationConfig$Feature(boolean paramBoolean)
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
 * Qualified Name:     org.codehaus.jackson.map.SerializationConfig.Feature
 * JD-Core Version:    0.6.2
 */