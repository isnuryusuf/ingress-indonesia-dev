package com.google.a.e;

import com.google.a.a.an;
import java.security.MessageDigest;
import java.util.Arrays;

final class ao extends a
{
  private final MessageDigest a;
  private final int b;
  private boolean c;

  private ao(MessageDigest paramMessageDigest, int paramInt)
  {
    this.a = paramMessageDigest;
    this.b = paramInt;
  }

  private void b()
  {
    if (!this.c);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Cannot use Hasher after calling #hash() on it");
      return;
    }
  }

  public final u a()
  {
    this.c = true;
    if (this.b == this.a.getDigestLength())
      return v.b(this.a.digest());
    return v.b(Arrays.copyOf(this.a.digest(), this.b));
  }

  protected final void a(byte paramByte)
  {
    b();
    this.a.update(paramByte);
  }

  protected final void a(byte[] paramArrayOfByte)
  {
    b();
    this.a.update(paramArrayOfByte);
  }

  protected final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    b();
    this.a.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.ao
 * JD-Core Version:    0.6.2
 */