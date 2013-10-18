.class public final Lorg/codehaus/jackson/map/type/CollectionType;
.super Lorg/codehaus/jackson/map/type/CollectionLikeType;
.source "SourceFile"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/jackson/map/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
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
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, p1, v1, v2, v2}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final narrowContentsBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 5
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
    .line 32
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 35
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[collection type; class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

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
    .locals 5
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
    .line 43
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 46
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 5
    .parameter

    .prologue
    .line 66
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 4
    .parameter

    .prologue
    .line 59
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_valueHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public final withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;
    .locals 4
    .parameter

    .prologue
    .line 73
    new-instance v0, Lorg/codehaus/jackson/map/type/CollectionType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_elementType:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/CollectionType;->_typeHandler:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/codehaus/jackson/map/type/CollectionType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/CollectionType;

    move-result-object v0

    return-object v0
.end method
