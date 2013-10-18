.class public abstract La/a/a/a/b/h;
.super La/a/a/a/b/g;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/bi;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/b/g",
        "<TV;>;",
        "La/a/a/a/b/bi",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, La/a/a/a/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/a/a/a/b/cl;
    .locals 1

    .prologue
    .line 172
    new-instance v0, La/a/a/a/b/i;

    invoke-direct {v0, p0}, La/a/a/a/b/i;-><init>(La/a/a/a/b/h;)V

    return-object v0
.end method

.method public b()La/a/a/a/c/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/j",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, La/a/a/a/b/k;

    invoke-direct {v0, p0}, La/a/a/a/b/k;-><init>(La/a/a/a/b/h;)V

    return-object v0
.end method

.method public b(J)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0}, La/a/a/a/b/h;->a()La/a/a/a/b/cl;

    move-result-object v0

    invoke-interface {v0, p1, p2}, La/a/a/a/b/cl;->a(J)Z

    move-result v0

    return v0
.end method

.method public c()La/a/a/a/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/p",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p0}, La/a/a/a/b/h;->l()La/a/a/a/c/p;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, La/a/a/a/b/h;->b()La/a/a/a/c/j;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/a/c/j;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, La/a/a/a/b/h;->c()La/a/a/a/c/p;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 229
    check-cast p1, Ljava/util/Map;

    .line 230
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0}, La/a/a/a/b/h;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 231
    invoke-virtual {p0}, La/a/a/a/b/h;->c()La/a/a/a/c/p;

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
    .line 221
    const/4 v1, 0x0

    invoke-virtual {p0}, La/a/a/a/b/h;->size()I

    move-result v0

    .line 222
    invoke-virtual {p0}, La/a/a/a/b/h;->c()La/a/a/a/c/p;

    move-result-object v2

    invoke-interface {v2}, La/a/a/a/c/p;->a()La/a/a/a/c/l;

    move-result-object v3

    move v2, v1

    .line 223
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

    .line 224
    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, La/a/a/a/b/h;->size()I

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
    .line 62
    invoke-virtual {p0}, La/a/a/a/b/h;->a()La/a/a/a/b/cl;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 83
    instance-of v1, p1, La/a/a/a/b/bi;

    if-eqz v1, :cond_0

    .line 85
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/bj;

    .line 87
    invoke-interface {v0}, La/a/a/a/b/bj;->a()J

    move-result-wide v4

    invoke-interface {v0}, La/a/a/a/b/bj;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v4, v5, v0}, La/a/a/a/b/h;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, La/a/a/a/b/h;->a(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    .line 97
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    invoke-virtual {p0}, La/a/a/a/b/h;->c()La/a/a/a/c/p;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/p;->a()La/a/a/a/c/l;

    move-result-object v4

    .line 236
    invoke-virtual {p0}, La/a/a/a/b/h;->size()I

    move-result v0

    .line 238
    const/4 v1, 0x1

    .line 239
    const-string/jumbo v2, "{"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v1

    move v1, v0

    move v0, v7

    .line 240
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_2

    .line 241
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 243
    :goto_1
    invoke-interface {v4}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/bj;

    .line 244
    invoke-interface {v0}, La/a/a/a/b/bj;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string/jumbo v5, "=>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-interface {v0}, La/a/a/a/b/bj;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne p0, v5, :cond_1

    const-string/jumbo v0, "(this map)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v2

    goto :goto_0

    .line 242
    :cond_0
    const-string/jumbo v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_1

    .line 247
    :cond_1
    invoke-interface {v0}, La/a/a/a/b/bj;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    move v1, v2

    goto :goto_0

    .line 249
    :cond_2
    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, La/a/a/a/b/h;->b()La/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method
