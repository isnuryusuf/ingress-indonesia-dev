package com.google.a.a;

import java.util.Arrays;

public abstract class f
  implements ao<Character>
{
  public static final f a = new g();
  public static final f b = a('\000', '', "CharMatcher.ASCII");
  public static final f c = new v("CharMatcher.DIGIT", "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray(), p.toCharArray());
  public static final f d = new l("CharMatcher.JAVA_DIGIT");
  public static final f e = new m("CharMatcher.JAVA_LETTER");
  public static final f f = new n("CharMatcher.JAVA_LETTER_OR_DIGIT");
  public static final f g = new o("CharMatcher.JAVA_UPPER_CASE");
  public static final f h = new p("CharMatcher.JAVA_LOWER_CASE");
  public static final f i = a('\000', '\037').a(a('', '')).a("CharMatcher.JAVA_ISO_CONTROL");
  public static final f j = new v("CharMatcher.INVISIBLE", "".toCharArray(), "  ­؄۝܏ ᠎‏ ⁤⁯　﻿￹￻".toCharArray());
  public static final f k = new v("CharMatcher.SINGLE_WIDTH", "".toCharArray(), "ӹ־ת״ۿݿ๿₯℺﷿﻿ￜ".toCharArray());
  public static final f l = new q("CharMatcher.ANY");
  public static final f m = new r("CharMatcher.NONE");
  public static final f o = new k("CharMatcher.WHITESPACE");
  private static final String p;
  final String n;

  static
  {
    StringBuilder localStringBuilder = new StringBuilder(31);
    for (int i1 = 0; i1 < 31; i1++)
      localStringBuilder.append((char)('\t' + "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".charAt(i1)));
    p = localStringBuilder.toString();
  }

  protected f()
  {
    this.n = super.toString();
  }

  f(String paramString)
  {
    this.n = paramString;
  }

  public static f a(char paramChar)
  {
    return new s("CharMatcher.is('" + c(paramChar) + "')", paramChar);
  }

  public static f a(char paramChar1, char paramChar2)
  {
    if (paramChar2 >= paramChar1);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      return a(paramChar1, paramChar2, "CharMatcher.inRange('" + c(paramChar1) + "', '" + c(paramChar2) + "')");
    }
  }

  private static f a(char paramChar1, char paramChar2, String paramString)
  {
    return new j(paramString, paramChar1, paramChar2);
  }

  public static f a(CharSequence paramCharSequence)
  {
    int i1 = 0;
    char[] arrayOfChar;
    StringBuilder localStringBuilder;
    int i2;
    switch (paramCharSequence.length())
    {
    default:
      arrayOfChar = paramCharSequence.toString().toCharArray();
      Arrays.sort(arrayOfChar);
      localStringBuilder = new StringBuilder("CharMatcher.anyOf(\"");
      i2 = arrayOfChar.length;
    case 0:
    case 1:
    case 2:
    }
    while (i1 < i2)
    {
      localStringBuilder.append(c(arrayOfChar[i1]));
      i1++;
      continue;
      return m;
      return a(paramCharSequence.charAt(0));
      char c1 = paramCharSequence.charAt(0);
      char c2 = paramCharSequence.charAt(1);
      return new i("CharMatcher.anyOf(\"" + c(c1) + c(c2) + "\")", c1, c2);
    }
    localStringBuilder.append("\")");
    return new h(localStringBuilder.toString(), arrayOfChar);
  }

  private static String c(char paramChar)
  {
    char[] arrayOfChar = { 92, 117, 0, 0, 0, 0 };
    for (int i1 = 0; i1 < 4; i1++)
    {
      arrayOfChar[(5 - i1)] = "0123456789ABCDEF".charAt(paramChar & 0xF);
      paramChar = (char)(paramChar >> '\004');
    }
    return String.copyValueOf(arrayOfChar);
  }

  public int a(CharSequence paramCharSequence, int paramInt)
  {
    int i1 = paramCharSequence.length();
    an.b(paramInt, i1);
    for (int i2 = paramInt; i2 < i1; i2++)
      if (b(paramCharSequence.charAt(i2)))
        return i2;
    return -1;
  }

  public f a(f paramf)
  {
    return new u(this, (f)an.a(paramf));
  }

  f a(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean a(Character paramCharacter)
  {
    return b(paramCharacter.charValue());
  }

  public abstract boolean b(char paramChar);

  public boolean b(CharSequence paramCharSequence)
  {
    for (int i1 = -1 + paramCharSequence.length(); i1 >= 0; i1--)
      if (!b(paramCharSequence.charAt(i1)))
        return false;
    return true;
  }

  public String toString()
  {
    return this.n;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.f
 * JD-Core Version:    0.6.2
 */