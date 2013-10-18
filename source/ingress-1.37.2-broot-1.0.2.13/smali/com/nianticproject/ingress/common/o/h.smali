.class public Lcom/nianticproject/ingress/common/o/h;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Lcom/nianticproject/ingress/shared/plext/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/o/h;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/o/h;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method

.method private a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/nianticproject/ingress/shared/plext/c;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 65
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected markup object.  Unexpected text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 73
    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/plext/d;->valueOf(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/d;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 82
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 85
    if-eqz v1, :cond_1

    .line 87
    sget-object v0, Lcom/nianticproject/ingress/shared/plext/b;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 89
    new-instance v2, Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/a;

    invoke-direct {v2, v1, v0}, Lcom/nianticproject/ingress/shared/plext/c;-><init>(Lcom/nianticproject/ingress/shared/plext/d;Lcom/nianticproject/ingress/shared/plext/a;)V

    move-object v0, v2

    .line 95
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_3

    .line 96
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected components object, unexpected text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 77
    :catch_0
    move-exception v1

    .line 79
    sget-object v2, Lcom/nianticproject/ingress/common/o/h;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Unknown MarkupType (%s), treating as text..."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Lcom/nianticproject/ingress/common/o/i;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/o/i;-><init>(Lcom/nianticproject/ingress/common/o/h;)V

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonParser;->readValueAs(Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "plain"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lorg/codehaus/jackson/JsonParseException;

    const-string/jumbo v2, "Plain text fallback failed, could not find \"plain\" key in argument set, keySet: %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v1

    :cond_2
    new-instance v0, Lcom/nianticproject/ingress/shared/plext/c;

    sget-object v2, Lcom/nianticproject/ingress/shared/plext/d;->a:Lcom/nianticproject/ingress/shared/plext/d;

    new-instance v3, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;

    invoke-direct {v3, v1}, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/nianticproject/ingress/shared/plext/c;-><init>(Lcom/nianticproject/ingress/shared/plext/d;Lcom/nianticproject/ingress/shared/plext/a;)V

    goto :goto_1

    .line 100
    :cond_3
    return-object v0
.end method

.method private b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/nianticproject/ingress/shared/plext/c;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    :try_start_0
    const-string/jumbo v0, "MarkupEntryDeserializer.deserialize"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/o/h;->a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/nianticproject/ingress/shared/plext/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 114
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_1
    sget-object v1, Lcom/nianticproject/ingress/common/o/h;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Exception while deserializing MarkupEntry"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 114
    sget-object v0, Lcom/nianticproject/ingress/shared/plext/b;->b:Lcom/nianticproject/ingress/shared/plext/c;

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/o/h;->b(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Lcom/nianticproject/ingress/shared/plext/c;

    move-result-object v0

    return-object v0
.end method
