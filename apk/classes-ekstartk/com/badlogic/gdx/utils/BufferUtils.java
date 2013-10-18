package com.badlogic.gdx.utils;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

public class BufferUtils
{
  static int allocatedUnsafe = 0;
  static Array<ByteBuffer> unsafeBuffers = new Array();

  private static int bytesToElements(Buffer paramBuffer, int paramInt)
  {
    if ((paramBuffer instanceof ByteBuffer))
      return paramInt;
    if ((paramBuffer instanceof ShortBuffer))
      return paramInt >>> 1;
    if ((paramBuffer instanceof CharBuffer))
      return paramInt >>> 1;
    if ((paramBuffer instanceof IntBuffer))
      return paramInt >>> 2;
    if ((paramBuffer instanceof LongBuffer))
      return paramInt >>> 3;
    if ((paramBuffer instanceof FloatBuffer))
      return paramInt >>> 2;
    if ((paramBuffer instanceof DoubleBuffer))
      return paramInt >>> 3;
    throw new GdxRuntimeException("Can't copy to a " + paramBuffer.getClass().getName() + " instance");
  }

  public static native void clear(ByteBuffer paramByteBuffer, int paramInt);

  public static void copy(Buffer paramBuffer1, Buffer paramBuffer2, int paramInt)
  {
    int i = elementsToBytes(paramBuffer1, paramInt);
    copyJni(paramBuffer1, positionInBytes(paramBuffer1), paramBuffer2, positionInBytes(paramBuffer2), i);
    paramBuffer2.limit(paramBuffer2.position() + bytesToElements(paramBuffer2, i));
  }

  public static void copy(byte[] paramArrayOfByte, int paramInt1, Buffer paramBuffer, int paramInt2)
  {
    copyJni(paramArrayOfByte, paramInt1, paramBuffer, positionInBytes(paramBuffer), paramInt2);
    paramBuffer.limit(paramBuffer.position() + bytesToElements(paramBuffer, paramInt2));
  }

  public static void copy(char[] paramArrayOfChar, int paramInt1, Buffer paramBuffer, int paramInt2)
  {
    copyJni(paramArrayOfChar, paramInt1 << 1, paramBuffer, positionInBytes(paramBuffer), paramInt2 << 1);
    paramBuffer.limit(paramBuffer.position() + bytesToElements(paramBuffer, paramInt2 << 1));
  }

  public static void copy(double[] paramArrayOfDouble, int paramInt1, Buffer paramBuffer, int paramInt2)
  {
    copyJni(paramArrayOfDouble, paramInt1 << 3, paramBuffer, positionInBytes(paramBuffer), paramInt2 << 3);
    paramBuffer.limit(paramBuffer.position() + bytesToElements(paramBuffer, paramInt2 << 3));
  }

  public static void copy(float[] paramArrayOfFloat, int paramInt1, Buffer paramBuffer, int paramInt2)
  {
    copyJni(paramArrayOfFloat, paramInt1 << 2, paramBuffer, positionInBytes(paramBuffer), paramInt2 << 2);
    paramBuffer.limit(paramBuffer.position() + bytesToElements(paramBuffer, paramInt2 << 2));
  }

  public static void copy(float[] paramArrayOfFloat, Buffer paramBuffer, int paramInt1, int paramInt2)
  {
    copyJni(paramArrayOfFloat, paramBuffer, paramInt1, paramInt2);
    paramBuffer.position(0);
    if ((paramBuffer instanceof ByteBuffer))
      paramBuffer.limit(paramInt1 << 2);
    while (!(paramBuffer instanceof FloatBuffer))
      return;
    paramBuffer.limit(paramInt1);
  }

  public static void copy(int[] paramArrayOfInt, int paramInt1, Buffer paramBuffer, int paramInt2)
  {
    copyJni(paramArrayOfInt, paramInt1 << 2, paramBuffer, positionInBytes(paramBuffer), paramInt2 << 2);
    paramBuffer.limit(paramBuffer.position() + bytesToElements(paramBuffer, paramInt2 << 2));
  }

  public static void copy(long[] paramArrayOfLong, int paramInt1, Buffer paramBuffer, int paramInt2)
  {
    copyJni(paramArrayOfLong, paramInt1 << 3, paramBuffer, positionInBytes(paramBuffer), paramInt2 << 3);
    paramBuffer.limit(paramBuffer.position() + bytesToElements(paramBuffer, paramInt2 << 3));
  }

  public static void copy(short[] paramArrayOfShort, int paramInt1, Buffer paramBuffer, int paramInt2)
  {
    copyJni(paramArrayOfShort, paramInt1 << 1, paramBuffer, positionInBytes(paramBuffer), paramInt2 << 1);
    paramBuffer.limit(paramBuffer.position() + bytesToElements(paramBuffer, paramInt2 << 1));
  }

  private static native void copyJni(Buffer paramBuffer1, int paramInt1, Buffer paramBuffer2, int paramInt2, int paramInt3);

  private static native void copyJni(byte[] paramArrayOfByte, int paramInt1, Buffer paramBuffer, int paramInt2, int paramInt3);

  private static native void copyJni(char[] paramArrayOfChar, int paramInt1, Buffer paramBuffer, int paramInt2, int paramInt3);

  private static native void copyJni(double[] paramArrayOfDouble, int paramInt1, Buffer paramBuffer, int paramInt2, int paramInt3);

  private static native void copyJni(float[] paramArrayOfFloat, int paramInt1, Buffer paramBuffer, int paramInt2, int paramInt3);

  private static native void copyJni(float[] paramArrayOfFloat, Buffer paramBuffer, int paramInt1, int paramInt2);

  private static native void copyJni(int[] paramArrayOfInt, int paramInt1, Buffer paramBuffer, int paramInt2, int paramInt3);

  private static native void copyJni(long[] paramArrayOfLong, int paramInt1, Buffer paramBuffer, int paramInt2, int paramInt3);

  private static native void copyJni(short[] paramArrayOfShort, int paramInt1, Buffer paramBuffer, int paramInt2, int paramInt3);

  public static void disposeUnsafeByteBuffer(ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.capacity();
    synchronized (unsafeBuffers)
    {
      if (!unsafeBuffers.removeValue(paramByteBuffer, true))
        throw new IllegalArgumentException("buffer not allocated with newUnsafeByteBuffer or already disposed");
    }
    allocatedUnsafe -= i;
    freeMemory(paramByteBuffer);
  }

  private static int elementsToBytes(Buffer paramBuffer, int paramInt)
  {
    if ((paramBuffer instanceof ByteBuffer))
      return paramInt;
    if ((paramBuffer instanceof ShortBuffer))
      return paramInt << 1;
    if ((paramBuffer instanceof CharBuffer))
      return paramInt << 1;
    if ((paramBuffer instanceof IntBuffer))
      return paramInt << 2;
    if ((paramBuffer instanceof LongBuffer))
      return paramInt << 3;
    if ((paramBuffer instanceof FloatBuffer))
      return paramInt << 2;
    if ((paramBuffer instanceof DoubleBuffer))
      return paramInt << 3;
    throw new GdxRuntimeException("Can't copy to a " + paramBuffer.getClass().getName() + " instance");
  }

  private static native void freeMemory(ByteBuffer paramByteBuffer);

  public static int getAllocatedBytesUnsafe()
  {
    return allocatedUnsafe;
  }

  public static ByteBuffer newByteBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramInt);
    localByteBuffer.order(ByteOrder.nativeOrder());
    return localByteBuffer;
  }

  public static CharBuffer newCharBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramInt * 2);
    localByteBuffer.order(ByteOrder.nativeOrder());
    return localByteBuffer.asCharBuffer();
  }

  private static native ByteBuffer newDisposableByteBuffer(int paramInt);

  public static DoubleBuffer newDoubleBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramInt * 8);
    localByteBuffer.order(ByteOrder.nativeOrder());
    return localByteBuffer.asDoubleBuffer();
  }

  public static FloatBuffer newFloatBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramInt * 4);
    localByteBuffer.order(ByteOrder.nativeOrder());
    return localByteBuffer.asFloatBuffer();
  }

  public static IntBuffer newIntBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramInt * 4);
    localByteBuffer.order(ByteOrder.nativeOrder());
    return localByteBuffer.asIntBuffer();
  }

  public static LongBuffer newLongBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramInt * 8);
    localByteBuffer.order(ByteOrder.nativeOrder());
    return localByteBuffer.asLongBuffer();
  }

  public static ShortBuffer newShortBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocateDirect(paramInt * 2);
    localByteBuffer.order(ByteOrder.nativeOrder());
    return localByteBuffer.asShortBuffer();
  }

  public static ByteBuffer newUnsafeByteBuffer(int paramInt)
  {
    ByteBuffer localByteBuffer = newDisposableByteBuffer(paramInt);
    localByteBuffer.order(ByteOrder.nativeOrder());
    allocatedUnsafe = paramInt + allocatedUnsafe;
    synchronized (unsafeBuffers)
    {
      unsafeBuffers.add(localByteBuffer);
      return localByteBuffer;
    }
  }

  private static int positionInBytes(Buffer paramBuffer)
  {
    if ((paramBuffer instanceof ByteBuffer))
      return paramBuffer.position();
    if ((paramBuffer instanceof ShortBuffer))
      return paramBuffer.position() << 1;
    if ((paramBuffer instanceof CharBuffer))
      return paramBuffer.position() << 1;
    if ((paramBuffer instanceof IntBuffer))
      return paramBuffer.position() << 2;
    if ((paramBuffer instanceof LongBuffer))
      return paramBuffer.position() << 3;
    if ((paramBuffer instanceof FloatBuffer))
      return paramBuffer.position() << 2;
    if ((paramBuffer instanceof DoubleBuffer))
      return paramBuffer.position() << 3;
    throw new GdxRuntimeException("Can't copy to a " + paramBuffer.getClass().getName() + " instance");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.BufferUtils
 * JD-Core Version:    0.6.2
 */