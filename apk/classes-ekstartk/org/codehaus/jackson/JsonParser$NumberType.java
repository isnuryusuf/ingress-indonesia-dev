package org.codehaus.jackson;

public enum JsonParser$NumberType
{
  static
  {
    BIG_INTEGER = new NumberType("BIG_INTEGER", 2);
    FLOAT = new NumberType("FLOAT", 3);
    DOUBLE = new NumberType("DOUBLE", 4);
    BIG_DECIMAL = new NumberType("BIG_DECIMAL", 5);
    NumberType[] arrayOfNumberType = new NumberType[6];
    arrayOfNumberType[0] = INT;
    arrayOfNumberType[1] = LONG;
    arrayOfNumberType[2] = BIG_INTEGER;
    arrayOfNumberType[3] = FLOAT;
    arrayOfNumberType[4] = DOUBLE;
    arrayOfNumberType[5] = BIG_DECIMAL;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonParser.NumberType
 * JD-Core Version:    0.6.2
 */