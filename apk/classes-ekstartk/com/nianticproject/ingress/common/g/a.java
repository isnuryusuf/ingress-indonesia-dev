package com.nianticproject.ingress.common.g;

import com.google.a.c.dc;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public final class a
{
  private static final String[] a;
  private static AtomicInteger b;
  private static final ConcurrentHashMap<Integer, String> c;

  static
  {
    int i = 0;
    a = new String[] { "<a href=\"http://m.google.com/legalnotices\">Map Data Legal Notices</a>", "<h3>Portal Information</h3>2006-2012 Copyright, <a href=\"http://www.hmdb.org\">HMdb.org</a>", "<h3>Jackson JSON processor</h3><p>This copy of Jackson JSON processor is licensed under the Apache (Software) License, version 2.0 (\"the License\"). See the License for details about distribution rights, and the specific rights regarding derivate works.</p><p>You may obtain a copy of the License at: http://www.apache.org/licenses/</p>", "<h3>Apache HTTPClient and HTTPMime</h3><p>Apache HttpComponents HttpMime</p><p>Apache HttpComponents HttpClient</p><p>Copyright 1999-2011 The Apache Software Foundation</p><p>This product includes software developed byThe Apache Software Foundation (http://www.apache.org/).</p><p>This project contains annotations derived from JCIP-ANNOTATIONS</p><p>Copyright (c) 2005 Brian Goetz and Tim Peierls. See http://www.jcip.net</p>", "<h3>Apache Commons Codec</h3><p>Apache Commons Codec</p><p>Copyright 2002-2009 The Apache Software Foundation</p><p>This product includes software developed by The Apache Software Foundation (http://www.apache.org/).</p><p>---------------------------------------------</p><p>src/test/org/apache/commons/codec/language/DoubleMetaphoneTest.java contains test data from http://aspell.sourceforge.net/test/batch0.tab.</p><p>Copyright (C) 2002 Kevin Atkinson (kevina@gnu.org). Verbatim copying and distribution of this entire article is permitted in any medium, provided this notice is preserved.<p><p>---------------------------------------------</p>", "<h3>Apache Commons Logging</h3><p>Commons Logging</p><p>Copyright 2001-2007 The Apache Software Foundation</p><p>This product includes/uses software(s) developed by 'an unknown organization'</p><p>- Unnamed - avalon-framework:avalon-framework:jar:4.1.3</p><p>- Unnamed - log4j:log4j:jar:1.2.12</p><p>- Unnamed - logkit:logkit:jar:1.0.1</p>", "<h3>libgdx</h3><p>LibGDX is licensed under the Apache license version 2, which can be found here: http://www.apache.org/licenses/</p>", "<h3>fastutil</h3><p>fastutil is licensed under the Apache license version 2, which can be found here: http://www.apache.org/licenses/</p>" };
    b = new AtomicInteger(0);
    c = new ConcurrentHashMap();
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    while (i < j)
    {
      String str = arrayOfString[i];
      int k = b.addAndGet(1);
      c.put(Integer.valueOf(k), str);
      i++;
    }
  }

  public static dc<String> a()
  {
    return dc.a(c.values());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.g.a
 * JD-Core Version:    0.6.2
 */