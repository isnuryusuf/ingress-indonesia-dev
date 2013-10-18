.class public abstract La/a/a/a/b/b;
.super La/a/a/a/b/a;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ad;
.implements Ljava/io/Serializable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, La/a/a/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()La/a/a/a/b/cl;
    .locals 1

    .prologue
    .line 189
    new-instance v0, La/a/a/a/b/c;

    invoke-direct {v0, p0}, La/a/a/a/b/c;-><init>(La/a/a/a/b/b;)V

    return-object v0
.end method

.method public b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, La/a/a/a/b/b;->c()La/a/a/a/b/cb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La/a/a/a/b/cb;->a(J)Z

    move-result v0

    return v0
.end method

.method public c()La/a/a/a/b/cb;
    .locals 1

    .prologue
    .line 222
    new-instance v0, La/a/a/a/b/e;

    invoke-direct {v0, p0}, La/a/a/a/b/e;-><init>(La/a/a/a/b/b;)V

    return-object v0
.end method

.method public c(J)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, La/a/a/a/b/b;->b()La/a/a/a/b/cl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La/a/a/a/b/cl;->a(J)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 68
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/b;->b(J)Z

    move-result v0

    return v0
.end method

.method public final d()La/a/a/a/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/p",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, La/a/a/a/b/b;->e()La/a/a/a/c/p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, La/a/a/a/b/b;->e()La/a/a/a/c/p;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 265
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 268
    check-cast p1, Ljava/util/Map;

    .line 269
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, La/a/a/a/b/b;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 270
    invoke-virtual {p0}, La/a/a/a/b/b;->e()La/a/a/a/c/p;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, La/a/a/a/c/p;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 257
    const/4 v1, 0x0

    invoke-virtual {p0}, La/a/a/a/b/b;->size()I

    move-result v0

    .line 258
    invoke-virtual {p0}, La/a/a/a/b/b;->e()La/a/a/a/c/p;

    move-result-object v2

    invoke-interface {v2}, La/a/a/a/c/p;->a()La/a/a/a/c/l;

    move-result-object v3

    move v2, v1

    .line 260
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v3}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 261
    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, La/a/a/a/b/b;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, La/a/a/a/b/b;->b()La/a/a/a/b/cl;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 87
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 88
    instance-of v1, p1, La/a/a/a/b/ad;

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/ae;

    .line 92
    invoke-interface {v0}, La/a/a/a/b/ae;->a()J

    move-result-wide v4

    invoke-interface {v0}, La/a/a/a/b/ae;->b()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, La/a/a/a/b/b;->a(JJ)J

    move v0, v1

    goto :goto_0

    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v1, v0}, La/a/a/a/b/b;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move v0, v2

    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {p0}, La/a/a/a/b/b;->e()La/a/a/a/c/p;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/p;->a()La/a/a/a/c/l;

    move-result-object v4

    .line 277
    invoke-virtual {p0}, La/a/a/a/b/b;->size()I

    move-result v1

    .line 279
    const/4 v0, 0x1

    .line 281
    const-string/jumbo v2, "{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_1

    .line 284
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 287
    :goto_1
    invoke-interface {v4}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/ae;

    .line 292
    invoke-interface {v0}, La/a/a/a/b/ae;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string/jumbo v5, "=>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface {v0}, La/a/a/a/b/ae;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v2

    goto :goto_0

    .line 285
    :cond_0
    const-string/jumbo v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_1

    .line 300
    :cond_1
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, La/a/a/a/b/b;->c()La/a/a/a/b/cb;

    move-result-object v0

    return-object v0
.end method
