package com.badlogic.gdx.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public enum JsonWriter$OutputType
{
  private static Pattern javascriptPattern = Pattern.compile("[a-zA-Z_$][a-zA-Z_$0-9]*");
  private static Pattern minimalPattern = Pattern.compile("[a-zA-Z0-9_$][^:}\\], ]*");

  static
  {
    javascript = new OutputType("javascript", 1);
    minimal = new OutputType("minimal", 2);
    OutputType[] arrayOfOutputType = new OutputType[3];
    arrayOfOutputType[0] = json;
    arrayOfOutputType[1] = javascript;
    arrayOfOutputType[2] = minimal;
  }

  public final String quoteName(String paramString)
  {
    String str = paramString.replace("\\", "\\\\");
    switch (JsonWriter.1.$SwitchMap$com$badlogic$gdx$utils$JsonWriter$OutputType[ordinal()])
    {
    default:
      str = "\"" + str.replace("\"", "\\\"") + '"';
    case 1:
    case 2:
    }
    do
    {
      do
        return str;
      while (minimalPattern.matcher(str).matches());
      return "\"" + str.replace("\"", "\\\"") + '"';
    }
    while (javascriptPattern.matcher(str).matches());
    return "\"" + str.replace("\"", "\\\"") + '"';
  }

  public final String quoteValue(String paramString)
  {
    String str = paramString.replace("\\", "\\\\");
    if ((this == minimal) && (!str.equals("true")) && (!str.equals("false")) && (!str.equals("null")) && (minimalPattern.matcher(str).matches()))
      return str;
    return "\"" + str.replace("\"", "\\\"") + '"';
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.JsonWriter.OutputType
 * JD-Core Version:    0.6.2
 */