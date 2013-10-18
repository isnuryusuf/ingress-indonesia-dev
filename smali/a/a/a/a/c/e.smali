.class public abstract La/a/a/a/c/e;
.super La/a/a/a/c/b;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c/p;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/c/b",
        "<TK;>;",
        "La/a/a/a/c/p",
        "<TK;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, La/a/a/a/c/b;-><init>()V

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

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 50
    check-cast p1, Ljava/util/Set;

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, La/a/a/a/c/e;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 52
    invoke-virtual {p0, p1}, La/a/a/a/c/e;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0}, La/a/a/a/c/e;->size()I

    move-result v0

    .line 63
    invoke-virtual {p0}, La/a/a/a/c/e;->a()La/a/a/a/c/l;

    move-result-object v4

    move v3, v1

    .line 65
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v4}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 69
    :cond_1
    return v3
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, La/a/a/a/c/e;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
