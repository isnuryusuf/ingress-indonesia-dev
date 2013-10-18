package com.nianticproject.ingress.common.o;

import com.google.a.c.dh;
import com.google.a.c.di;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.knobs.ClientWeaponKnobBundle;
import com.nianticproject.ingress.knobs.InventoryKnobs;
import com.nianticproject.ingress.knobs.KnobBundleUpdate;
import com.nianticproject.ingress.knobs.NearbyPortalKnobs;
import com.nianticproject.ingress.knobs.PlayerAnnounceSharedKnobs;
import com.nianticproject.ingress.knobs.PortalKnobBundle;
import com.nianticproject.ingress.knobs.PortalModSharedKnobs;
import com.nianticproject.ingress.knobs.RecycleKnobs;
import com.nianticproject.ingress.knobs.ScannerKnobs;
import com.nianticproject.ingress.knobs.XmCostKnobs;
import com.nianticproject.ingress.knobs.c;
import com.nianticproject.ingress.knobs.d;
import com.nianticproject.ingress.knobs.f;
import com.nianticproject.ingress.knobs.h;
import com.nianticproject.ingress.knobs.i;
import com.nianticproject.ingress.knobs.j;
import com.nianticproject.ingress.knobs.k;
import com.nianticproject.ingress.knobs.l;
import com.nianticproject.ingress.knobs.m;
import com.nianticproject.ingress.knobs.o;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle;
import com.nianticproject.ingress.shared.curation.a;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;

public class g extends JsonDeserializer<KnobBundleUpdate>
{
  private static final aa a = new aa(g.class);
  private static final dh<String, Class<? extends com.nianticproject.ingress.knobs.g>> b = dh.j().a("PortalKnobs", PortalKnobBundle.class).a("InventoryKnobs", InventoryKnobs.class).a("ScannerKnobs", ScannerKnobs.class).a("ClientFeatureKnobs", ClientFeatureKnobBundle.class).a("PortalDiscoveryKnobBundle", PortalDiscoveryKnobBundle.class).a("XmCostKnobs", XmCostKnobs.class).a("recycleKnobs", RecycleKnobs.class).a("PortalModSharedKnobs", PortalModSharedKnobs.class).a("NearbyPortalKnobs", NearbyPortalKnobs.class).a("PlayerAnnounceSharedKnobs", PlayerAnnounceSharedKnobs.class).a("WeaponRangeKnobs", ClientWeaponKnobBundle.class).a();

  static
  {
    new j();
    new f();
    new m();
    new c();
    new a();
    new o();
    new l();
    new k();
    new h();
    new i();
    new d();
  }

  private static KnobBundleUpdate a(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken1;
    long l;
    String str1;
    try
    {
      aj.a("KnobBundleUpdateDeserializer.deserialize");
      localJsonToken1 = paramJsonParser.nextToken();
      localdh = null;
      l = -1L;
      if (localJsonToken1 != JsonToken.FIELD_NAME)
        break label258;
      str1 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      if (!"bundleMap".equals(str1))
        break label210;
      if (paramJsonParser.getCurrentToken() != JsonToken.START_OBJECT)
        throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_OBJECT, "Expected bundles object.  Unexpected text: " + paramJsonParser.getText());
    }
    finally
    {
      aj.b();
    }
    di localdi = dh.j();
    JsonToken localJsonToken2 = paramJsonParser.nextToken();
    if (localJsonToken2 == JsonToken.FIELD_NAME)
    {
      String str2 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      Class localClass = (Class)b.get(str2);
      if (localClass == null)
      {
        a.a("Skipping unknown bundleId: " + str2);
        paramJsonParser.readValueAsTree();
      }
      while (true)
      {
        localJsonToken2 = paramJsonParser.nextToken();
        break;
        localdi.a(str2, (com.nianticproject.ingress.knobs.g)paramJsonParser.readValueAs(localClass));
      }
    }
    dh localdh = localdi.a();
    while (true)
    {
      localJsonToken1 = paramJsonParser.nextToken();
      break;
      label210: if ("syncTimestamp".equals(str1))
        l = Long.parseLong(paramJsonParser.getText());
      else
        a.a("Skipping unknown field name: " + str1);
    }
    label258: if (l == -1L)
      throw paramDeserializationContext.mappingException("Did not find syncTimestamp field");
    if (localdh == null)
      throw paramDeserializationContext.mappingException("Did not find bundleMap field");
    KnobBundleUpdate localKnobBundleUpdate = new KnobBundleUpdate(localdh, l);
    aj.b();
    return localKnobBundleUpdate;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.o.g
 * JD-Core Version:    0.6.2
 */