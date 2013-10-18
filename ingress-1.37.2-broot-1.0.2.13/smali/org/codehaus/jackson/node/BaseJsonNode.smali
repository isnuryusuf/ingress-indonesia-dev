.class public abstract Lorg/codehaus/jackson/node/BaseJsonNode;
.super Lorg/codehaus/jackson/JsonNode;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/JsonSerializableWithType;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/codehaus/jackson/JsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.end method
