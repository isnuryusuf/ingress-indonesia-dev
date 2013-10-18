package com.badlogic.gdx.utils;

import java.lang.reflect.Field;

class Json$FieldMetadata
{
  public Class elementType;
  public Field field;

  public Json$FieldMetadata(Field paramField)
  {
    this.field = paramField;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.Json.FieldMetadata
 * JD-Core Version:    0.6.2
 */