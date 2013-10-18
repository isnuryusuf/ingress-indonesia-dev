.class final Lcom/google/a/c/dw;
.super Lcom/google/a/c/ij;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/jn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ij",
        "<TE;>;",
        "Lcom/google/a/c/jn",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/a/c/dz;Lcom/google/a/c/dc;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dz",
            "<TE;>;",
            "Lcom/google/a/c/dc",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/ij;-><init>(Lcom/google/a/c/ct;Lcom/google/a/c/dc;)V

    .line 37
    return-void
.end method


# virtual methods
.method final b(II)Lcom/google/a/c/dc;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/c/dc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/a/c/it;

    invoke-super {p0, p1, p2}, Lcom/google/a/c/ij;->b(II)Lcom/google/a/c/dc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/c/dw;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/a/c/it;-><init>(Lcom/google/a/c/dc;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/google/a/c/it;->a()Lcom/google/a/c/dc;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic c()Lcom/google/a/c/ct;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/google/a/c/ij;->c()Lcom/google/a/c/ct;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/dz;

    return-object v0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/a/c/ij;->c()Lcom/google/a/c/ct;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/dz;

    invoke-virtual {v0}, Lcom/google/a/c/dz;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/a/c/dw;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/a/c/ij;->c()Lcom/google/a/c/ct;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/dz;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dz;->a(Ljava/lang/Object;)I

    move-result v0

    .line 60
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/a/c/dw;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/google/a/c/dw;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
