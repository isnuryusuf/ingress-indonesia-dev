.class public Lorg/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field protected static final instance:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;->instance:Lorg/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;->serialize(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p3, p1, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 78
    return-void
.end method
