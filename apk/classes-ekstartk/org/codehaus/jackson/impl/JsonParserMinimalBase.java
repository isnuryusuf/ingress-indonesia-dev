package org.codehaus.jackson.impl;

import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.util.ByteArrayBuilder;

public abstract class JsonParserMinimalBase extends JsonParser
{
  protected JsonParserMinimalBase()
  {
  }

  protected JsonParserMinimalBase(int paramInt)
  {
    super(paramInt);
  }

  protected static final String _getCharDesc(int paramInt)
  {
    char c = (char)paramInt;
    if (Character.isISOControl(c))
      return "(CTRL-CHAR, code " + paramInt + ")";
    if (paramInt > 255)
      return "'" + c + "' (code " + paramInt + " / 0x" + Integer.toHexString(paramInt) + ")";
    return "'" + c + "' (code " + paramInt + ")";
  }

  protected final JsonParseException _constructError(String paramString, Throwable paramThrowable)
  {
    return new JsonParseException(paramString, getCurrentLocation(), paramThrowable);
  }

  protected void _decodeBase64(String paramString, ByteArrayBuilder paramByteArrayBuilder, Base64Variant paramBase64Variant)
  {
    int i = paramString.length();
    int j = 0;
    if (j < i);
    while (true)
    {
      int k = j + 1;
      char c1 = paramString.charAt(j);
      int n;
      int i2;
      if (k < i)
      {
        if (c1 <= ' ')
          break label376;
        int m = paramBase64Variant.decodeBase64Char(c1);
        if (m < 0)
          _reportInvalidBase64(paramBase64Variant, c1, 0, null);
        if (k >= i)
          _reportBase64EOF();
        n = k + 1;
        char c2 = paramString.charAt(k);
        int i1 = paramBase64Variant.decodeBase64Char(c2);
        if (i1 < 0)
          _reportInvalidBase64(paramBase64Variant, c2, 1, null);
        i2 = i1 | m << 6;
        if (n < i)
          break label150;
        if (!paramBase64Variant.usesPadding())
          paramByteArrayBuilder.append(i2 >> 4);
      }
      else
      {
        return;
      }
      _reportBase64EOF();
      label150: int i3 = n + 1;
      char c3 = paramString.charAt(n);
      int i4 = paramBase64Variant.decodeBase64Char(c3);
      if (i4 < 0)
      {
        if (i4 != -2)
          _reportInvalidBase64(paramBase64Variant, c3, 2, null);
        if (i3 >= i)
          _reportBase64EOF();
        j = i3 + 1;
        char c5 = paramString.charAt(i3);
        if (!paramBase64Variant.usesPaddingChar(c5))
          _reportInvalidBase64(paramBase64Variant, c5, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
        paramByteArrayBuilder.append(i2 >> 4);
        break;
      }
      int i5 = i4 | i2 << 6;
      if (i3 >= i)
      {
        if (!paramBase64Variant.usesPadding())
        {
          paramByteArrayBuilder.appendTwoBytes(i5 >> 2);
          return;
        }
        _reportBase64EOF();
      }
      j = i3 + 1;
      char c4 = paramString.charAt(i3);
      int i6 = paramBase64Variant.decodeBase64Char(c4);
      if (i6 < 0)
      {
        if (i6 != -2)
          _reportInvalidBase64(paramBase64Variant, c4, 3, null);
        paramByteArrayBuilder.appendTwoBytes(i5 >> 2);
        break;
      }
      paramByteArrayBuilder.appendThreeBytes(i6 | i5 << 6);
      break;
      label376: j = k;
    }
  }

  protected abstract void _handleEOF();

  protected char _handleUnrecognizedCharacterEscape(char paramChar)
  {
    if (isEnabled(JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER));
    while ((paramChar == '\'') && (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)))
      return paramChar;
    _reportError("Unrecognized character escape " + _getCharDesc(paramChar));
    return paramChar;
  }

  protected void _reportBase64EOF()
  {
    throw _constructError("Unexpected end-of-String in base64 content");
  }

  protected final void _reportError(String paramString)
  {
    throw _constructError(paramString);
  }

  protected void _reportInvalidBase64(Base64Variant paramBase64Variant, char paramChar, int paramInt, String paramString)
  {
    String str;
    if (paramChar <= ' ')
      str = "Illegal white space character (code 0x" + Integer.toHexString(paramChar) + ") as character #" + (paramInt + 1) + " of 4-char base64 unit: can only used between units";
    while (true)
    {
      if (paramString != null)
        str = str + ": " + paramString;
      throw _constructError(str);
      if (paramBase64Variant.usesPaddingChar(paramChar))
        str = "Unexpected padding character ('" + paramBase64Variant.getPaddingChar() + "') as character #" + (paramInt + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
      else if ((!Character.isDefined(paramChar)) || (Character.isISOControl(paramChar)))
        str = "Illegal character (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
      else
        str = "Illegal character '" + paramChar + "' (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
    }
  }

  protected void _reportInvalidEOF()
  {
    _reportInvalidEOF(" in " + this._currToken);
  }

  protected void _reportInvalidEOF(String paramString)
  {
    _reportError("Unexpected end-of-input" + paramString);
  }

  protected void _reportInvalidEOFInValue()
  {
    _reportInvalidEOF(" in a value");
  }

  protected void _reportUnexpectedChar(int paramInt, String paramString)
  {
    String str = "Unexpected character (" + _getCharDesc(paramInt) + ")";
    if (paramString != null)
      str = str + ": " + paramString;
    _reportError(str);
  }

  protected final void _throwInternal()
  {
    throw new RuntimeException("Internal error: this code path should never get executed");
  }

  protected void _throwInvalidSpace(int paramInt)
  {
    int i = (char)paramInt;
    _reportError("Illegal character (" + _getCharDesc(i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
  }

  protected void _throwUnquotedSpace(int paramInt, String paramString)
  {
    if ((!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS)) || (paramInt >= 32))
    {
      int i = (char)paramInt;
      _reportError("Illegal unquoted character (" + _getCharDesc(i) + "): has to be escaped using backslash to be included in " + paramString);
    }
  }

  protected final void _wrapError(String paramString, Throwable paramThrowable)
  {
    throw _constructError(paramString, paramThrowable);
  }

  public abstract String getText();

  public abstract JsonToken nextToken();

  public JsonParser skipChildren()
  {
    if ((this._currToken != JsonToken.START_OBJECT) && (this._currToken != JsonToken.START_ARRAY))
      return this;
    int i = 1;
    do
    {
      while (true)
      {
        JsonToken localJsonToken = nextToken();
        if (localJsonToken == null)
        {
          _handleEOF();
          return this;
        }
        switch (JsonParserMinimalBase.1.$SwitchMap$org$codehaus$jackson$JsonToken[localJsonToken.ordinal()])
        {
        default:
          break;
        case 1:
        case 2:
          i++;
        case 3:
        case 4:
        }
      }
      i--;
    }
    while (i != 0);
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.impl.JsonParserMinimalBase
 * JD-Core Version:    0.6.2
 */