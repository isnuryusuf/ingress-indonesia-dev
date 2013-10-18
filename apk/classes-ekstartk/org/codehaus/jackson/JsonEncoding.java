package org.codehaus.jackson;

public enum JsonEncoding
{
  protected final boolean _bigEndian;
  protected final String _javaName;

  static
  {
    UTF16_BE = new JsonEncoding("UTF16_BE", 1, "UTF-16BE", true);
    UTF16_LE = new JsonEncoding("UTF16_LE", 2, "UTF-16LE", false);
    UTF32_BE = new JsonEncoding("UTF32_BE", 3, "UTF-32BE", true);
    UTF32_LE = new JsonEncoding("UTF32_LE", 4, "UTF-32LE", false);
    JsonEncoding[] arrayOfJsonEncoding = new JsonEncoding[5];
    arrayOfJsonEncoding[0] = UTF8;
    arrayOfJsonEncoding[1] = UTF16_BE;
    arrayOfJsonEncoding[2] = UTF16_LE;
    arrayOfJsonEncoding[3] = UTF32_BE;
    arrayOfJsonEncoding[4] = UTF32_LE;
  }

  private JsonEncoding(String paramString, boolean paramBoolean)
  {
    this._javaName = paramString;
    this._bigEndian = paramBoolean;
  }

  public final String getJavaName()
  {
    return this._javaName;
  }

  public final boolean isBigEndian()
  {
    return this._bigEndian;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonEncoding
 * JD-Core Version:    0.6.2
 */