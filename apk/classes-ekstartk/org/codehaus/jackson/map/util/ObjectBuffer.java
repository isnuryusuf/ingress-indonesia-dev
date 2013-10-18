package org.codehaus.jackson.map.util;

import java.lang.reflect.Array;
import java.util.List;

public final class ObjectBuffer
{
  private ObjectBuffer.Node _bufferHead;
  private ObjectBuffer.Node _bufferTail;
  private int _bufferedEntryCount;
  private Object[] _freeBuffer;

  protected final void _copyTo(Object paramObject, int paramInt1, Object[] paramArrayOfObject, int paramInt2)
  {
    ObjectBuffer.Node localNode = this._bufferHead;
    int i = 0;
    while (localNode != null)
    {
      Object[] arrayOfObject = localNode.getData();
      int k = arrayOfObject.length;
      System.arraycopy(arrayOfObject, 0, paramObject, i, k);
      i += k;
      localNode = localNode.next();
    }
    System.arraycopy(paramArrayOfObject, 0, paramObject, i, paramInt2);
    int j = i + paramInt2;
    if (j != paramInt1)
      throw new IllegalStateException("Should have gotten " + paramInt1 + " entries, got " + j);
  }

  protected final void _reset()
  {
    if (this._bufferTail != null)
      this._freeBuffer = this._bufferTail.getData();
    this._bufferTail = null;
    this._bufferHead = null;
    this._bufferedEntryCount = 0;
  }

  public final Object[] appendCompletedChunk(Object[] paramArrayOfObject)
  {
    ObjectBuffer.Node localNode = new ObjectBuffer.Node(paramArrayOfObject);
    int i;
    if (this._bufferHead == null)
    {
      this._bufferTail = localNode;
      this._bufferHead = localNode;
      i = paramArrayOfObject.length;
      this._bufferedEntryCount = (i + this._bufferedEntryCount);
      if (i >= 16384)
        break label73;
    }
    label73: for (int j = i + i; ; j = i + (i >> 2))
    {
      return new Object[j];
      this._bufferTail.linkNext(localNode);
      this._bufferTail = localNode;
      break;
    }
  }

  public final void completeAndClearBuffer(Object[] paramArrayOfObject, int paramInt, List<Object> paramList)
  {
    int i;
    for (ObjectBuffer.Node localNode = this._bufferHead; ; localNode = localNode.next())
    {
      i = 0;
      if (localNode == null)
        break;
      Object[] arrayOfObject = localNode.getData();
      int j = arrayOfObject.length;
      for (int k = 0; k < j; k++)
        paramList.add(arrayOfObject[k]);
    }
    while (i < paramInt)
    {
      paramList.add(paramArrayOfObject[i]);
      i++;
    }
  }

  public final Object[] completeAndClearBuffer(Object[] paramArrayOfObject, int paramInt)
  {
    int i = paramInt + this._bufferedEntryCount;
    Object[] arrayOfObject = new Object[i];
    _copyTo(arrayOfObject, i, paramArrayOfObject, paramInt);
    return arrayOfObject;
  }

  public final <T> T[] completeAndClearBuffer(Object[] paramArrayOfObject, int paramInt, Class<T> paramClass)
  {
    int i = paramInt + this._bufferedEntryCount;
    Object[] arrayOfObject = (Object[])Array.newInstance(paramClass, i);
    _copyTo(arrayOfObject, i, paramArrayOfObject, paramInt);
    _reset();
    return arrayOfObject;
  }

  public final int initialCapacity()
  {
    if (this._freeBuffer == null)
      return 0;
    return this._freeBuffer.length;
  }

  public final Object[] resetAndStart()
  {
    _reset();
    if (this._freeBuffer == null)
      return new Object[12];
    return this._freeBuffer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.ObjectBuffer
 * JD-Core Version:    0.6.2
 */