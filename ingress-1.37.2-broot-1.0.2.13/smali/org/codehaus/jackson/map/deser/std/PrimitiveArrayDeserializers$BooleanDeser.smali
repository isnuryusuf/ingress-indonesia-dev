.class final Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;
.super Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base",
        "<[Z>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 229
    const-class v0, [Z

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    .line 264
    :cond_0
    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 267
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;->_parseBooleanPrimitive(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Z

    move-result v2

    aput-boolean v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Z

    move-result-object v0

    return-object v0
.end method

.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;->handleNonArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)[Z

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/map/DeserializationContext;->getArrayBuilders()Lorg/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders;->getBooleanBuilder()Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move-object v2, v0

    move v0, v1

    .line 242
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v5, :cond_1

    .line 244
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;->_parseBooleanPrimitive(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Z

    move-result v5

    .line 245
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 246
    invoke-virtual {v4, v2, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    move v3, v1

    move-object v2, v0

    .line 249
    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-boolean v5, v2, v3

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {v4, v2, v0}, Lorg/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_2
.end method
