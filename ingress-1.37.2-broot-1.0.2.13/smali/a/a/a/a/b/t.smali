.class public abstract La/a/a/a/b/t;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/cb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "La/a/a/a/b/cb;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Long;)Z
    .locals 2
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/t;->d(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a()La/a/a/a/b/ce;
.end method

.method public a(J)Z
    .locals 3
    .parameter

    .prologue
    .line 185
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v0

    .line 186
    :cond_0
    invoke-interface {v0}, La/a/a/a/b/ce;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, La/a/a/a/b/ce;->a()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1}, La/a/a/a/b/t;->a(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 143
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    move v2, v1

    .line 145
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, La/a/a/a/b/t;->a(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 146
    :cond_0
    return v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/t;->a(J)Z

    move-result v0

    return v0
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
    .line 209
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 212
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/b/t;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 214
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public d(J)Z
    .locals 1
    .parameter

    .prologue
    .line 150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e(J)Z
    .locals 3
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v0

    .line 192
    :cond_0
    invoke-interface {v0}, La/a/a/a/b/ce;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-interface {v0}, La/a/a/a/b/ce;->a()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 194
    invoke-interface {v0}, La/a/a/a/b/ce;->remove()V

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()[J
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, La/a/a/a/b/t;->f()[J

    move-result-object v0

    return-object v0
.end method

.method public f()[J
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, La/a/a/a/b/t;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 61
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/a/b/cf;->a(La/a/a/a/b/ce;[J)I

    .line 62
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, La/a/a/a/b/t;->size()I

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
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/t;->e(J)Z

    move-result v0

    return v0
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
    .line 247
    const/4 v1, 0x0

    .line 248
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 250
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    .line 251
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/b/t;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 253
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
    .line 225
    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0}, La/a/a/a/b/t;->size()I

    move-result v0

    .line 228
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v3

    move v2, v1

    .line 229
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 232
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 236
    :cond_0
    return v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, La/a/a/a/b/t;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/a/c/m;->a(Ljava/util/Iterator;[Ljava/lang/Object;)I

    .line 124
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
    .line 129
    array-length v0, p1

    invoke-virtual {p0}, La/a/a/a/b/t;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/b/t;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 130
    :goto_0
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v1

    invoke-static {v1, v0}, La/a/a/a/c/m;->a(Ljava/util/Iterator;[Ljava/lang/Object;)I

    .line 131
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {p0}, La/a/a/a/b/t;->a()La/a/a/a/b/ce;

    move-result-object v4

    .line 263
    invoke-virtual {p0}, La/a/a/a/b/t;->size()I

    move-result v1

    .line 265
    const/4 v0, 0x1

    .line 267
    const-string/jumbo v2, "{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    .line 270
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 272
    :goto_1
    invoke-interface {v4}, La/a/a/a/b/ce;->a()J

    move-result-wide v5

    .line 276
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 271
    :cond_0
    const-string/jumbo v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 279
    :cond_1
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
