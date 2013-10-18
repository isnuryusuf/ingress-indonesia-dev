.class public abstract La/a/a/a/b/ab;
.super La/a/a/a/b/aa;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/cm;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, La/a/a/a/b/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()La/a/a/a/b/ce;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, La/a/a/a/b/ab;->d()La/a/a/a/b/ca;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()La/a/a/a/b/ca;
.end method

.method public synthetic first()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, La/a/a/a/b/ab;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/ab;->b(J)La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, La/a/a/a/b/ab;->d()La/a/a/a/b/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic last()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, La/a/a/a/b/ab;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, La/a/a/a/b/ab;->a(JJ)La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter

    .prologue
    .line 44
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/ab;->c(J)La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method
