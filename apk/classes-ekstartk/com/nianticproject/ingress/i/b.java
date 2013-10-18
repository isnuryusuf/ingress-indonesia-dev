package com.nianticproject.ingress.i;

import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.gameentity.components.portal.PhotoStreamInfo;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import com.nianticproject.ingress.shared.portal.PortalImagePage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class b
{
  private final HashSet<c> a = new HashSet();
  private final HashMap<String, a> b = new HashMap();
  private final LinkedList<String> c = new LinkedList();
  private final HashMap<String, com.nianticproject.ingress.shared.portal.a> d = new HashMap();

  public static List<PlayerPortalImage> a(a parama)
  {
    ArrayList localArrayList = new ArrayList();
    if (parama == null)
      return localArrayList;
    Iterator localIterator = parama.c().iterator();
    while (localIterator.hasNext())
      localArrayList.addAll(((PortalImagePage)localIterator.next()).portalImages);
    return localArrayList;
  }

  private void a()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).a(this);
  }

  private void d(String paramString)
  {
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Portal GUID is empty!");
      this.c.remove(paramString);
      this.c.addLast(paramString);
      if (this.b.keySet().size() <= 2)
        break;
      String str = (String)this.c.removeFirst();
      a locala = (a)this.b.remove(str);
      if (locala == null)
        break;
      Iterator localIterator1 = locala.c().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((PortalImagePage)localIterator1.next()).portalImages.iterator();
        while (localIterator2.hasNext())
        {
          PlayerPortalImage localPlayerPortalImage = (PlayerPortalImage)localIterator2.next();
          this.d.remove(localPlayerPortalImage.c());
        }
      }
    }
  }

  public final a a(String paramString)
  {
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Portal GUID is empty!");
      d(paramString);
      return (a)this.b.get(paramString);
    }
  }

  public final void a(c paramc)
  {
    this.a.add(paramc);
  }

  public final void a(String paramString, PhotoStreamInfo paramPhotoStreamInfo)
  {
    if (this.b.containsKey(paramString))
      return;
    a locala = new a(paramString, paramPhotoStreamInfo);
    this.b.put(paramString, locala);
    d(paramString);
    a();
  }

  public final void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    boolean bool1 = true;
    boolean bool2;
    label28: a locala;
    if (!br.b(paramString1))
    {
      bool2 = bool1;
      an.a(bool2, "Portal GUID is empty!");
      if (br.b(paramString2))
        break label60;
      an.a(bool1, "Photo GUID is empty!");
      locala = (a)this.b.get(paramString1);
      if (locala != null)
        break label66;
    }
    label60: label66: 
    do
    {
      return;
      bool2 = false;
      break;
      bool1 = false;
      break label28;
      d(paramString1);
    }
    while (!locala.a(paramString2, paramBoolean));
    a();
  }

  public final boolean a(String paramString1, PortalImagePage paramPortalImagePage, int paramInt, String paramString2)
  {
    if (!br.b(paramString1));
    a locala;
    for (boolean bool1 = true; ; bool1 = false)
    {
      an.a(bool1, "Portal GUID is empty!");
      an.a(paramPortalImagePage, "Image page is null!");
      locala = (a)this.b.get(paramString1);
      if (locala != null)
        break;
      throw new IllegalStateException("No stream for " + paramString1);
    }
    d(paramString1);
    boolean bool2 = locala.a(paramPortalImagePage, paramInt, this.d, paramString2);
    Iterator localIterator = paramPortalImagePage.portalImages.iterator();
    while (localIterator.hasNext())
    {
      PlayerPortalImage localPlayerPortalImage = (PlayerPortalImage)localIterator.next();
      String str = localPlayerPortalImage.c();
      if (!br.b(str))
        this.d.put(str, localPlayerPortalImage);
    }
    a();
    return bool2;
  }

  public final void b(c paramc)
  {
    this.a.remove(paramc);
  }

  public final void b(String paramString)
  {
    if (!br.b(paramString));
    a locala;
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Portal GUID is empty!");
      locala = (a)this.b.get(paramString);
      if (locala != null)
        break;
      return;
    }
    Iterator localIterator1 = locala.c().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((PortalImagePage)localIterator1.next()).portalImages.iterator();
      while (localIterator2.hasNext())
      {
        PlayerPortalImage localPlayerPortalImage = (PlayerPortalImage)localIterator2.next();
        this.d.remove(localPlayerPortalImage.c());
      }
    }
    locala.e();
    d(paramString);
    a();
  }

  public final com.nianticproject.ingress.shared.portal.a c(String paramString)
  {
    return (com.nianticproject.ingress.shared.portal.a)this.d.get(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.i.b
 * JD-Core Version:    0.6.2
 */