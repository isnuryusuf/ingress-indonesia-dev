package org.codehaus.jackson.map.annotate;

public enum JsonSerialize$Inclusion
{
  static
  {
    NON_DEFAULT = new Inclusion("NON_DEFAULT", 2);
    NON_EMPTY = new Inclusion("NON_EMPTY", 3);
    Inclusion[] arrayOfInclusion = new Inclusion[4];
    arrayOfInclusion[0] = ALWAYS;
    arrayOfInclusion[1] = NON_NULL;
    arrayOfInclusion[2] = NON_DEFAULT;
    arrayOfInclusion[3] = NON_EMPTY;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.annotate.JsonSerialize.Inclusion
 * JD-Core Version:    0.6.2
 */