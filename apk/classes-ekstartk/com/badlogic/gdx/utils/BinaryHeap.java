package com.badlogic.gdx.utils;

public class BinaryHeap<T>
{
  private final boolean isMaxHeap;
  private BinaryHeap.Node<T>[] nodes;
  public int size = 0;

  public BinaryHeap()
  {
    this(16, false);
  }

  public BinaryHeap(int paramInt, boolean paramBoolean)
  {
    this.isMaxHeap = paramBoolean;
    this.nodes = new BinaryHeap.Node[paramInt];
  }

  private void down(int paramInt)
  {
    BinaryHeap.Node[] arrayOfNode = this.nodes;
    int i = this.size;
    BinaryHeap.Node localNode1 = arrayOfNode[paramInt];
    float f1 = localNode1.value;
    int j = 1 + (paramInt << 1);
    if (j < i)
    {
      int k = j + 1;
      BinaryHeap.Node localNode2 = arrayOfNode[j];
      float f2 = localNode2.value;
      float f5;
      label71: Object localObject;
      float f4;
      label78: int m;
      if (k >= i)
        if (this.isMaxHeap)
        {
          f5 = 1.4E-45F;
          localObject = null;
          f4 = f5;
          if (f2 >= f4)
            break label176;
          m = 1;
          label89: if ((m ^ this.isMaxHeap) == 0)
            break label188;
          if (f2 == f1)
            break label240;
          if (f2 <= f1)
            break label182;
        }
      label176: label182: for (int i1 = 1; ; i1 = 0)
      {
        if ((i1 ^ this.isMaxHeap) != 0)
          break label240;
        arrayOfNode[paramInt] = localNode2;
        localNode2.index = paramInt;
        paramInt = j;
        break;
        f5 = 3.4028235E+38F;
        break label71;
        BinaryHeap.Node localNode3 = arrayOfNode[k];
        float f3 = localNode3.value;
        localObject = localNode3;
        f4 = f3;
        break label78;
        m = 0;
        break label89;
      }
      label188: if (f4 != f1)
      {
        if (f4 > f1);
        for (int n = 1; ; n = 0)
        {
          if ((n ^ this.isMaxHeap) != 0)
            break label240;
          arrayOfNode[paramInt] = localObject;
          localObject.index = paramInt;
          paramInt = k;
          break;
        }
      }
    }
    label240: arrayOfNode[paramInt] = localNode1;
    localNode1.index = paramInt;
  }

  private void up(int paramInt)
  {
    BinaryHeap.Node[] arrayOfNode = this.nodes;
    BinaryHeap.Node localNode1 = arrayOfNode[paramInt];
    float f = localNode1.value;
    if (paramInt > 0)
    {
      int i = paramInt - 1 >> 1;
      BinaryHeap.Node localNode2 = arrayOfNode[i];
      if (f < localNode2.value);
      for (int j = 1; ; j = 0)
      {
        if ((j ^ this.isMaxHeap) == 0)
          break label79;
        arrayOfNode[paramInt] = localNode2;
        localNode2.index = paramInt;
        paramInt = i;
        break;
      }
    }
    label79: arrayOfNode[paramInt] = localNode1;
    localNode1.index = paramInt;
  }

  public BinaryHeap.Node add(BinaryHeap.Node paramNode)
  {
    if (this.size == this.nodes.length)
    {
      BinaryHeap.Node[] arrayOfNode = new BinaryHeap.Node[this.size << 1];
      System.arraycopy(this.nodes, 0, arrayOfNode, 0, this.size);
      this.nodes = arrayOfNode;
    }
    paramNode.index = this.size;
    this.nodes[this.size] = paramNode;
    int i = this.size;
    this.size = (i + 1);
    up(i);
    return paramNode;
  }

  public BinaryHeap.Node pop()
  {
    BinaryHeap.Node[] arrayOfNode = this.nodes;
    BinaryHeap.Node localNode = arrayOfNode[0];
    int i = -1 + this.size;
    this.size = i;
    arrayOfNode[0] = arrayOfNode[i];
    arrayOfNode[this.size] = null;
    if (this.size > 0)
      down(0);
    return localNode;
  }

  public void setValue(BinaryHeap.Node paramNode, float paramFloat)
  {
    float f = paramNode.value;
    paramNode.value = paramFloat;
    if (paramFloat < f);
    for (int i = 1; (i ^ this.isMaxHeap) != 0; i = 0)
    {
      up(paramNode.index);
      return;
    }
    down(paramNode.index);
  }

  public String toString()
  {
    if (this.size == 0)
      return "[]";
    BinaryHeap.Node[] arrayOfNode = this.nodes;
    StringBuilder localStringBuilder = new StringBuilder(32);
    localStringBuilder.append('[');
    localStringBuilder.append(arrayOfNode[0]);
    for (int i = 1; i < this.size; i++)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(arrayOfNode[i]);
    }
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.BinaryHeap
 * JD-Core Version:    0.6.2
 */