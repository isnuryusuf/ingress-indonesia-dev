.class public final Lorg/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Float;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$PrimitiveOrWrapperDeserializer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 833
    return-void
.end method


# virtual methods
.method public final deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Float;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 842
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;->_parseFloat(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 826
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer$FloatDeserializer;->deserialize(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
