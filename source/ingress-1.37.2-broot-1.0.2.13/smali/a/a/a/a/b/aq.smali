.class final La/a/a/a/b/aq;
.super La/a/a/a/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/c/f",
        "<",
        "La/a/a/a/b/bj",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:La/a/a/a/b/ap;


# direct methods
.method constructor <init>(La/a/a/a/b/ap;)V
    .locals 1
    .parameter

    .prologue
    .line 1176
    iput-object p1, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-direct {p0}, La/a/a/a/c/f;-><init>()V

    .line 1177
    new-instance v0, La/a/a/a/b/ar;

    invoke-direct {v0, p0}, La/a/a/a/b/ar;-><init>(La/a/a/a/b/aq;)V

    iput-object v0, p0, La/a/a/a/b/aq;->a:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final synthetic a()La/a/a/a/c/l;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, La/a/a/a/b/aq;->b()La/a/a/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final b()La/a/a/a/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/i",
            "<",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1186
    new-instance v0, La/a/a/a/b/au;

    iget-object v1, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-direct {v0, v1}, La/a/a/a/b/au;-><init>(La/a/a/a/b/ap;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-virtual {v0}, La/a/a/a/b/ap;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "La/a/a/a/b/bj",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, La/a/a/a/b/aq;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    .line 1193
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1196
    :goto_0
    return v0

    .line 1194
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1195
    iget-object v1, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, La/a/a/a/b/ap;->c(J)La/a/a/a/b/at;

    move-result-object v0

    .line 1196
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    iget-object v0, v0, La/a/a/a/b/ap;->d:La/a/a/a/b/at;

    return-object v0
.end method

.method public final synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter

    .prologue
    .line 1176
    check-cast p1, La/a/a/a/b/bj;

    iget-object v1, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-interface {p1}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, La/a/a/a/b/ap;->a(Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1176
    invoke-virtual {p0}, La/a/a/a/b/aq;->b()La/a/a/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    iget-object v0, v0, La/a/a/a/b/ap;->e:La/a/a/a/b/at;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1200
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v1

    .line 1204
    :goto_0
    return v0

    .line 1201
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1202
    iget-object v2, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, La/a/a/a/b/ap;->c(J)La/a/a/a/b/at;

    move-result-object v0

    .line 1203
    if-eqz v0, :cond_1

    iget-object v2, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    iget-wide v3, v0, La/a/a/a/b/at;->a:J

    invoke-virtual {v2, v3, v4}, La/a/a/a/b/ap;->a(J)Ljava/lang/Object;

    .line 1204
    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    iget v0, v0, La/a/a/a/b/ap;->c:I

    return v0
.end method

.method public final synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1176
    check-cast p1, La/a/a/a/b/bj;

    check-cast p2, La/a/a/a/b/bj;

    iget-object v2, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-interface {p1}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p2}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v0, v1}, La/a/a/a/b/ap;->a(Ljava/lang/Long;Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter

    .prologue
    .line 1176
    check-cast p1, La/a/a/a/b/bj;

    iget-object v1, p0, La/a/a/a/b/aq;->b:La/a/a/a/b/ap;

    invoke-interface {p1}, La/a/a/a/b/bj;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, La/a/a/a/b/ap;->b(Ljava/lang/Long;)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->j()La/a/a/a/c/q;

    move-result-object v0

    return-object v0
.end method
