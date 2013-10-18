.class public final Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;
.super Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lorg/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected _serializer:Lorg/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/jackson/map/JsonSerializer",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/codehaus/jackson/map/ser/std/StaticListSerializerBase;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)V

    .line 35
    return-void
.end method

.method private final serializeContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 84
    :goto_0
    if-ge v1, v2, :cond_1

    .line 85
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 84
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {p0, p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 95
    :cond_1
    return-void
.end method

.method private final serializeUsingCustom(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    .line 102
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 103
    iget-object v3, p0, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 104
    :goto_0
    if-ge v1, v2, :cond_1

    .line 105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p3, p2}, Lorg/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v3, v0, p2, p3}, Lorg/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {p0, p3, v0, p1, v1}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->wrapAndThrow(Lorg/codehaus/jackson/map/SerializerProvider;Ljava/lang/Throwable;Ljava/lang/Object;I)V

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public final resolve(Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_property:Lorg/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lorg/codehaus/jackson/map/BeanProperty;)Lorg/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->isDefaultSerializer(Lorg/codehaus/jackson/map/JsonSerializer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iput-object v0, p0, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    .line 49
    :cond_0
    return-void
.end method

.method public final bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serialize(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serialize(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 56
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 61
    :goto_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 62
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method

.method public final bridge synthetic serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeWithType(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public final serializeWithType(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            "Lorg/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 70
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->_serializer:Lorg/codehaus/jackson/map/JsonSerializer;

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeContents(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 75
    :goto_0
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 76
    return-void

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/IndexedStringListSerializer;->serializeUsingCustom(Ljava/util/List;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0
.end method
