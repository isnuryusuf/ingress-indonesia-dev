package com.google.a.e;

import com.google.a.a.an;
import java.util.zip.Checksum;

final class i extends a
{
  private final Checksum b;

  private i(h paramh, Checksum paramChecksum)
  {
    this.b = ((Checksum)an.a(paramChecksum));
  }

  public final u a()
  {
    long l = this.b.getValue();
    if (h.a(this.a) == 32)
      return v.a((int)l);
    return v.a(l);
  }

  protected final void a(byte paramByte)
  {
    this.b.update(paramByte);
  }

  protected final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.b.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.i
 * JD-Core Version:    0.6.2
 */