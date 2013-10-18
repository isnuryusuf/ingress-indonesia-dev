.class public abstract La/a/a/a/b/n;
.super La/a/a/a/b/h;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/bv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/b/h",
        "<TV;>;",
        "La/a/a/a/b/bv",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, La/a/a/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)La/a/a/a/b/bv;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/n;->f(J)La/a/a/a/b/bv;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Long;Ljava/lang/Long;)La/a/a/a/b/bv;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, La/a/a/a/b/n;->b(JJ)La/a/a/a/b/bv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a()La/a/a/a/b/cl;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/n;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Long;)La/a/a/a/b/bv;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "La/a/a/a/b/bv",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/n;->g(J)La/a/a/a/b/bv;

    move-result-object v0

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
    .line 141
    new-instance v0, La/a/a/a/b/q;

    invoke-direct {v0, p0}, La/a/a/a/b/q;-><init>(La/a/a/a/b/n;)V

    return-object v0
.end method

.method public final synthetic c()La/a/a/a/c/p;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/n;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, La/a/a/a/b/n;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, La/a/a/a/b/n;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/n;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public f()La/a/a/a/b/cm;
    .locals 1

    .prologue
    .line 86
    new-instance v0, La/a/a/a/b/o;

    invoke-direct {v0, p0}, La/a/a/a/b/o;-><init>(La/a/a/a/b/n;)V

    return-object v0
.end method

.method public synthetic firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/n;->d()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final g()La/a/a/a/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/q",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, La/a/a/a/b/n;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, La/a/a/a/b/n;->a(Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/n;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/n;->e()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, La/a/a/a/b/n;->a(Ljava/lang/Long;Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, La/a/a/a/b/n;->b(Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, La/a/a/a/b/n;->b()La/a/a/a/c/j;

    move-result-object v0

    return-object v0
.end method
