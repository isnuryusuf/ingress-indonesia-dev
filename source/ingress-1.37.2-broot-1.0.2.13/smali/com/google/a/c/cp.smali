.class abstract Lcom/google/a/c/cp;
.super Lcom/google/a/c/dc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/dc",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/a/c/dc;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method abstract c()Lcom/google/a/c/ct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TE;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/a/c/cp;->c()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/c/ct;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/a/c/cp;->c()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->e()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/a/c/cp;->c()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/a/c/cp;->c()Lcom/google/a/c/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/ct;->size()I

    move-result v0

    return v0
.end method
