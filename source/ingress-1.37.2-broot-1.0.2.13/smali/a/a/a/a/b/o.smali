.class public La/a/a/a/b/o;
.super La/a/a/a/b/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:La/a/a/a/b/n;


# direct methods
.method protected constructor <init>(La/a/a/a/b/n;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-direct {p0}, La/a/a/a/b/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()La/a/a/a/b/ce;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, La/a/a/a/b/o;->d()La/a/a/a/b/ca;

    move-result-object v0

    return-object v0
.end method

.method public final a(JJ)La/a/a/a/b/cm;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0, p1, p2, p3, p4}, La/a/a/a/b/n;->b(JJ)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/n;->b(J)Z

    move-result v0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0}, La/a/a/a/b/n;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)La/a/a/a/b/cm;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/n;->f(J)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0}, La/a/a/a/b/n;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)La/a/a/a/b/cm;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/n;->g(J)La/a/a/a/b/bv;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/b/bv;->f()La/a/a/a/b/cm;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0}, La/a/a/a/b/n;->clear()V

    return-void
.end method

.method public synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0}, La/a/a/a/b/n;->k()La/a/a/a/b/cc;

    move-result-object v0

    return-object v0
.end method

.method public d()La/a/a/a/b/ca;
    .locals 2

    .prologue
    .line 102
    new-instance v0, La/a/a/a/b/p;

    iget-object v1, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v1}, La/a/a/a/b/n;->g()La/a/a/a/c/q;

    move-result-object v1

    invoke-interface {v1}, La/a/a/a/c/q;->b()La/a/a/a/c/i;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/b/p;-><init>(La/a/a/a/c/i;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, La/a/a/a/b/o;->d()La/a/a/a/b/ca;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, La/a/a/a/b/o;->a:La/a/a/a/b/n;

    invoke-virtual {v0}, La/a/a/a/b/n;->size()I

    move-result v0

    return v0
.end method
