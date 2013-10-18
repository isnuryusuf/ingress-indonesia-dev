.class abstract Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/codehaus/jackson/JsonNode;",
        ">",
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected _handleDuplicateField(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    return-void
.end method

.method protected final deserializeAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/JsonNode;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    :pswitch_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 247
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 250
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->POJONode(Ljava/lang/Object;)Lorg/codehaus/jackson/node/POJONode;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_5
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_6
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 264
    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_INTEGER:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_INTEGER_FOR_INTS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->INT:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-ne v0, v1, :cond_2

    .line 269
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(I)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(J)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 276
    :pswitch_7
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;

    move-result-object v0

    .line 277
    sget-object v1, Lorg/codehaus/jackson/JsonParser$NumberType;->BIG_DECIMAL:Lorg/codehaus/jackson/JsonParser$NumberType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lorg/codehaus/jackson/map/DeserializationConfig$Feature;->USE_BIG_DECIMAL_FOR_FLOATS:Lorg/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->isEnabled(Lorg/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->numberNode(D)Lorg/codehaus/jackson/node/NumericNode;

    move-result-object v0

    goto :goto_0

    .line 285
    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->booleanNode(Z)Lorg/codehaus/jackson/node/BooleanNode;

    move-result-object v0

    goto :goto_0

    .line 291
    :pswitch_a
    invoke-virtual {p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->nullNode()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected final deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-virtual {p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->arrayNode()Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    .line 222
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;->add(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 230
    :pswitch_3
    return-object v0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p3}, Lorg/codehaus/jackson/node/JsonNodeFactory;->objectNode()Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 189
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_0

    .line 190
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_2

    .line 193
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 195
    sget-object v0, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 208
    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {p0, v2, v1, v3, v0}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Ljava/lang/String;Lorg/codehaus/jackson/node/ObjectNode;Lorg/codehaus/jackson/JsonNode;Lorg/codehaus/jackson/JsonNode;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeObject(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    goto :goto_1

    .line 200
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/BaseNodeDeserializer;->deserializeArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/node/JsonNodeFactory;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v0

    goto :goto_1

    .line 203
    :pswitch_2
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_2
    return-object v1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromAny(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
