.class public abstract Lorg/codehaus/jackson/map/type/TypeBase;
.super Lorg/codehaus/jackson/type/JavaType;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/JsonSerializableWithType;


# instance fields
.field volatile _canonicalName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/type/JavaType;-><init>(Ljava/lang/Class;I)V

    .line 39
    iput-object p3, p0, Lorg/codehaus/jackson/map/type/TypeBase;->_valueHandler:Ljava/lang/Object;

    .line 40
    iput-object p4, p0, Lorg/codehaus/jackson/map/type/TypeBase;->_typeHandler:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract buildCanonicalName()Ljava/lang/String;
.end method

.method public getTypeHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBase;->_typeHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueHandler()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBase;->_valueHandler:Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBase;->toCanonical()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public serializeWithType(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 81
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/type/TypeBase;->serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V

    .line 82
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 83
    return-void
.end method

.method public toCanonical()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/TypeBase;->_canonicalName:Ljava/lang/String;

    .line 47
    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/TypeBase;->buildCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method
