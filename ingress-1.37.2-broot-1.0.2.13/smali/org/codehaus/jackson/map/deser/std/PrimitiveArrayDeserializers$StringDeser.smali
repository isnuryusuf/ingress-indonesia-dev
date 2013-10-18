.class final Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;
.super Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 144
    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 155
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_2

    :goto_1
    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;->handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->leaseObjectBuffer()Lorg/codehaus/jackson/map/util/ObjectBuffer;

    move-result-object v5

    .line 122
    invoke-virtual {v5}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 126
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    .line 128
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 129
    :goto_2
    array-length v4, v2

    if-lt v0, v4, :cond_3

    .line 130
    invoke-virtual {v5, v2}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v4, v1

    .line 133
    :goto_3
    add-int/lit8 v0, v4, 0x1

    aput-object v3, v2, v4

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 135
    :cond_2
    const-class v1, Ljava/lang/String;

    invoke-virtual {v5, v2, v0, v1}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 136
    invoke-virtual {p2, v5}, Lorg/codehaus/jackson/map/DeserializationContext;->returnObjectBuffer(Lorg/codehaus/jackson/map/util/ObjectBuffer;)V

    goto :goto_0

    :cond_3
    move v4, v0

    goto :goto_3
.end method
