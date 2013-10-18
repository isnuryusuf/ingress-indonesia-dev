.class public Lcom/nianticproject/ingress/common/o/g;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/knobs/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/o/g;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/o/g;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 53
    new-instance v0, Lcom/nianticproject/ingress/knobs/j;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/j;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/f;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/m;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/m;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/c;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/c;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/shared/curation/a;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/curation/a;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/o;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/o;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/l;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/l;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/k;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/k;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/h;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/i;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/i;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/d;-><init>()V

    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "PortalKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "InventoryKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "ScannerKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "ClientFeatureKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "PortalDiscoveryKnobBundle"

    const-class v2, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "XmCostKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "recycleKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/RecycleKnobs;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "PortalModSharedKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "NearbyPortalKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "PlayerAnnounceSharedKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const-string/jumbo v1, "WeaponRangeKnobs"

    const-class v2, Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/o/g;->b:Lcom/google/a/c/dh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method

.method private static a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 61
    :try_start_0
    const-string/jumbo v0, "KnobBundleUpdateDeserializer.deserialize"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 63
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v5, v1

    move-wide v1, v3

    :goto_0
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v6, :cond_5

    .line 66
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 68
    const-string/jumbo v6, "bundleMap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v5, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected bundles object.  Unexpected text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 69
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v5

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_1
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    sget-object v0, Lcom/nianticproject/ingress/common/o/g;->b:Lcom/google/a/c/dh;

    invoke-virtual {v0, v6}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/o/g;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Skipping unknown bundleId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->readValueAsTree()Lorg/codehaus/jackson/JsonNode;

    :goto_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    invoke-virtual {v5, v6, v0}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v5

    .line 65
    :goto_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 70
    :cond_3
    const-string/jumbo v6, "syncTimestamp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 71
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_3

    .line 79
    :cond_4
    sget-object v6, Lcom/nianticproject/ingress/common/o/g;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Skipping unknown field name: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 82
    :cond_5
    cmp-long v0, v1, v3

    if-nez v0, :cond_6

    .line 83
    const-string/jumbo v0, "Did not find syncTimestamp field"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 85
    :cond_6
    if-nez v5, :cond_7

    .line 86
    const-string/jumbo v0, "Did not find bundleMap field"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 88
    :cond_7
    new-instance v0, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    invoke-direct {v0, v5, v1, v2}, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;-><init>(Lcom/google/a/c/dh;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0
.end method


# virtual methods
.method public synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/nianticproject/ingress/common/o/g;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    move-result-object v0

    return-object v0
.end method
