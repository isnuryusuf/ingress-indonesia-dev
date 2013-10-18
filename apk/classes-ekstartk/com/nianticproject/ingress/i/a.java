package com.nianticproject.ingress.i;

import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.a.br;
import com.google.a.c.dc;
import com.google.a.c.dh;
import com.nianticproject.ingress.gameentity.components.portal.PhotoStreamInfo;
import com.nianticproject.ingress.shared.portal.PlayerPortalImage;
import com.nianticproject.ingress.shared.portal.PortalImagePage;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class a
{
  private final String a;
  private final PhotoStreamInfo b;
  private final HashSet<String> c = new HashSet();
  private final ArrayList<PortalImagePage> d = new ArrayList();
  private final HashMap<String, ak<Boolean, Integer>> e = new HashMap();
  private boolean f;

  public a(String paramString, PhotoStreamInfo paramPhotoStreamInfo)
  {
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = paramString;
      this.b = ((PhotoStreamInfo)an.a(paramPhotoStreamInfo));
      this.f = false;
      return;
    }
  }

  public static boolean a(String paramString)
  {
    if (br.b(paramString))
      return false;
    return paramString.startsWith("this_is_not_a_true_URL_its_that_fuzzy_image");
  }

  public final boolean a()
  {
    return this.f;
  }

  public final boolean a(PortalImagePage paramPortalImagePage, int paramInt, HashMap<String, com.nianticproject.ingress.shared.portal.a> paramHashMap, String paramString)
  {
    if (paramString != null);
    while (this.c.contains(paramString))
    {
      return this.f;
      paramString = "";
    }
    this.c.add(paramString);
    Iterator localIterator = paramPortalImagePage.portalImages.iterator();
    while (localIterator.hasNext())
    {
      PlayerPortalImage localPlayerPortalImage2 = (PlayerPortalImage)localIterator.next();
      this.e.put(localPlayerPortalImage2.c(), ak.a(Boolean.valueOf(localPlayerPortalImage2.f()), Integer.valueOf(localPlayerPortalImage2.e())));
    }
    this.d.add(paramPortalImagePage);
    int i = paramPortalImagePage.portalImages.size();
    if ((i < paramInt) || ((i == paramInt) && (paramPortalImagePage.cursor == null)))
    {
      this.f = true;
      if ((this.d.size() == 1) && (paramPortalImagePage.portalImages.size() == 0))
      {
        PlayerPortalImage localPlayerPortalImage1 = new PlayerPortalImage("this_is_not_a_true_GUID_its_that_fuzzy_image", "this_is_not_a_true_URL_its_that_fuzzy_image", null, 0);
        this.d.add(new PortalImagePage(Arrays.asList(new PlayerPortalImage[] { localPlayerPortalImage1 })));
        this.e.put("this_is_not_a_true_GUID_its_that_fuzzy_image", ak.a(Boolean.FALSE, Integer.valueOf(0)));
        paramHashMap.put("this_is_not_a_true_GUID_its_that_fuzzy_image", localPlayerPortalImage1);
      }
    }
    return this.f;
  }

  public final boolean a(String paramString, boolean paramBoolean)
  {
    ak localak = (ak)this.e.get(paramString);
    Boolean localBoolean = (Boolean)localak.a;
    if (localBoolean == null)
      return false;
    if (paramBoolean == localBoolean.booleanValue())
      return false;
    int i = ((Integer)localak.b).intValue();
    if (paramBoolean);
    for (int j = i + 1; ; j = i - 1)
    {
      this.e.put(paramString, ak.a(Boolean.valueOf(paramBoolean), Integer.valueOf(j)));
      return true;
    }
  }

  public final PhotoStreamInfo b()
  {
    return this.b;
  }

  public final List<PortalImagePage> c()
  {
    return dc.a(this.d);
  }

  public final Map<String, ak<Boolean, Integer>> d()
  {
    return dh.a(this.e);
  }

  public final void e()
  {
    this.d.clear();
    this.e.clear();
  }

  public final String toString()
  {
    return "ImageStream [portalGuid=" + this.a + ", info=" + this.b + ", pages=" + this.d + ", complete=" + this.f + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.i.a
 * JD-Core Version:    0.6.2
 */