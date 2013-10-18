.class public Lorg/codehaus/jackson/map/MappingJsonFactory;
.super Lorg/codehaus/jackson/JsonFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/MappingJsonFactory;-><init>(Lorg/codehaus/jackson/map/ObjectMapper;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/JsonFactory;-><init>(Lorg/codehaus/jackson/ObjectCodec;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>(Lorg/codehaus/jackson/JsonFactory;)V

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/MappingJsonFactory;->setCodec(Lorg/codehaus/jackson/ObjectCodec;)Lorg/codehaus/jackson/JsonFactory;

    .line 45
    :cond_0
    return-void
.end method
