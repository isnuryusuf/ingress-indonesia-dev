.class public final Lorg/codehaus/jackson/map/type/ArrayType;
.super Lorg/codehaus/jackson/map/type/TypeBase;
.source "SourceFile"


# instance fields
.field protected final _componentType:Lorg/codehaus/jackson/type/JavaType;

.field protected final _emptyArray:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    .line 33
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static construct(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-virtual {p0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 56
    new-instance v1, Lorg/codehaus/jackson/map/type/ArrayType;

    invoke-direct {v1, p0, v0, v2, v2}, Lorg/codehaus/jackson/map/type/ArrayType;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method protected final _narrow(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Incompatible narrowing operation: trying to narrow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/ArrayType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 134
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method protected final buildCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final containedType(I)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 223
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final containedTypeCount()I
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public final containedTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    if-nez p1, :cond_0

    const-string/jumbo v0, "E"

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 253
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 257
    check-cast p1, Lorg/codehaus/jackson/map/type/ArrayType;

    .line 258
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p1, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getContentType()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public final hasGenericTypes()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->hasGenericTypes()Z

    move-result v0

    return v0
.end method

.method public final isAbstract()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public final isArrayType()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public final isConcrete()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public final isContainerType()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public final narrowContentsBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 149
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object p0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[array type, component type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final widenContentsBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 160
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/codehaus/jackson/map/type/ArrayType;->construct(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object p0

    goto :goto_0
.end method

.method public final withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 5
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 76
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/type/ArrayType;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/ArrayType;->withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public final withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 4
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 66
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/codehaus/jackson/map/type/ArrayType;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/ArrayType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method

.method public final withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;
    .locals 4
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 86
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/ArrayType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_componentType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_emptyArray:Ljava/lang/Object;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/ArrayType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/codehaus/jackson/map/type/ArrayType;-><init>(Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/ArrayType;->withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/ArrayType;

    move-result-object v0

    return-object v0
.end method
