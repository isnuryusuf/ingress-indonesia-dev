package org.codehaus.jackson.map.util;

import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.codehaus.jackson.io.NumberInput;

public class StdDateFormat extends DateFormat
{
  protected static final String[] ALL_FORMATS = { "yyyy-MM-dd'T'HH:mm:ss.SSSZ", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd" };
  protected static final DateFormat DATE_FORMAT_ISO8601;
  protected static final DateFormat DATE_FORMAT_ISO8601_Z;
  protected static final DateFormat DATE_FORMAT_PLAIN;
  protected static final DateFormat DATE_FORMAT_RFC1123;
  public static final StdDateFormat instance = new StdDateFormat();
  protected transient DateFormat _formatISO8601;
  protected transient DateFormat _formatISO8601_z;
  protected transient DateFormat _formatPlain;
  protected transient DateFormat _formatRFC1123;

  static
  {
    TimeZone localTimeZone = TimeZone.getTimeZone("GMT");
    SimpleDateFormat localSimpleDateFormat1 = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz");
    DATE_FORMAT_RFC1123 = localSimpleDateFormat1;
    localSimpleDateFormat1.setTimeZone(localTimeZone);
    SimpleDateFormat localSimpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    DATE_FORMAT_ISO8601 = localSimpleDateFormat2;
    localSimpleDateFormat2.setTimeZone(localTimeZone);
    SimpleDateFormat localSimpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    DATE_FORMAT_ISO8601_Z = localSimpleDateFormat3;
    localSimpleDateFormat3.setTimeZone(localTimeZone);
    SimpleDateFormat localSimpleDateFormat4 = new SimpleDateFormat("yyyy-MM-dd");
    DATE_FORMAT_PLAIN = localSimpleDateFormat4;
    localSimpleDateFormat4.setTimeZone(localTimeZone);
  }

  private static final boolean hasTimeZone(String paramString)
  {
    int i = paramString.length();
    if (i >= 6)
    {
      int j = paramString.charAt(i - 6);
      if ((j == 43) || (j == 45));
      int m;
      do
      {
        int k;
        do
        {
          return true;
          k = paramString.charAt(i - 5);
        }
        while ((k == 43) || (k == 45));
        m = paramString.charAt(i - 3);
      }
      while ((m == 43) || (m == 45));
    }
    return false;
  }

  public StdDateFormat clone()
  {
    return new StdDateFormat();
  }

  public StringBuffer format(Date paramDate, StringBuffer paramStringBuffer, FieldPosition paramFieldPosition)
  {
    if (this._formatISO8601 == null)
      this._formatISO8601 = ((DateFormat)DATE_FORMAT_ISO8601.clone());
    return this._formatISO8601.format(paramDate, paramStringBuffer, paramFieldPosition);
  }

  protected boolean looksLikeISO8601(String paramString)
  {
    int i = paramString.length();
    boolean bool1 = false;
    if (i >= 5)
    {
      boolean bool2 = Character.isDigit(paramString.charAt(0));
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = Character.isDigit(paramString.charAt(3));
        bool1 = false;
        if (bool3)
        {
          int j = paramString.charAt(4);
          bool1 = false;
          if (j == 45)
            bool1 = true;
        }
      }
    }
    return bool1;
  }

  public Date parse(String paramString)
  {
    String str1 = paramString.trim();
    ParsePosition localParsePosition = new ParsePosition(0);
    Date localDate = parse(str1, localParsePosition);
    if (localDate != null)
      return localDate;
    StringBuilder localStringBuilder = new StringBuilder();
    String[] arrayOfString = ALL_FORMATS;
    int i = arrayOfString.length;
    int j = 0;
    if (j < i)
    {
      String str2 = arrayOfString[j];
      if (localStringBuilder.length() > 0)
        localStringBuilder.append("\", \"");
      while (true)
      {
        localStringBuilder.append(str2);
        j++;
        break;
        localStringBuilder.append('"');
      }
    }
    localStringBuilder.append('"');
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = str1;
    arrayOfObject[1] = localStringBuilder.toString();
    throw new ParseException(String.format("Can not parse date \"%s\": not compatible with any of standard forms (%s)", arrayOfObject), localParsePosition.getErrorIndex());
  }

  public Date parse(String paramString, ParsePosition paramParsePosition)
  {
    if (looksLikeISO8601(paramString))
      return parseAsISO8601(paramString, paramParsePosition);
    int i = paramString.length();
    int j;
    do
    {
      i--;
      if (i < 0)
        break;
      j = paramString.charAt(i);
    }
    while ((j >= 48) && (j <= 57));
    if ((i < 0) && (NumberInput.inLongRange(paramString, false)))
      return new Date(Long.parseLong(paramString));
    return parseAsRFC1123(paramString, paramParsePosition);
  }

  protected Date parseAsISO8601(String paramString, ParsePosition paramParsePosition)
  {
    int i = paramString.length();
    char c = paramString.charAt(i - 1);
    DateFormat localDateFormat;
    if ((i <= 10) && (Character.isDigit(c)))
    {
      localDateFormat = this._formatPlain;
      if (localDateFormat == null)
      {
        localDateFormat = (DateFormat)DATE_FORMAT_PLAIN.clone();
        this._formatPlain = localDateFormat;
      }
    }
    while (true)
    {
      return localDateFormat.parse(paramString, paramParsePosition);
      if (c == 'Z')
      {
        localDateFormat = this._formatISO8601_z;
        if (localDateFormat == null)
        {
          localDateFormat = (DateFormat)DATE_FORMAT_ISO8601_Z.clone();
          this._formatISO8601_z = localDateFormat;
        }
        if (paramString.charAt(i - 4) == ':')
        {
          StringBuilder localStringBuilder4 = new StringBuilder(paramString);
          localStringBuilder4.insert(i - 1, ".000");
          paramString = localStringBuilder4.toString();
        }
      }
      else
      {
        if (hasTimeZone(paramString))
        {
          int j = paramString.charAt(i - 3);
          StringBuilder localStringBuilder2;
          if (j == 58)
          {
            localStringBuilder2 = new StringBuilder(paramString);
            localStringBuilder2.delete(i - 3, i - 2);
          }
          for (paramString = localStringBuilder2.toString(); ; paramString = paramString + "00")
            do
            {
              int k = paramString.length();
              if (Character.isDigit(paramString.charAt(k - 9)))
              {
                StringBuilder localStringBuilder3 = new StringBuilder(paramString);
                localStringBuilder3.insert(k - 5, ".000");
                paramString = localStringBuilder3.toString();
              }
              localDateFormat = this._formatISO8601;
              if (this._formatISO8601 != null)
                break;
              localDateFormat = (DateFormat)DATE_FORMAT_ISO8601.clone();
              this._formatISO8601 = localDateFormat;
              break;
            }
            while ((j != 43) && (j != 45));
        }
        StringBuilder localStringBuilder1 = new StringBuilder(paramString);
        if (-1 + (i - paramString.lastIndexOf('T')) <= 8)
          localStringBuilder1.append(".000");
        localStringBuilder1.append('Z');
        paramString = localStringBuilder1.toString();
        localDateFormat = this._formatISO8601_z;
        if (localDateFormat == null)
        {
          localDateFormat = (DateFormat)DATE_FORMAT_ISO8601_Z.clone();
          this._formatISO8601_z = localDateFormat;
        }
      }
    }
  }

  protected Date parseAsRFC1123(String paramString, ParsePosition paramParsePosition)
  {
    if (this._formatRFC1123 == null)
      this._formatRFC1123 = ((DateFormat)DATE_FORMAT_RFC1123.clone());
    return this._formatRFC1123.parse(paramString, paramParsePosition);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.StdDateFormat
 * JD-Core Version:    0.6.2
 */