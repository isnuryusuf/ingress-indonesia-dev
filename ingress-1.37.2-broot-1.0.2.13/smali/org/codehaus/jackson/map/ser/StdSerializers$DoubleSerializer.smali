.class public final Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;
.super Lorg/codehaus/jackson/map/ser/std/NonTypedScalarSerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/NonTypedScalarSerializerBase",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field static final instance:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->instance:Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 215
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/std/NonTypedScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Double;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    .line 222
    return-void
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->serialize(Ljava/lang/Double;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
