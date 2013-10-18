package org.codehaus.jackson;

public final class Base64Variants
{
  public static final Base64Variant MIME = new Base64Variant("MIME", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", true, '=', 76);
  public static final Base64Variant MIME_NO_LINEFEEDS = new Base64Variant(MIME, "MIME-NO-LINEFEEDS", 2147483647);
  public static final Base64Variant MODIFIED_FOR_URL = new Base64Variant("MODIFIED-FOR-URL", localStringBuffer.toString(), false, '\000', 2147483647);
  public static final Base64Variant PEM = new Base64Variant(MIME, "PEM", true, '=', 64);

  static
  {
    StringBuffer localStringBuffer = new StringBuffer("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    localStringBuffer.setCharAt(localStringBuffer.indexOf("+"), '-');
    localStringBuffer.setCharAt(localStringBuffer.indexOf("/"), '_');
  }

  public static Base64Variant getDefaultVariant()
  {
    return MIME_NO_LINEFEEDS;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.Base64Variants
 * JD-Core Version:    0.6.2
 */