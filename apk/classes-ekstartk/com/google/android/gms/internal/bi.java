package com.google.android.gms.internal;

public final class bi
{
  public static byte a(Boolean paramBoolean)
  {
    if (paramBoolean != null)
    {
      if (paramBoolean.booleanValue())
        return 1;
      return 0;
    }
    return -1;
  }

  public static Boolean a(byte paramByte)
  {
    switch (paramByte)
    {
    default:
      return null;
    case 1:
      return Boolean.TRUE;
    case 0:
    }
    return Boolean.FALSE;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bi
 * JD-Core Version:    0.6.2
 */