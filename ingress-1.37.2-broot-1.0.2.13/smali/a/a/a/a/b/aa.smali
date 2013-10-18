.class public abstract La/a/a/a/b/aa;
.super La/a/a/a/b/t;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/cl;
.implements Ljava/lang/Cloneable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, La/a/a/a/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()La/a/a/a/b/ce;
.end method

.method public final e(J)Z
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, La/a/a/a/b/aa;->f(J)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 51
    check-cast p1, Ljava/util/Set;

    .line 52
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, La/a/a/a/b/aa;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 53
    invoke-virtual {p0, p1}, La/a/a/a/b/aa;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public f(J)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 63
    const/4 v1, 0x0

    invoke-virtual {p0}, La/a/a/a/b/aa;->size()I

    move-result v0

    .line 64
    invoke-virtual {p0}, La/a/a/a/b/aa;->a()La/a/a/a/b/ce;

    move-result-object v3

    move v2, v1

    .line 66
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v3}, La/a/a/a/b/ce;->a()J

    move-result-wide v4

    .line 68
    invoke-static {v4, v5}, La/a/a/a/e;->b(J)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 70
    :cond_0
    return v2
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, La/a/a/a/b/aa;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, La/a/a/a/b/aa;->f(J)Z

    move-result v0

    return v0
.end method
