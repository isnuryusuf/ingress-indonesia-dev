.class public final Lcom/nianticproject/ingress/common/o/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/codehaus/jackson/map/ObjectMapper;

.field public static final b:Lorg/codehaus/jackson/JsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    :try_start_0
    const-string/jumbo v2, "JacksonUtil.static"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 129
    new-instance v2, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v2}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_IS_GETTERS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->FAIL_ON_EMPTY_BEANS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/SerializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_ANNOTATIONS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_CREATORS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_SETTERS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->AUTO_DETECT_FIELDS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    sget-object v3, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v4, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v3, v4, :cond_0

    :goto_0
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {v2, v1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->configure(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v2}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/SerializationConfig;->getDefaultVisibilityChecker()Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withFieldVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withGetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withSetterVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lorg/codehaus/jackson/map/introspect/VisibilityChecker;->withCreatorVisibility(Lorg/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lorg/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setVisibilityChecker(Lorg/codehaus/jackson/map/introspect/VisibilityChecker;)V

    .line 130
    sput-object v2, Lcom/nianticproject/ingress/common/o/c;->a:Lorg/codehaus/jackson/map/ObjectMapper;

    new-instance v0, Lorg/codehaus/jackson/map/module/SimpleModule;

    const-string/jumbo v1, "nemesis"

    invoke-static {}, Lorg/codehaus/jackson/Version;->unknownVersion()Lorg/codehaus/jackson/Version;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/Version;)V

    const-class v1, Lcom/nianticproject/ingress/shared/model/e;

    const-class v3, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/gameentity/f;

    new-instance v3, Lcom/nianticproject/ingress/common/o/b;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/b;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/google/a/d/u;

    new-instance v3, Lcom/nianticproject/ingress/common/o/m;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/m;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonSerializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/gameentity/f;

    new-instance v3, Lcom/nianticproject/ingress/common/o/a;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/a;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    new-instance v3, Lcom/nianticproject/ingress/common/o/g;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/g;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/shared/plext/c;

    new-instance v3, Lcom/nianticproject/ingress/common/o/h;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/h;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/shared/af;

    new-instance v3, Lcom/nianticproject/ingress/common/o/k;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/k;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/shared/af;

    new-instance v3, Lcom/nianticproject/ingress/common/o/d;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/d;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addKeyDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/m;

    new-instance v3, Lcom/nianticproject/ingress/common/o/e;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/e;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addKeyDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/KeyDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/m;

    new-instance v3, Lcom/nianticproject/ingress/common/o/f;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/f;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/google/a/d/u;

    new-instance v3, Lcom/nianticproject/ingress/common/o/l;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/l;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/shared/rpc/push/a;

    new-instance v3, Lcom/nianticproject/ingress/common/o/j;

    invoke-direct {v3}, Lcom/nianticproject/ingress/common/o/j;-><init>()V

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/JsonDeserializer;)Lorg/codehaus/jackson/map/module/SimpleModule;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;

    const-class v3, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;

    invoke-virtual {v0, v1, v3}, Lorg/codehaus/jackson/map/module/SimpleModule;->addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lorg/codehaus/jackson/map/module/SimpleModule;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V

    .line 131
    sget-object v0, Lcom/nianticproject/ingress/common/o/c;->a:Lorg/codehaus/jackson/map/ObjectMapper;

    new-instance v1, Lcom/b/a/a/a/b;

    invoke-direct {v1}, Lcom/b/a/a/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->registerModule(Lorg/codehaus/jackson/map/Module;)V

    .line 132
    sget-object v0, Lcom/nianticproject/ingress/common/o/c;->a:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getJsonFactory()Lorg/codehaus/jackson/JsonFactory;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/o/c;->b:Lorg/codehaus/jackson/JsonFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 135
    return-void

    :cond_0
    move v0, v1

    .line 129
    goto/16 :goto_0

    .line 134
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
