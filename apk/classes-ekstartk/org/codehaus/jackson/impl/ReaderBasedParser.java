package org.codehaus.jackson.impl;

import java.io.IOException;
import java.io.Reader;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.io.IOContext;
import org.codehaus.jackson.sym.CharsToNameCanonicalizer;
import org.codehaus.jackson.util.ByteArrayBuilder;
import org.codehaus.jackson.util.CharTypes;
import org.codehaus.jackson.util.TextBuffer;

public final class ReaderBasedParser extends JsonParserBase
{
  protected char[] _inputBuffer;
  protected ObjectCodec _objectCodec;
  protected Reader _reader;
  protected final CharsToNameCanonicalizer _symbols;
  protected boolean _tokenIncomplete = false;

  public ReaderBasedParser(IOContext paramIOContext, int paramInt, Reader paramReader, ObjectCodec paramObjectCodec, CharsToNameCanonicalizer paramCharsToNameCanonicalizer)
  {
    super(paramIOContext, paramInt);
    this._reader = paramReader;
    this._inputBuffer = paramIOContext.allocTokenBuffer();
    this._objectCodec = paramObjectCodec;
    this._symbols = paramCharsToNameCanonicalizer;
  }

  private final JsonToken _nextAfterName()
  {
    this._nameCopied = false;
    JsonToken localJsonToken = this._nextToken;
    this._nextToken = null;
    if (localJsonToken == JsonToken.START_ARRAY)
      this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
    while (true)
    {
      this._currToken = localJsonToken;
      return localJsonToken;
      if (localJsonToken == JsonToken.START_OBJECT)
        this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
    }
  }

  private String _parseFieldName2(int paramInt1, int paramInt2, int paramInt3)
  {
    this._textBuffer.resetWithShared(this._inputBuffer, paramInt1, this._inputPtr - paramInt1);
    char[] arrayOfChar1 = this._textBuffer.getCurrentSegment();
    int i = this._textBuffer.getCurrentSegmentSize();
    while (true)
    {
      if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
        _reportInvalidEOF(": was expecting closing '" + (char)paramInt3 + "' for name");
      char[] arrayOfChar2 = this._inputBuffer;
      int j = this._inputPtr;
      this._inputPtr = (j + 1);
      int k = arrayOfChar2[j];
      if (k <= 92)
        if (k != 92);
      int n;
      for (int m = _decodeEscaped(); ; m = k)
      {
        paramInt2 = k + paramInt2 * 31;
        n = i + 1;
        arrayOfChar1[i] = m;
        if (n < arrayOfChar1.length)
          break label256;
        arrayOfChar1 = this._textBuffer.finishCurrentSegment();
        i = 0;
        break;
        if (k <= paramInt3)
        {
          if (k == paramInt3)
            break label205;
          if (k < 32)
            _throwUnquotedSpace(k, "name");
        }
      }
      label205: this._textBuffer.setCurrentLength(i);
      TextBuffer localTextBuffer = this._textBuffer;
      char[] arrayOfChar3 = localTextBuffer.getTextBuffer();
      int i1 = localTextBuffer.getTextOffset();
      int i2 = localTextBuffer.size();
      return this._symbols.findSymbol(arrayOfChar3, i1, i2, paramInt2);
      label256: i = n;
    }
  }

  private String _parseUnusualFieldName2(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    this._textBuffer.resetWithShared(this._inputBuffer, paramInt1, this._inputPtr - paramInt1);
    char[] arrayOfChar1 = this._textBuffer.getCurrentSegment();
    int i = this._textBuffer.getCurrentSegmentSize();
    int j = paramArrayOfInt.length;
    while (true)
    {
      int k;
      if ((this._inputPtr < this._inputEnd) || (loadMore()))
      {
        k = this._inputBuffer[this._inputPtr];
        if (k > j)
          break label134;
        if (paramArrayOfInt[k] == 0)
          break label142;
      }
      label134: 
      while (!Character.isJavaIdentifierPart(k))
      {
        this._textBuffer.setCurrentLength(i);
        TextBuffer localTextBuffer = this._textBuffer;
        char[] arrayOfChar2 = localTextBuffer.getTextBuffer();
        int n = localTextBuffer.getTextOffset();
        int i1 = localTextBuffer.size();
        return this._symbols.findSymbol(arrayOfChar2, n, i1, paramInt2);
      }
      label142: this._inputPtr = (1 + this._inputPtr);
      paramInt2 = k + paramInt2 * 31;
      int m = i + 1;
      arrayOfChar1[i] = k;
      if (m >= arrayOfChar1.length)
      {
        arrayOfChar1 = this._textBuffer.finishCurrentSegment();
        i = 0;
      }
      else
      {
        i = m;
      }
    }
  }

  private final void _skipCComment()
  {
    while ((this._inputPtr < this._inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = this._inputBuffer;
      int i = this._inputPtr;
      this._inputPtr = (i + 1);
      int j = arrayOfChar[i];
      if (j <= 42)
        if (j == 42)
        {
          if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
            break;
          if (this._inputBuffer[this._inputPtr] == '/')
            this._inputPtr = (1 + this._inputPtr);
        }
        else if (j < 32)
        {
          if (j == 10)
            _skipLF();
          else if (j == 13)
            _skipCR();
          else if (j != 9)
            _throwInvalidSpace(j);
        }
    }
    _reportInvalidEOF(" in a comment");
  }

  private final void _skipComment()
  {
    if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS))
      _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
      _reportInvalidEOF(" in a comment");
    char[] arrayOfChar = this._inputBuffer;
    int i = this._inputPtr;
    this._inputPtr = (i + 1);
    int j = arrayOfChar[i];
    if (j == 47)
    {
      _skipCppComment();
      return;
    }
    if (j == 42)
    {
      _skipCComment();
      return;
    }
    _reportUnexpectedChar(j, "was expecting either '*' or '/' for a comment");
  }

  private final void _skipCppComment()
  {
    while (true)
    {
      int j;
      if ((this._inputPtr < this._inputEnd) || (loadMore()))
      {
        char[] arrayOfChar = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = (i + 1);
        j = arrayOfChar[i];
        if (j < 32)
          if (j == 10)
            _skipLF();
      }
      else
      {
        return;
        if (j == 13)
        {
          _skipCR();
          return;
        }
        if (j != 9)
          _throwInvalidSpace(j);
      }
    }
  }

  private final int _skipWS()
  {
    while ((this._inputPtr < this._inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = this._inputBuffer;
      int i = this._inputPtr;
      this._inputPtr = (i + 1);
      int j = arrayOfChar[i];
      if (j > 32)
      {
        if (j != 47)
          return j;
        _skipComment();
      }
      else if (j != 32)
      {
        if (j == 10)
          _skipLF();
        else if (j == 13)
          _skipCR();
        else if (j != 9)
          _throwInvalidSpace(j);
      }
    }
    throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
  }

  private final int _skipWSOrEnd()
  {
    while ((this._inputPtr < this._inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = this._inputBuffer;
      int i = this._inputPtr;
      this._inputPtr = (i + 1);
      j = arrayOfChar[i];
      if (j > 32)
      {
        if (j != 47)
          break label110;
        _skipComment();
      }
      else if (j != 32)
      {
        if (j == 10)
          _skipLF();
        else if (j == 13)
          _skipCR();
        else if (j != 9)
          _throwInvalidSpace(j);
      }
    }
    _handleEOF();
    int j = -1;
    label110: return j;
  }

  private final char _verifyNoLeadingZeroes()
  {
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()));
    char c;
    do
    {
      c = '0';
      while ((this._inputPtr >= this._inputEnd) && (!loadMore()))
        do
        {
          return c;
          c = this._inputBuffer[this._inputPtr];
          if ((c < '0') || (c > '9'))
            return '0';
          if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS))
            reportInvalidNumber("Leading zeroes not allowed");
          this._inputPtr = (1 + this._inputPtr);
        }
        while (c != '0');
      c = this._inputBuffer[this._inputPtr];
      if ((c < '0') || (c > '9'))
        return '0';
      this._inputPtr = (1 + this._inputPtr);
    }
    while (c == '0');
    return c;
  }

  private final JsonToken parseNumberText2(boolean paramBoolean)
  {
    char[] arrayOfChar1 = this._textBuffer.emptyAndGetCurrentSegment();
    if (paramBoolean)
      arrayOfChar1[0] = '-';
    for (int i = 1; ; i = 0)
    {
      int j;
      int k;
      char[] arrayOfChar2;
      int n;
      label84: int i31;
      int i4;
      int i3;
      int i1;
      char[] arrayOfChar3;
      int i2;
      if (this._inputPtr < this._inputEnd)
      {
        char[] arrayOfChar12 = this._inputBuffer;
        int i33 = this._inputPtr;
        this._inputPtr = (i33 + 1);
        j = arrayOfChar12[i33];
        if (j == 48)
          j = _verifyNoLeadingZeroes();
        k = 0;
        int m = j;
        arrayOfChar2 = arrayOfChar1;
        n = m;
        if ((n < 48) || (n > 57))
          break label882;
        k++;
        if (i >= arrayOfChar2.length)
        {
          arrayOfChar2 = this._textBuffer.finishCurrentSegment();
          i = 0;
        }
        i31 = i + 1;
        arrayOfChar2[i] = n;
        if ((this._inputPtr < this._inputEnd) || (loadMore()))
          break label614;
        i4 = 1;
        i3 = 0;
        i1 = k;
        arrayOfChar3 = arrayOfChar2;
        i2 = i31;
      }
      while (true)
      {
        if (i1 == 0)
          reportInvalidNumber("Missing integer part (next char " + _getCharDesc(i3) + ")");
        char[] arrayOfChar9;
        int i25;
        int i26;
        int i27;
        int i5;
        label256: int i9;
        int i8;
        char[] arrayOfChar4;
        int i7;
        if (i3 == 46)
        {
          int i24 = i2 + 1;
          arrayOfChar3[i2] = i3;
          arrayOfChar9 = arrayOfChar3;
          i25 = i24;
          i26 = i3;
          i27 = 0;
          if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
          {
            i5 = 1;
            if (i27 == 0)
              reportUnexpectedNumberChar(i26, "Decimal point not followed by a digit");
            i9 = i27;
            i8 = i25;
            int i29 = i26;
            arrayOfChar4 = arrayOfChar9;
            i7 = i29;
          }
        }
        while (true)
        {
          int i10;
          int i11;
          label374: int i12;
          label408: int i14;
          char[] arrayOfChar5;
          int i15;
          label466: int i16;
          int i17;
          label474: int i18;
          int i20;
          int i19;
          if ((i7 == 101) || (i7 == 69))
          {
            if (i8 >= arrayOfChar4.length)
            {
              arrayOfChar4 = this._textBuffer.finishCurrentSegment();
              i8 = 0;
            }
            i10 = i8 + 1;
            arrayOfChar4[i8] = i7;
            if (this._inputPtr < this._inputEnd)
            {
              char[] arrayOfChar8 = this._inputBuffer;
              int i23 = this._inputPtr;
              this._inputPtr = (i23 + 1);
              i11 = arrayOfChar8[i23];
              if ((i11 != 45) && (i11 != 43))
                break label810;
              if (i10 < arrayOfChar4.length)
                break label803;
              arrayOfChar4 = this._textBuffer.finishCurrentSegment();
              i12 = 0;
              int i13 = i12 + 1;
              arrayOfChar4[i12] = i11;
              if (this._inputPtr >= this._inputEnd)
                break label739;
              char[] arrayOfChar7 = this._inputBuffer;
              int i22 = this._inputPtr;
              this._inputPtr = (i22 + 1);
              i14 = arrayOfChar7[i22];
              arrayOfChar5 = arrayOfChar4;
              i15 = 0;
              i16 = i14;
              i17 = i13;
              if ((i16 > 57) || (i16 < 48))
                break label788;
              i15++;
              if (i17 >= arrayOfChar5.length)
              {
                arrayOfChar5 = this._textBuffer.finishCurrentSegment();
                i17 = 0;
              }
              i13 = i17 + 1;
              arrayOfChar5[i17] = i16;
              if ((this._inputPtr < this._inputEnd) || (loadMore()))
                break label758;
              i18 = i15;
              i20 = 1;
              i19 = i13;
              label553: if (i18 == 0)
                reportUnexpectedNumberChar(i16, "Exponent indicator not followed by a digit");
              label566: if (i20 == 0)
                this._inputPtr = (-1 + this._inputPtr);
              this._textBuffer.setCurrentLength(i19);
              return reset(paramBoolean, i1, i9, i18);
              j = getNextChar("No digit following minus sign");
              break;
              label614: char[] arrayOfChar11 = this._inputBuffer;
              int i32 = this._inputPtr;
              this._inputPtr = (i32 + 1);
              n = arrayOfChar11[i32];
              i = i31;
              break label84;
              char[] arrayOfChar10 = this._inputBuffer;
              int i28 = this._inputPtr;
              this._inputPtr = (i28 + 1);
              i26 = arrayOfChar10[i28];
              if ((i26 < 48) || (i26 > 57))
                break label849;
              i27++;
              if (i25 < arrayOfChar9.length)
                break label842;
              arrayOfChar9 = this._textBuffer.finishCurrentSegment();
            }
          }
          label788: label803: label810: label842: for (int i30 = 0; ; i30 = i25)
          {
            i25 = i30 + 1;
            arrayOfChar9[i30] = i26;
            break;
            i11 = getNextChar("expected a digit for number exponent");
            break label374;
            label739: i14 = getNextChar("expected a digit for number exponent");
            arrayOfChar5 = arrayOfChar4;
            i15 = 0;
            break label466;
            label758: char[] arrayOfChar6 = this._inputBuffer;
            int i21 = this._inputPtr;
            this._inputPtr = (i21 + 1);
            i14 = arrayOfChar6[i21];
            break label466;
            i18 = i15;
            i19 = i17;
            i20 = i5;
            break label553;
            i12 = i10;
            break label408;
            i16 = i11;
            i17 = i10;
            arrayOfChar5 = arrayOfChar4;
            i15 = 0;
            break label474;
            i19 = i8;
            i20 = i5;
            i18 = 0;
            break label566;
          }
          label849: i5 = i4;
          break label256;
          i5 = i4;
          arrayOfChar4 = arrayOfChar3;
          int i6 = i2;
          i7 = i3;
          i8 = i6;
          i9 = 0;
        }
        label882: i1 = k;
        i2 = i;
        i3 = n;
        arrayOfChar3 = arrayOfChar2;
        i4 = 0;
      }
    }
  }

  protected final void _closeInput()
  {
    if (this._reader != null)
    {
      if ((this._ioContext.isResourceManaged()) || (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)))
        this._reader.close();
      this._reader = null;
    }
  }

  protected final byte[] _decodeBase64(Base64Variant paramBase64Variant)
  {
    ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
    while (true)
    {
      if (this._inputPtr >= this._inputEnd)
        loadMoreGuaranteed();
      char[] arrayOfChar1 = this._inputBuffer;
      int i = this._inputPtr;
      this._inputPtr = (i + 1);
      char c1 = arrayOfChar1[i];
      if (c1 > ' ')
      {
        int j = paramBase64Variant.decodeBase64Char(c1);
        if (j < 0)
        {
          if (c1 == '"')
            return localByteArrayBuilder.toByteArray();
          j = _decodeBase64Escape(paramBase64Variant, c1, 0);
          if (j < 0);
        }
        else
        {
          if (this._inputPtr >= this._inputEnd)
            loadMoreGuaranteed();
          char[] arrayOfChar2 = this._inputBuffer;
          int k = this._inputPtr;
          this._inputPtr = (k + 1);
          char c2 = arrayOfChar2[k];
          int m = paramBase64Variant.decodeBase64Char(c2);
          if (m < 0)
            m = _decodeBase64Escape(paramBase64Variant, c2, 1);
          int n = m | j << 6;
          if (this._inputPtr >= this._inputEnd)
            loadMoreGuaranteed();
          char[] arrayOfChar3 = this._inputBuffer;
          int i1 = this._inputPtr;
          this._inputPtr = (i1 + 1);
          char c3 = arrayOfChar3[i1];
          int i2 = paramBase64Variant.decodeBase64Char(c3);
          if (i2 < 0)
          {
            if (i2 != -2)
            {
              if ((c3 == '"') && (!paramBase64Variant.usesPadding()))
              {
                localByteArrayBuilder.append(n >> 4);
                return localByteArrayBuilder.toByteArray();
              }
              i2 = _decodeBase64Escape(paramBase64Variant, c3, 2);
            }
            if (i2 == -2)
            {
              if (this._inputPtr >= this._inputEnd)
                loadMoreGuaranteed();
              char[] arrayOfChar5 = this._inputBuffer;
              int i6 = this._inputPtr;
              this._inputPtr = (i6 + 1);
              char c5 = arrayOfChar5[i6];
              if (!paramBase64Variant.usesPaddingChar(c5))
                throw reportInvalidBase64Char(paramBase64Variant, c5, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
              localByteArrayBuilder.append(n >> 4);
            }
          }
          else
          {
            int i3 = i2 | n << 6;
            if (this._inputPtr >= this._inputEnd)
              loadMoreGuaranteed();
            char[] arrayOfChar4 = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = (i4 + 1);
            char c4 = arrayOfChar4[i4];
            int i5 = paramBase64Variant.decodeBase64Char(c4);
            if (i5 < 0)
            {
              if (i5 != -2)
              {
                if ((c4 == '"') && (!paramBase64Variant.usesPadding()))
                {
                  localByteArrayBuilder.appendTwoBytes(i3 >> 2);
                  return localByteArrayBuilder.toByteArray();
                }
                i5 = _decodeBase64Escape(paramBase64Variant, c4, 3);
              }
              if (i5 == -2)
                localByteArrayBuilder.appendTwoBytes(i3 >> 2);
            }
            else
            {
              localByteArrayBuilder.appendThreeBytes(i5 | i3 << 6);
            }
          }
        }
      }
    }
  }

  protected final char _decodeEscaped()
  {
    int i = 0;
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
      _reportInvalidEOF(" in character escape sequence");
    char[] arrayOfChar1 = this._inputBuffer;
    int j = this._inputPtr;
    this._inputPtr = (j + 1);
    char c = arrayOfChar1[j];
    switch (c)
    {
    default:
      c = _handleUnrecognizedCharacterEscape(c);
    case '"':
    case '/':
    case '\\':
      return c;
    case 'b':
      return '\b';
    case 't':
      return '\t';
    case 'n':
      return '\n';
    case 'f':
      return '\f';
    case 'r':
      return '\r';
    case 'u':
    }
    for (int k = 0; k < 4; k++)
    {
      if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
        _reportInvalidEOF(" in character escape sequence");
      char[] arrayOfChar2 = this._inputBuffer;
      int m = this._inputPtr;
      this._inputPtr = (m + 1);
      int n = arrayOfChar2[m];
      int i1 = CharTypes.charToHex(n);
      if (i1 < 0)
        _reportUnexpectedChar(n, "expected a hex-digit for character escape sequence");
      i = i1 | i << 4;
    }
    return (char)i;
  }

  protected final void _finishString()
  {
    int i = this._inputPtr;
    int j = this._inputEnd;
    if (i < j)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int k = arrayOfInt.length;
      do
      {
        int m = this._inputBuffer[i];
        if ((m < k) && (arrayOfInt[m] != 0))
        {
          if (m != 34)
            break;
          this._textBuffer.resetWithShared(this._inputBuffer, this._inputPtr, i - this._inputPtr);
          this._inputPtr = (i + 1);
          return;
        }
        i++;
      }
      while (i < j);
    }
    this._textBuffer.resetWithCopy(this._inputBuffer, this._inputPtr, i - this._inputPtr);
    this._inputPtr = i;
    _finishString2();
  }

  protected final void _finishString2()
  {
    char[] arrayOfChar1 = this._textBuffer.getCurrentSegment();
    int i = this._textBuffer.getCurrentSegmentSize();
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
      _reportInvalidEOF(": was expecting closing quote for a string value");
    char[] arrayOfChar2 = this._inputBuffer;
    int j = this._inputPtr;
    this._inputPtr = (j + 1);
    int k = arrayOfChar2[j];
    if (k <= 92)
    {
      if (k == 92)
        k = _decodeEscaped();
    }
    else
    {
      label86: if (i < arrayOfChar1.length)
        break label159;
      arrayOfChar1 = this._textBuffer.finishCurrentSegment();
    }
    label159: for (int m = 0; ; m = i)
    {
      i = m + 1;
      arrayOfChar1[m] = k;
      break;
      if (k > 34)
        break label86;
      if (k != 34)
      {
        if (k >= 32)
          break label86;
        _throwUnquotedSpace(k, "string value");
        break label86;
      }
      this._textBuffer.setCurrentLength(i);
      return;
    }
  }

  protected final String _getText2(JsonToken paramJsonToken)
  {
    if (paramJsonToken == null)
      return null;
    switch (ReaderBasedParser.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonToken.ordinal()])
    {
    default:
      return paramJsonToken.asString();
    case 1:
      return this._parsingContext.getCurrentName();
    case 2:
    case 3:
    case 4:
    }
    return this._textBuffer.contentsAsString();
  }

  protected final JsonToken _handleApostropheValue()
  {
    char[] arrayOfChar1 = this._textBuffer.emptyAndGetCurrentSegment();
    int i = this._textBuffer.getCurrentSegmentSize();
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
      _reportInvalidEOF(": was expecting closing quote for a string value");
    char[] arrayOfChar2 = this._inputBuffer;
    int j = this._inputPtr;
    this._inputPtr = (j + 1);
    int k = arrayOfChar2[j];
    if (k <= 92)
    {
      if (k == 92)
        k = _decodeEscaped();
    }
    else
    {
      label86: if (i < arrayOfChar1.length)
        break label162;
      arrayOfChar1 = this._textBuffer.finishCurrentSegment();
    }
    label162: for (int m = 0; ; m = i)
    {
      i = m + 1;
      arrayOfChar1[m] = k;
      break;
      if (k > 39)
        break label86;
      if (k != 39)
      {
        if (k >= 32)
          break label86;
        _throwUnquotedSpace(k, "string value");
        break label86;
      }
      this._textBuffer.setCurrentLength(i);
      return JsonToken.VALUE_STRING;
    }
  }

  protected final JsonToken _handleInvalidNumberStart(int paramInt, boolean paramBoolean)
  {
    double d = (-1.0D / 0.0D);
    if (paramInt == 73)
    {
      if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
        _reportInvalidEOFInValue();
      char[] arrayOfChar = this._inputBuffer;
      int i = this._inputPtr;
      this._inputPtr = (i + 1);
      paramInt = arrayOfChar[i];
      if (paramInt != 78)
        break label155;
      String str2;
      if (paramBoolean)
      {
        str2 = "-INF";
        _matchToken(str2, 3);
        if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS))
          break label117;
        if (!paramBoolean)
          break label110;
      }
      while (true)
      {
        return resetAsNaN(str2, d);
        str2 = "+INF";
        break;
        label110: d = (1.0D / 0.0D);
      }
      label117: _reportError("Non-standard token '" + str2 + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
    }
    while (true)
    {
      reportUnexpectedNumberChar(paramInt, "expected digit (0-9) to follow minus sign, for valid numeric value");
      return null;
      label155: if (paramInt == 110)
      {
        String str1;
        if (paramBoolean)
        {
          str1 = "-Infinity";
          _matchToken(str1, 3);
          if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS))
            break label214;
          if (!paramBoolean)
            break label207;
        }
        while (true)
        {
          return resetAsNaN(str1, d);
          str1 = "+Infinity";
          break;
          label207: d = (1.0D / 0.0D);
        }
        label214: _reportError("Non-standard token '" + str1 + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
      }
    }
  }

  protected final JsonToken _handleUnexpectedValue(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 39:
    case 78:
      while (true)
      {
        _reportUnexpectedChar(paramInt, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
        if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))
        {
          return _handleApostropheValue();
          _matchToken("NaN", 1);
          if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS))
            return resetAsNaN("NaN", (0.0D / 0.0D));
          _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        }
      }
    case 43:
    }
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
      _reportInvalidEOFInValue();
    char[] arrayOfChar = this._inputBuffer;
    int i = this._inputPtr;
    this._inputPtr = (i + 1);
    return _handleInvalidNumberStart(arrayOfChar[i], false);
  }

  protected final String _handleUnusualFieldName(int paramInt)
  {
    if ((paramInt == 39) && (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)))
      return _parseApostropheFieldName();
    if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES))
      _reportUnexpectedChar(paramInt, "was expecting double-quote to start field name");
    int[] arrayOfInt = CharTypes.getInputCodeLatin1JsNames();
    int i = arrayOfInt.length;
    boolean bool;
    int j;
    int k;
    int m;
    if (paramInt < i)
      if ((arrayOfInt[paramInt] == 0) && ((paramInt < 48) || (paramInt > 57)))
      {
        bool = true;
        if (!bool)
          _reportUnexpectedChar(paramInt, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        j = this._inputPtr;
        k = this._inputEnd;
        m = 0;
        if (j >= k)
          break label243;
      }
    label223: 
    do
    {
      int i1 = this._inputBuffer[j];
      if (i1 < i)
      {
        if (arrayOfInt[i1] == 0)
          break label223;
        int i3 = -1 + this._inputPtr;
        this._inputPtr = j;
        return this._symbols.findSymbol(this._inputBuffer, i3, j - i3, m);
        bool = false;
        break;
        bool = Character.isJavaIdentifierPart((char)paramInt);
        break;
      }
      if (!Character.isJavaIdentifierPart(i1))
      {
        int i2 = -1 + this._inputPtr;
        this._inputPtr = j;
        return this._symbols.findSymbol(this._inputBuffer, i2, j - i2, m);
      }
      m = i1 + m * 31;
      j++;
    }
    while (j < k);
    label243: int n = -1 + this._inputPtr;
    this._inputPtr = j;
    return _parseUnusualFieldName2(n, m, arrayOfInt);
  }

  protected final void _matchToken(String paramString, int paramInt)
  {
    int i = paramString.length();
    do
    {
      if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
        _reportInvalidEOFInValue();
      if (this._inputBuffer[this._inputPtr] != paramString.charAt(paramInt))
        _reportInvalidToken(paramString.substring(0, paramInt), "'null', 'true', 'false' or NaN");
      this._inputPtr = (1 + this._inputPtr);
      paramInt++;
    }
    while (paramInt < i);
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()));
    char c;
    do
    {
      return;
      c = this._inputBuffer[this._inputPtr];
    }
    while ((c < '0') || (c == ']') || (c == '}') || (!Character.isJavaIdentifierPart(c)));
    this._inputPtr = (1 + this._inputPtr);
    _reportInvalidToken(paramString.substring(0, paramInt), "'null', 'true', 'false' or NaN");
  }

  protected final String _parseApostropheFieldName()
  {
    int i = this._inputPtr;
    int j = this._inputEnd;
    int k = 0;
    if (i < j)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int n = arrayOfInt.length;
      do
      {
        int i1 = this._inputBuffer[i];
        if (i1 == 39)
        {
          int i2 = this._inputPtr;
          this._inputPtr = (i + 1);
          return this._symbols.findSymbol(this._inputBuffer, i2, i - i2, k);
        }
        if ((i1 < n) && (arrayOfInt[i1] != 0))
          break;
        k = i1 + k * 31;
        i++;
      }
      while (i < j);
    }
    int m = this._inputPtr;
    this._inputPtr = i;
    return _parseFieldName2(m, k, 39);
  }

  protected final String _parseFieldName(int paramInt)
  {
    if (paramInt != 34)
      return _handleUnusualFieldName(paramInt);
    int i = this._inputPtr;
    int j = this._inputEnd;
    int k = 0;
    if (i < j)
    {
      int[] arrayOfInt = CharTypes.getInputCodeLatin1();
      int n = arrayOfInt.length;
      do
      {
        int i1 = this._inputBuffer[i];
        if ((i1 < n) && (arrayOfInt[i1] != 0))
        {
          if (i1 != 34)
            break;
          int i2 = this._inputPtr;
          this._inputPtr = (i + 1);
          return this._symbols.findSymbol(this._inputBuffer, i2, i - i2, k);
        }
        k = i1 + k * 31;
        i++;
      }
      while (i < j);
    }
    int m = this._inputPtr;
    this._inputPtr = i;
    return _parseFieldName2(m, k, 34);
  }

  protected final void _releaseBuffers()
  {
    super._releaseBuffers();
    char[] arrayOfChar = this._inputBuffer;
    if (arrayOfChar != null)
    {
      this._inputBuffer = null;
      this._ioContext.releaseTokenBuffer(arrayOfChar);
    }
  }

  protected final void _reportInvalidToken(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString1);
    while ((this._inputPtr < this._inputEnd) || (loadMore()))
    {
      char c = this._inputBuffer[this._inputPtr];
      if (!Character.isJavaIdentifierPart(c))
        break;
      this._inputPtr = (1 + this._inputPtr);
      localStringBuilder.append(c);
    }
    _reportError("Unrecognized token '" + localStringBuilder.toString() + "': was expecting ");
  }

  protected final void _skipCR()
  {
    if (((this._inputPtr < this._inputEnd) || (loadMore())) && (this._inputBuffer[this._inputPtr] == '\n'))
      this._inputPtr = (1 + this._inputPtr);
    this._currInputRow = (1 + this._currInputRow);
    this._currInputRowStart = this._inputPtr;
  }

  protected final void _skipLF()
  {
    this._currInputRow = (1 + this._currInputRow);
    this._currInputRowStart = this._inputPtr;
  }

  protected final void _skipString()
  {
    this._tokenIncomplete = false;
    int i = this._inputPtr;
    int j = this._inputEnd;
    char[] arrayOfChar = this._inputBuffer;
    while (true)
    {
      if (i >= j)
      {
        this._inputPtr = i;
        if (!loadMore())
          _reportInvalidEOF(": was expecting closing quote for a string value");
        i = this._inputPtr;
        j = this._inputEnd;
      }
      int k = i + 1;
      int m = arrayOfChar[i];
      if (m <= 92)
      {
        if (m == 92)
        {
          this._inputPtr = k;
          _decodeEscaped();
          i = this._inputPtr;
          j = this._inputEnd;
        }
        else if (m <= 34)
        {
          if (m == 34)
          {
            this._inputPtr = k;
            return;
          }
          if (m < 32)
          {
            this._inputPtr = k;
            _throwUnquotedSpace(m, "string value");
          }
        }
      }
      else
        i = k;
    }
  }

  public final void close()
  {
    super.close();
    this._symbols.release();
  }

  public final byte[] getBinaryValue(Base64Variant paramBase64Variant)
  {
    if ((this._currToken != JsonToken.VALUE_STRING) && ((this._currToken != JsonToken.VALUE_EMBEDDED_OBJECT) || (this._binaryValue == null)))
      _reportError("Current token (" + this._currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
    if (this._tokenIncomplete);
    while (true)
    {
      try
      {
        this._binaryValue = _decodeBase64(paramBase64Variant);
        this._tokenIncomplete = false;
        return this._binaryValue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw _constructError("Failed to decode VALUE_STRING as base64 (" + paramBase64Variant + "): " + localIllegalArgumentException.getMessage());
      }
      if (this._binaryValue == null)
      {
        ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
        _decodeBase64(getText(), localByteArrayBuilder, paramBase64Variant);
        this._binaryValue = localByteArrayBuilder.toByteArray();
      }
    }
  }

  public final ObjectCodec getCodec()
  {
    return this._objectCodec;
  }

  protected final char getNextChar(String paramString)
  {
    if ((this._inputPtr >= this._inputEnd) && (!loadMore()))
      _reportInvalidEOF(paramString);
    char[] arrayOfChar = this._inputBuffer;
    int i = this._inputPtr;
    this._inputPtr = (i + 1);
    return arrayOfChar[i];
  }

  public final String getText()
  {
    JsonToken localJsonToken = this._currToken;
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      if (this._tokenIncomplete)
      {
        this._tokenIncomplete = false;
        _finishString();
      }
      return this._textBuffer.contentsAsString();
    }
    return _getText2(localJsonToken);
  }

  public final char[] getTextCharacters()
  {
    if (this._currToken != null)
    {
      switch (ReaderBasedParser.1.$SwitchMap$org$codehaus$jackson$JsonToken[this._currToken.ordinal()])
      {
      default:
        return this._currToken.asCharArray();
      case 1:
        String str;
        int i;
        if (!this._nameCopied)
        {
          str = this._parsingContext.getCurrentName();
          i = str.length();
          if (this._nameCopyBuffer != null)
            break label116;
          this._nameCopyBuffer = this._ioContext.allocNameCopyBuffer(i);
        }
        while (true)
        {
          str.getChars(0, i, this._nameCopyBuffer, 0);
          this._nameCopied = true;
          return this._nameCopyBuffer;
          if (this._nameCopyBuffer.length < i)
            this._nameCopyBuffer = new char[i];
        }
      case 2:
        label116: if (this._tokenIncomplete)
        {
          this._tokenIncomplete = false;
          _finishString();
        }
        break;
      case 3:
      case 4:
      }
      return this._textBuffer.getTextBuffer();
    }
    return null;
  }

  public final int getTextLength()
  {
    JsonToken localJsonToken = this._currToken;
    int i = 0;
    if (localJsonToken != null);
    switch (ReaderBasedParser.1.$SwitchMap$org$codehaus$jackson$JsonToken[this._currToken.ordinal()])
    {
    default:
      i = this._currToken.asCharArray().length;
      return i;
    case 1:
      return this._parsingContext.getCurrentName().length();
    case 2:
      if (this._tokenIncomplete)
      {
        this._tokenIncomplete = false;
        _finishString();
      }
      break;
    case 3:
    case 4:
    }
    return this._textBuffer.size();
  }

  public final int getTextOffset()
  {
    if (this._currToken != null);
    switch (ReaderBasedParser.1.$SwitchMap$org$codehaus$jackson$JsonToken[this._currToken.ordinal()])
    {
    case 1:
    default:
      return 0;
    case 2:
      if (this._tokenIncomplete)
      {
        this._tokenIncomplete = false;
        _finishString();
      }
      break;
    case 3:
    case 4:
    }
    return this._textBuffer.getTextOffset();
  }

  protected final boolean loadMore()
  {
    this._currInputProcessed += this._inputEnd;
    this._currInputRowStart -= this._inputEnd;
    Reader localReader = this._reader;
    boolean bool = false;
    int i;
    if (localReader != null)
    {
      i = this._reader.read(this._inputBuffer, 0, this._inputBuffer.length);
      if (i <= 0)
        break label74;
      this._inputPtr = 0;
      this._inputEnd = i;
      bool = true;
    }
    label74: 
    do
    {
      return bool;
      _closeInput();
      bool = false;
    }
    while (i != 0);
    throw new IOException("Reader returned 0 characters when trying to read " + this._inputEnd);
  }

  public final long nextLongValue(long paramLong)
  {
    if (this._currToken == JsonToken.FIELD_NAME)
    {
      this._nameCopied = false;
      localJsonToken = this._nextToken;
      this._nextToken = null;
      this._currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
        paramLong = getLongValue();
    }
    while (nextToken() != JsonToken.VALUE_NUMBER_INT)
    {
      JsonToken localJsonToken;
      do
      {
        return paramLong;
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
          return paramLong;
        }
      }
      while (localJsonToken != JsonToken.START_OBJECT);
      this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
      return paramLong;
    }
    return getLongValue();
  }

  public final String nextTextValue()
  {
    JsonToken localJsonToken3;
    String str;
    if (this._currToken == JsonToken.FIELD_NAME)
    {
      this._nameCopied = false;
      localJsonToken3 = this._nextToken;
      this._nextToken = null;
      this._currToken = localJsonToken3;
      if (localJsonToken3 == JsonToken.VALUE_STRING)
      {
        if (this._tokenIncomplete)
        {
          this._tokenIncomplete = false;
          _finishString();
        }
        str = this._textBuffer.contentsAsString();
      }
    }
    JsonToken localJsonToken1;
    JsonToken localJsonToken2;
    do
    {
      JsonToken localJsonToken4;
      do
      {
        return str;
        if (localJsonToken3 == JsonToken.START_ARRAY)
        {
          this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
          return null;
        }
        localJsonToken4 = JsonToken.START_OBJECT;
        str = null;
      }
      while (localJsonToken3 != localJsonToken4);
      this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
      return null;
      localJsonToken1 = nextToken();
      localJsonToken2 = JsonToken.VALUE_STRING;
      str = null;
    }
    while (localJsonToken1 != localJsonToken2);
    return getText();
  }

  public final JsonToken nextToken()
  {
    this._numTypesValid = 0;
    if (this._currToken == JsonToken.FIELD_NAME)
      return _nextAfterName();
    if (this._tokenIncomplete)
      _skipString();
    int i = _skipWSOrEnd();
    if (i < 0)
    {
      close();
      this._currToken = null;
      return null;
    }
    this._tokenInputTotal = (this._currInputProcessed + this._inputPtr - 1L);
    this._tokenInputRow = this._currInputRow;
    this._tokenInputCol = (-1 + (this._inputPtr - this._currInputRowStart));
    this._binaryValue = null;
    if (i == 93)
    {
      if (!this._parsingContext.inArray())
        _reportMismatchedEndMarker(i, '}');
      this._parsingContext = this._parsingContext.getParent();
      JsonToken localJsonToken3 = JsonToken.END_ARRAY;
      this._currToken = localJsonToken3;
      return localJsonToken3;
    }
    if (i == 125)
    {
      if (!this._parsingContext.inObject())
        _reportMismatchedEndMarker(i, ']');
      this._parsingContext = this._parsingContext.getParent();
      JsonToken localJsonToken2 = JsonToken.END_OBJECT;
      this._currToken = localJsonToken2;
      return localJsonToken2;
    }
    if (this._parsingContext.expectComma())
    {
      if (i != 44)
        _reportUnexpectedChar(i, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
      i = _skipWS();
    }
    boolean bool = this._parsingContext.inObject();
    if (bool)
    {
      String str = _parseFieldName(i);
      this._parsingContext.setCurrentName(str);
      this._currToken = JsonToken.FIELD_NAME;
      int j = _skipWS();
      if (j != 58)
        _reportUnexpectedChar(j, "was expecting a colon to separate field name and value");
      i = _skipWS();
    }
    JsonToken localJsonToken1;
    switch (i)
    {
    default:
      localJsonToken1 = _handleUnexpectedValue(i);
    case 34:
    case 91:
    case 123:
    case 93:
    case 125:
    case 116:
    case 102:
    case 110:
    case 45:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    }
    while (bool)
    {
      this._nextToken = localJsonToken1;
      return this._currToken;
      this._tokenIncomplete = true;
      localJsonToken1 = JsonToken.VALUE_STRING;
      continue;
      if (!bool)
        this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
      localJsonToken1 = JsonToken.START_ARRAY;
      continue;
      if (!bool)
        this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
      localJsonToken1 = JsonToken.START_OBJECT;
      continue;
      _reportUnexpectedChar(i, "expected a value");
      _matchToken("true", 1);
      localJsonToken1 = JsonToken.VALUE_TRUE;
      continue;
      _matchToken("false", 1);
      localJsonToken1 = JsonToken.VALUE_FALSE;
      continue;
      _matchToken("null", 1);
      localJsonToken1 = JsonToken.VALUE_NULL;
      continue;
      localJsonToken1 = parseNumberText(i);
    }
    this._currToken = localJsonToken1;
    return localJsonToken1;
  }

  protected final JsonToken parseNumberText(int paramInt)
  {
    int i = 1;
    int j = 0;
    if (paramInt == 45);
    int m;
    int n;
    int i1;
    boolean bool;
    for (int k = i; ; bool = false)
    {
      m = this._inputPtr;
      n = m - 1;
      i1 = this._inputEnd;
      if (k == 0)
        break;
      if (m >= this._inputEnd)
        break label438;
      char[] arrayOfChar6 = this._inputBuffer;
      i2 = m + 1;
      paramInt = arrayOfChar6[m];
      if ((paramInt <= 57) && (paramInt >= 48))
        break label98;
      this._inputPtr = i2;
      return _handleInvalidNumberStart(paramInt, i);
    }
    int i2 = m;
    label98: int i4;
    int i5;
    int i19;
    int i7;
    int i6;
    if (paramInt != 48)
      while (i2 < this._inputEnd)
      {
        char[] arrayOfChar1 = this._inputBuffer;
        i4 = i2 + 1;
        i5 = arrayOfChar1[i2];
        if ((i5 >= 48) && (i5 <= 57))
        {
          i++;
          i2 = i4;
        }
        else
        {
          if (i5 != 46)
            break label482;
          int i15 = 0;
          int i16 = i4;
          while (i16 < i1)
          {
            char[] arrayOfChar5 = this._inputBuffer;
            int i17 = i16 + 1;
            int i18 = arrayOfChar5[i16];
            if ((i18 >= 48) && (i18 <= 57))
            {
              i15++;
              i16 = i17;
            }
            else
            {
              if (i15 == 0)
                reportUnexpectedNumberChar(i18, "Decimal point not followed by a digit");
              i19 = i15;
              i7 = i17;
              i6 = i18;
            }
          }
        }
      }
    for (int i8 = i19; ; i8 = 0)
    {
      int i11;
      int i12;
      int i13;
      if (i6 != 101)
      {
        j = 0;
        if (i6 != 69);
      }
      else
      {
        if (i7 >= i1)
          break label438;
        char[] arrayOfChar2 = this._inputBuffer;
        i11 = i7 + 1;
        i12 = arrayOfChar2[i7];
        if ((i12 != 45) && (i12 != 43))
          break label469;
        if (i11 >= i1)
          break label438;
        char[] arrayOfChar3 = this._inputBuffer;
        i7 = i11 + 1;
        i13 = arrayOfChar3[i11];
      }
      while (true)
        if ((i13 <= 57) && (i13 >= 48))
        {
          j++;
          if (i7 < i1)
          {
            char[] arrayOfChar4 = this._inputBuffer;
            int i14 = i7 + 1;
            i13 = arrayOfChar4[i7];
            i7 = i14;
          }
        }
        else
        {
          if (j == 0)
            reportUnexpectedNumberChar(i13, "Exponent indicator not followed by a digit");
          int i9 = i7 - 1;
          this._inputPtr = i9;
          int i10 = i9 - n;
          this._textBuffer.resetWithShared(this._inputBuffer, n, i10);
          return reset(bool, i, i8, j);
          label438: if (bool);
          for (int i3 = n + 1; ; i3 = n)
          {
            this._inputPtr = i3;
            return parseNumberText2(bool);
          }
          label469: i13 = i12;
          i7 = i11;
          j = 0;
        }
      label482: i6 = i5;
      i7 = i4;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.impl.ReaderBasedParser
 * JD-Core Version:    0.6.2
 */