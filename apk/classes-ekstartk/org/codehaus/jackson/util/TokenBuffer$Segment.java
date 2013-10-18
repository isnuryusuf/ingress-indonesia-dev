package org.codehaus.jackson.util;

import org.codehaus.jackson.JsonToken;

public final class TokenBuffer$Segment
{
  private static final JsonToken[] TOKEN_TYPES_BY_INDEX = new JsonToken[16];
  protected Segment _next;
  protected long _tokenTypes;
  protected final Object[] _tokens = new Object[16];

  static
  {
    JsonToken[] arrayOfJsonToken = JsonToken.values();
    System.arraycopy(arrayOfJsonToken, 1, TOKEN_TYPES_BY_INDEX, 1, Math.min(15, -1 + arrayOfJsonToken.length));
  }

  public final Segment append(int paramInt, JsonToken paramJsonToken)
  {
    if (paramInt < 16)
    {
      set(paramInt, paramJsonToken);
      return null;
    }
    this._next = new Segment();
    this._next.set(0, paramJsonToken);
    return this._next;
  }

  public final Segment append(int paramInt, JsonToken paramJsonToken, Object paramObject)
  {
    if (paramInt < 16)
    {
      set(paramInt, paramJsonToken, paramObject);
      return null;
    }
    this._next = new Segment();
    this._next.set(0, paramJsonToken, paramObject);
    return this._next;
  }

  public final Object get(int paramInt)
  {
    return this._tokens[paramInt];
  }

  public final Segment next()
  {
    return this._next;
  }

  public final void set(int paramInt, JsonToken paramJsonToken)
  {
    long l = paramJsonToken.ordinal();
    if (paramInt > 0)
      l <<= paramInt << 2;
    this._tokenTypes = (l | this._tokenTypes);
  }

  public final void set(int paramInt, JsonToken paramJsonToken, Object paramObject)
  {
    this._tokens[paramInt] = paramObject;
    long l = paramJsonToken.ordinal();
    if (paramInt > 0)
      l <<= paramInt << 2;
    this._tokenTypes = (l | this._tokenTypes);
  }

  public final JsonToken type(int paramInt)
  {
    long l = this._tokenTypes;
    if (paramInt > 0)
      l >>= paramInt << 2;
    int i = 0xF & (int)l;
    return TOKEN_TYPES_BY_INDEX[i];
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.TokenBuffer.Segment
 * JD-Core Version:    0.6.2
 */