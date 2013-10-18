package com.google.c.a.a.b;

import com.google.c.a.a.b;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;

public final class e
{
  public static boolean a = false;

  public static int a(c paramc, InputStream paramInputStream, a parama)
  {
    long l = a.a(paramInputStream, true);
    if (l == -1L)
      return -1;
    if ((0x7 & l) != 2L)
      throw new IOException("Message expected");
    int i = (int)(l >>> 3);
    parama.a((c)paramc.b(i));
    parama.a(paramInputStream, (int)a.a(paramInputStream, false));
    return i;
  }

  public static a a(c paramc, DataInput paramDataInput)
  {
    a locala = new a(paramc);
    InputStream localInputStream = a(paramDataInput);
    locala.a(localInputStream);
    if (localInputStream.read() != -1)
      throw new IOException();
    localInputStream.close();
    return locala;
  }

  public static InputStream a(DataInput paramDataInput)
  {
    int i = paramDataInput.readInt();
    Object localObject = new com.google.c.a.a.a((InputStream)paramDataInput, Math.abs(i));
    if (i < 0)
    {
      a = true;
      localObject = b.a((InputStream)localObject);
    }
    return localObject;
  }

  public static void a(DataOutput paramDataOutput, a parama)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    parama.a(localByteArrayOutputStream);
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    paramDataOutput.writeInt(arrayOfByte.length);
    paramDataOutput.write(arrayOfByte);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.b.e
 * JD-Core Version:    0.6.2
 */