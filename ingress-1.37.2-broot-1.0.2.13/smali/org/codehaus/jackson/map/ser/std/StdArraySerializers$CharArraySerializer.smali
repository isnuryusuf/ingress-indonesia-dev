.class public final Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;
.super Lorg/codehaus/jackson/map/ser/std/SerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/SerializerBase",
        "<[C>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 297
    const-class v0, [C

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final _writeArrayContents(Lorg/codehaus/jackson/JsonGenerator;[C)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 333
    const/4 v0, 0x0

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 334
    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v2}, Lorg/codehaus/jackson/JsonGenerator;->writeString([CII)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->serialize([CLorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serialize([CLorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 306
    invoke-direct {p0, p2, p1}, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lorg/codehaus/jackson/JsonGenerator;[C)V

    .line 307
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString([CII)V

    goto :goto_0
.end method

.method public final bridge synthetic serializeWithType(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->serializeWithType([CLorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public final serializeWithType([CLorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 321
    invoke-direct {p0, p2, p1}, Lorg/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lorg/codehaus/jackson/JsonGenerator;[C)V

    .line 322
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 328
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 325
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString([CII)V

    .line 326
    invoke-virtual {p4, p1, p2}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0
.end method
