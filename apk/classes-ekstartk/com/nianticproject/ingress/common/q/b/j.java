package com.nianticproject.ingress.common.q.b;

import java.io.DataInput;
import java.io.DataOutput;

final class j
  implements e
{
  private long a = 0L;

  public final void a(DataInput paramDataInput)
  {
    paramDataInput.readUnsignedByte();
    this.a = paramDataInput.readLong();
  }

  public final void a(DataOutput paramDataOutput)
  {
    paramDataOutput.writeByte(15);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.j
 * JD-Core Version:    0.6.2
 */