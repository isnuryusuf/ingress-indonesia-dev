package org.codehaus.jackson.annotate;

public enum JsonTypeInfo$As
{
  static
  {
    WRAPPER_ARRAY = new As("WRAPPER_ARRAY", 2);
    EXTERNAL_PROPERTY = new As("EXTERNAL_PROPERTY", 3);
    As[] arrayOfAs = new As[4];
    arrayOfAs[0] = PROPERTY;
    arrayOfAs[1] = WRAPPER_OBJECT;
    arrayOfAs[2] = WRAPPER_ARRAY;
    arrayOfAs[3] = EXTERNAL_PROPERTY;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.annotate.JsonTypeInfo.As
 * JD-Core Version:    0.6.2
 */