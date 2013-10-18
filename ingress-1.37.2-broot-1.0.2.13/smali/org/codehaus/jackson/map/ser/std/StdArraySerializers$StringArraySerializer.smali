.class public final Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;
.super Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase",
        "<[",
        "Ljava/lang/String;",
        ">;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected _elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    const-class v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/TypeSerializer;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 98
    return-void
.end method

.method private serializeContentsSlow([Ljava/lang/String;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    aget-object v2, p1, v0

    .line 146
    if-nez v2, :cond_0

    .line 147
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 144
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {p4, v2, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public final _withValueTypeSerializer(Lorg/codehaus/jackson/map/TypeSerializer;)Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lorg/codehaus/jackson/map/ser/std/ContainerSerializerBase",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 106
    return-object p0
.end method

.method public final resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .parameter

    .prologue
    .line 162
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 167
    :cond_0
    return-void
.end method

.method public final bridge synthetic serializeContents(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->serializeContents([Ljava/lang/String;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serializeContents([Ljava/lang/String;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    array-length v1, p1

    .line 114
    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lorg/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->serializeContentsSlow([Ljava/lang/String;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/JsonSerializer;)V

    goto :goto_0

    .line 129
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 130
    aget-object v2, p1, v0

    .line 131
    if-nez v2, :cond_3

    .line 132
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 129
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_3
    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method
