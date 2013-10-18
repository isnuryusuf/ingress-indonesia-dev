package com.nianticproject.ingress.push;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class c extends LinkedHashMap<String, Boolean>
{
  c(NemesisNotificationsService paramNemesisNotificationsService)
  {
  }

  protected final boolean removeEldestEntry(Map.Entry<String, Boolean> paramEntry)
  {
    return size() > 100;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.push.c
 * JD-Core Version:    0.6.2
 */