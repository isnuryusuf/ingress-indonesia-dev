.class public Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
        "<",
        "Ljava/util/EnumSet",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum;",
            ">;"
        }
    .end annotation
.end field

.field protected final _enumDeserializer:Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Ljava/util/EnumSet;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 35
    new-instance v0, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumDeserializer:Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;

    .line 37
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method private constructSet()Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/EnumSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/EnumSet",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 49
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->constructSet()Ljava/util/EnumSet;

    move-result-object v0

    .line 52
    :goto_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_2

    .line 58
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_1

    .line 59
    iget-object v0, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumClass:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lorg/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 61
    :cond_1
    iget-object v1, p0, Lorg/codehaus/jackson/map/deser/std/EnumSetDeserializer;->_enumDeserializer:Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_2
    return-object v0
.end method

.method public deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
