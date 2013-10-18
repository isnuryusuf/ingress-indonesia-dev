package com.nianticproject.ingress.nativeentry;

public class Native
{
  static
  {
    System.loadLibrary("nemesis-android-jni");
  }

  public static native void e(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.nativeentry.Native
 * JD-Core Version:    0.6.2
 */