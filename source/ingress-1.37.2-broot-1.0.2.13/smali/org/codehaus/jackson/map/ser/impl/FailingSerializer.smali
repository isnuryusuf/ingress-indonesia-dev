.class public final Lorg/codehaus/jackson/map/ser/impl/FailingSerializer;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final _msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 27
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
