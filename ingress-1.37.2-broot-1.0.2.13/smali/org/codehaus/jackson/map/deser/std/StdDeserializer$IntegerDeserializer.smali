.class public final Lorg/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 788
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 789
    return-void
.end method


# virtual methods
.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;->_parseInteger(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 782
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Integer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 805
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;->_parseInteger(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$IntegerDeserializer;->deserializeWithType(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;Lorg/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
