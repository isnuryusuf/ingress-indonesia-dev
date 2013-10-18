package com.nianticproject.ingress.gameentity.components.portal;

import java.util.Iterator;

final class d
  implements Iterator<Integer>
{
  private e b = new e(this.a);

  private d(SimpleResonatorArray paramSimpleResonatorArray)
  {
  }

  public final boolean hasNext()
  {
    return this.b.hasNext();
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.d
 * JD-Core Version:    0.6.2
 */