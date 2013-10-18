.class public final Lcom/nianticproject/ingress/common/o/l;
.super Lorg/codehaus/jackson/map/JsonDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/JsonDeserializer",
        "<",
        "Lcom/google/a/d/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x11

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v3, :cond_0

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    const-string/jumbo v1, "Expected VALUE_STRING"

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->wrongTokenException(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/String;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v6, v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v4, "Expected 2 comma-separated 8-digit hex numbers.  Got "

    invoke-static {v0, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    const/16 v0, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v0, v4, :cond_2

    :goto_1
    const-string/jumbo v0, "Expected 2 comma-separated 8-digit hex numbers.  Got "

    invoke-static {v1, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    invoke-static {v3, v2, v5}, Lcom/nianticproject/ingress/shared/l;->a(Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0x9

    invoke-static {v3, v1, v6}, Lcom/nianticproject/ingress/shared/l;->a(Ljava/lang/String;II)I

    move-result v1

    int-to-long v2, v0

    int-to-long v0, v1

    invoke-static {v2, v3, v0, v1}, Lcom/google/a/d/u;->a(JJ)Lcom/google/a/d/u;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
