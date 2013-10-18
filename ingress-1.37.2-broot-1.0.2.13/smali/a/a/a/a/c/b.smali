.class public abstract La/a/a/a/c/b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TK;>;",
        "La/a/a/a/c/j",
        "<TK;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()La/a/a/a/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/l",
            "<TK;>;"
        }
    .end annotation
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 71
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    move v2, v1

    .line 72
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/c/b;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 73
    :cond_0
    return v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 92
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/c/b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 93
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, La/a/a/a/c/b;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, La/a/a/a/c/b;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    .line 122
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/c/b;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 123
    :cond_0
    return v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, La/a/a/a/c/b;->size()I

    move-result v0

    .line 103
    invoke-virtual {p0}, La/a/a/a/c/b;->a()La/a/a/a/c/l;

    move-result-object v3

    move v2, v1

    .line 104
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 107
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 110
    :cond_0
    return v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, La/a/a/a/c/b;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    invoke-virtual {p0}, La/a/a/a/c/b;->a()La/a/a/a/c/l;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/a/c/m;->a(Ljava/util/Iterator;[Ljava/lang/Object;)I

    .line 55
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 59
    array-length v0, p1

    invoke-virtual {p0}, La/a/a/a/c/b;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/c/b;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 60
    :goto_0
    invoke-virtual {p0}, La/a/a/a/c/b;->a()La/a/a/a/c/l;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/a/c/m;->a(Ljava/util/Iterator;[Ljava/lang/Object;)I

    .line 61
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {p0}, La/a/a/a/c/b;->a()La/a/a/a/c/l;

    move-result-object v4

    .line 131
    invoke-virtual {p0}, La/a/a/a/c/b;->size()I

    move-result v1

    .line 133
    const/4 v0, 0x1

    .line 134
    const-string/jumbo v2, "{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    .line 136
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_1
    invoke-interface {v4}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v1

    .line 139
    if-ne p0, v1, :cond_1

    const-string/jumbo v1, "(this collection)"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 137
    :cond_0
    const-string/jumbo v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
