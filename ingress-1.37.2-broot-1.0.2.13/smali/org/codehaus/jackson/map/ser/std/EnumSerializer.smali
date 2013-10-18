.class public Lorg/codehaus/jackson/map/ser/std/EnumSerializer;
.super Lorg/codehaus/jackson/map/ser/std/ScalarSerializerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/ser/std/ScalarSerializerBase",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field protected final _values:Lorg/codehaus/jackson/map/util/EnumValues;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/util/EnumValues;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/ser/std/ScalarSerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 37
    iput-object p1, p0, Lorg/codehaus/jackson/map/ser/std/EnumSerializer;->_values:Lorg/codehaus/jackson/map/util/EnumValues;

    .line 38
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lorg/codehaus/jackson/map/SerializationConfig;Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;)Lorg/codehaus/jackson/map/ser/std/EnumSerializer;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lorg/codehaus/jackson/map/SerializationConfig;",
            "Lorg/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Lorg/codehaus/jackson/map/ser/std/EnumSerializer;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lorg/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lorg/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 45
    sget-object v1, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_TO_STRING:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/map/SerializationConfig;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/EnumValues;->constructFromToString(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v0

    .line 47
    :goto_0
    new-instance v1, Lorg/codehaus/jackson/map/ser/std/EnumSerializer;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/map/ser/std/EnumSerializer;-><init>(Lorg/codehaus/jackson/map/util/EnumValues;)V

    return-object v1

    .line 45
    :cond_0
    invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/EnumValues;->constructFromName(Ljava/lang/Class;Lorg/codehaus/jackson/map/AnnotationIntrospector;)Lorg/codehaus/jackson/map/util/EnumValues;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getEnumValues()Lorg/codehaus/jackson/map/util/EnumValues;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/EnumSerializer;->_values:Lorg/codehaus/jackson/map/util/EnumValues;

    return-object v0
.end method

.method public final serialize(Ljava/lang/Enum;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
            "Lorg/codehaus/jackson/JsonGenerator;",
            "Lorg/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lorg/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_ENUMS_USING_INDEX:Lorg/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lorg/codehaus/jackson/map/SerializerProvider;->isEnabled(Lorg/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/ser/std/EnumSerializer;->_values:Lorg/codehaus/jackson/map/util/EnumValues;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/util/EnumValues;->serializedValueFor(Ljava/lang/Enum;)Lorg/codehaus/jackson/io/SerializedString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Lorg/codehaus/jackson/SerializableString;)V

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/ser/std/EnumSerializer;->serialize(Ljava/lang/Enum;Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
