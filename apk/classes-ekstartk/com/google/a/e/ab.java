package com.google.a.e;

public final class ab
{
  private static final int a = i1;
  private static final z b = new ar(i1);
  private static final z c = new ap(a);
  private static final z d = new ar(0);
  private static final z e = new ap(0);
  private static final z f = new au();
  private static final z g = new an("MD5", "Hashing.md5()");
  private static final z h = new an("SHA-1", "Hashing.sha1()");
  private static final z i = new an("SHA-256", "Hashing.sha256()");
  private static final z j = new an("SHA-512", "Hashing.sha512()");
  private static final z k = new q();
  private static final z l = new o();
  private static final z m = a(ac.a, "Hashing.crc32()");
  private static final z n = a(ac.b, "Hashing.adler32()");
  private static final z o = new j();

  static
  {
    int i1 = (int)System.currentTimeMillis();
  }

  public static z a()
  {
    return g;
  }

  private static z a(ac paramac, String paramString)
  {
    return new h(paramac, ac.a(paramac), paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.ab
 * JD-Core Version:    0.6.2
 */