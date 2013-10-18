package com.nianticproject.ingress.gameentity.components.portal;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class e
  implements Iterator<ResonatorV2>
{
  private int b = 0;

  public e(SimpleResonatorArray paramSimpleResonatorArray)
  {
    b();
  }

  private void b()
  {
    while ((this.b < SimpleResonatorArray.access$100(this.a).length) && (SimpleResonatorArray.access$100(this.a)[this.b] == null))
      this.b = (1 + this.b);
  }

  public final ResonatorV2 a()
  {
    if (!hasNext())
      throw new NoSuchElementException();
    ResonatorV2[] arrayOfResonatorV2 = SimpleResonatorArray.access$100(this.a);
    int i = this.b;
    this.b = (i + 1);
    ResonatorV2 localResonatorV2 = arrayOfResonatorV2[i];
    b();
    return localResonatorV2;
  }

  public final boolean hasNext()
  {
    return this.b != SimpleResonatorArray.access$100(this.a).length;
  }

  public final void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.portal.e
 * JD-Core Version:    0.6.2
 */