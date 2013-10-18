.class final Lcom/nianticproject/ingress/ch;
.super Lcom/nianticproject/ingress/common/f/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/NemesisApplication;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nianticproject/ingress/ch;->a:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/f/h;-><init>()V

    return-void
.end method

.method private static j()Ljava/lang/Void;
    .locals 19

    .prologue
    .line 173
    :try_start_0
    const-string/jumbo v1, "StartupSequencePrimer.forceJacksonInit"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    const-string/jumbo v16, "jnk "

    new-instance v17, Ljava/io/StringWriter;

    invoke-direct/range {v17 .. v17}, Ljava/io/StringWriter;-><init>()V

    sget-object v1, Lcom/nianticproject/ingress/common/o/c;->b:Lorg/codehaus/jackson/JsonFactory;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :try_start_1
    const-string/jumbo v1, "writeObject.DeviceInfo"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/nianticproject/ingress/shared/handshake/DeviceInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeObject(Ljava/lang/Object;)V

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonGenerator;->flush()V

    invoke-virtual/range {v18 .. v18}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string/jumbo v2, "writeValueAsString.ImmutableMap"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    sget-object v2, Lcom/nianticproject/ingress/common/o/c;->a:Lorg/codehaus/jackson/map/ObjectMapper;

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "2"

    const-string/jumbo v5, "3"

    const-string/jumbo v6, "4"

    invoke-static {v3, v4, v5, v6}, Lcom/google/a/c/dh;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/16 v1, 0x9

    new-array v5, v1, [Lcom/nianticproject/ingress/knobs/g;

    const/4 v1, 0x0

    new-instance v2, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;-><init>()V

    aput-object v2, v5, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/InventoryKnobs;-><init>()V

    aput-object v2, v5, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/ScannerKnobs;-><init>()V

    aput-object v2, v5, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;-><init>()V

    aput-object v2, v5, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;-><init>(B)V

    aput-object v2, v5, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/XmCostKnobs;-><init>()V

    aput-object v2, v5, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nianticproject/ingress/knobs/RecycleKnobs;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/RecycleKnobs;-><init>()V

    aput-object v2, v5, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;-><init>()V

    aput-object v2, v5, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

    invoke-direct {v2}, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;-><init>()V

    aput-object v2, v5, v1

    const/4 v2, 0x0

    array-length v6, v5

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v1, v5, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    sget-object v7, Lcom/nianticproject/ingress/common/o/c;->b:Lorg/codehaus/jackson/JsonFactory;

    const-string/jumbo v8, "{}"

    invoke-virtual {v7, v8}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v7

    const-string/jumbo v8, "readValueAs."

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/knobs/g;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v1

    add-int/2addr v1, v2

    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    :try_start_7
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "warmup error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 174
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 173
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    :catch_1
    move-exception v1

    :try_start_9
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    move v1, v2

    goto :goto_1

    :catchall_3
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_2
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/nianticproject/ingress/ch;->j()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
