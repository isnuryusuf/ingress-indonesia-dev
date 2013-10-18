package org.codehaus.jackson;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class JsonNode
  implements Iterable<JsonNode>
{
  protected static final List<JsonNode> NO_NODES = Collections.emptyList();
  protected static final List<String> NO_STRINGS = Collections.emptyList();

  public abstract String asText();

  public abstract boolean equals(Object paramObject);

  public JsonNode get(String paramString)
  {
    return null;
  }

  public Iterator<JsonNode> getElements()
  {
    return NO_NODES.iterator();
  }

  public final Iterator<JsonNode> iterator()
  {
    return getElements();
  }

  public int size()
  {
    return 0;
  }

  public abstract String toString();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonNode
 * JD-Core Version:    0.6.2
 */