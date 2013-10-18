.class public Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<",
        "Lorg/codehaus/jackson/map/JsonSerializableWithType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# static fields
.field public static final instance:Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;-><init>()V

    sput-object v0, Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->instance:Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/codehaus/jackson/map/JsonSerializableWithType;

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
    .line 25
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->serialize(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-interface {p1, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializableWithType;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 39
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p1, Lorg/codehaus/jackson/map/JsonSerializableWithType;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->serializeWithType(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public final serializeWithType(Lorg/codehaus/jackson/map/JsonSerializableWithType;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-interface {p1, p2, p3, p4}, Lorg/codehaus/jackson/map/JsonSerializableWithType;->serializeWithType(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    .line 47
    return-void
.end method
