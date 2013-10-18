package com.nianticproject.ingress.common.q.b;

import com.google.c.a.a.b.a;
import com.google.i.a.a.a.d;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;

public final class h
  implements e
{
  private final a a = new a(d.a);
  private String b;

  public h(o paramo)
  {
    if (paramo.i() != null)
      this.a.a(1, paramo.i());
    if (paramo.j())
      this.a.a(4, true);
    if (paramo.d() != null)
      this.a.a(5, paramo.d());
    if (paramo.b() != null)
      this.a.a(18, paramo.b());
  }

  public final String a()
  {
    return this.b;
  }

  public final void a(DataInput paramDataInput)
  {
    if (paramDataInput.readUnsignedByte() != 62)
      throw new IOException();
    a locala = com.google.c.a.a.b.e.a(d.b, paramDataInput);
    if (locala.c(1))
      this.b = locala.c();
  }

  public final void a(DataOutput paramDataOutput)
  {
    paramDataOutput.writeByte(62);
    com.google.c.a.a.b.e.a(paramDataOutput, this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.h
 * JD-Core Version:    0.6.2
 */