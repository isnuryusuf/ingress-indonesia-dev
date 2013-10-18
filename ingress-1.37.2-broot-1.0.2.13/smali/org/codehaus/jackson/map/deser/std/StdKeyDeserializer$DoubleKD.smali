.class final Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;
.super Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Double;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;->_parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic _parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;->_parse(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
