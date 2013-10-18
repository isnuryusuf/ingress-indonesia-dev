.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;
.super Lorg/codehaus/jackson/map/ser/std/NonTypedScalarSerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/NonTypedScalarSerializerBase",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field final _forPrimitive:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/std/NonTypedScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    .line 51
    iput-boolean p1, p0, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;->_forPrimitive:Z

    .line 52
    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Boolean;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 59
    return-void
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;->serialize(Ljava/lang/Boolean;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
