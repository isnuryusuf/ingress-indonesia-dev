package com.nianticproject.ingress.common.o;

import com.google.a.d.u;
import com.nianticproject.ingress.gameentity.components.portal.ResonatorV2;
import com.nianticproject.ingress.gameentity.components.portal.SimpleResonatorV2;
import com.nianticproject.ingress.knobs.KnobBundleUpdate;
import com.nianticproject.ingress.shared.af;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.model.SimpleGameStateUpdate;
import org.codehaus.jackson.JsonFactory;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.SerializationConfig;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.module.SimpleModule;

public final class c
{
  public static final ObjectMapper a;
  public static final JsonFactory b;

  static
  {
    boolean bool = true;
    try
    {
      aj.a("JacksonUtil.static");
      ObjectMapper localObjectMapper = new ObjectMapper();
      localObjectMapper.configure(SerializationConfig.Feature.USE_ANNOTATIONS, true);
      localObjectMapper.configure(SerializationConfig.Feature.AUTO_DETECT_GETTERS, false);
      localObjectMapper.configure(SerializationConfig.Feature.AUTO_DETECT_IS_GETTERS, false);
      localObjectMapper.configure(SerializationConfig.Feature.AUTO_DETECT_FIELDS, false);
      localObjectMapper.configure(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS, false);
      localObjectMapper.configure(DeserializationConfig.Feature.USE_ANNOTATIONS, true);
      localObjectMapper.configure(DeserializationConfig.Feature.AUTO_DETECT_CREATORS, false);
      localObjectMapper.configure(DeserializationConfig.Feature.AUTO_DETECT_SETTERS, false);
      localObjectMapper.configure(DeserializationConfig.Feature.AUTO_DETECT_FIELDS, false);
      if (ag.a == ah.a);
      while (true)
      {
        localObjectMapper.configure(DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES, bool);
        localObjectMapper.setVisibilityChecker(localObjectMapper.getSerializationConfig().getDefaultVisibilityChecker().withFieldVisibility(JsonAutoDetect.Visibility.NONE).withGetterVisibility(JsonAutoDetect.Visibility.NONE).withSetterVisibility(JsonAutoDetect.Visibility.NONE).withCreatorVisibility(JsonAutoDetect.Visibility.NONE));
        a = localObjectMapper;
        SimpleModule localSimpleModule = new SimpleModule("nemesis", Version.unknownVersion());
        localSimpleModule.addAbstractTypeMapping(com.nianticproject.ingress.shared.model.e.class, SimpleGameStateUpdate.class);
        localSimpleModule.addSerializer(com.nianticproject.ingress.gameentity.f.class, new b());
        localSimpleModule.addSerializer(u.class, new m());
        localSimpleModule.addDeserializer(com.nianticproject.ingress.gameentity.f.class, new a());
        localSimpleModule.addDeserializer(KnobBundleUpdate.class, new g());
        localSimpleModule.addDeserializer(com.nianticproject.ingress.shared.plext.c.class, new h());
        localSimpleModule.addDeserializer(af.class, new k());
        localSimpleModule.addKeyDeserializer(af.class, new d());
        localSimpleModule.addKeyDeserializer(com.nianticproject.ingress.gameentity.components.m.class, new e());
        localSimpleModule.addDeserializer(com.nianticproject.ingress.gameentity.components.m.class, new f());
        localSimpleModule.addDeserializer(u.class, new l());
        localSimpleModule.addDeserializer(com.nianticproject.ingress.shared.rpc.push.a.class, new j());
        localSimpleModule.addAbstractTypeMapping(ResonatorV2.class, SimpleResonatorV2.class);
        localObjectMapper.registerModule(localSimpleModule);
        a.registerModule(new com.b.a.a.a.b());
        b = a.getJsonFactory();
        return;
        bool = false;
      }
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.o.c
 * JD-Core Version:    0.6.2
 */