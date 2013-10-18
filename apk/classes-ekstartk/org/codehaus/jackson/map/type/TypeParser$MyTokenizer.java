package org.codehaus.jackson.map.type;

import java.util.StringTokenizer;

final class TypeParser$MyTokenizer extends StringTokenizer
{
  protected int _index;
  protected final String _input;
  protected String _pushbackToken;

  public TypeParser$MyTokenizer(String paramString)
  {
    super(paramString, "<,>", true);
    this._input = paramString;
  }

  public final String getAllInput()
  {
    return this._input;
  }

  public final String getRemainingInput()
  {
    return this._input.substring(this._index);
  }

  public final boolean hasMoreTokens()
  {
    return (this._pushbackToken != null) || (super.hasMoreTokens());
  }

  public final String nextToken()
  {
    String str;
    if (this._pushbackToken != null)
    {
      str = this._pushbackToken;
      this._pushbackToken = null;
    }
    while (true)
    {
      this._index += str.length();
      return str;
      str = super.nextToken();
    }
  }

  public final void pushBack(String paramString)
  {
    this._pushbackToken = paramString;
    this._index -= paramString.length();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.TypeParser.MyTokenizer
 * JD-Core Version:    0.6.2
 */