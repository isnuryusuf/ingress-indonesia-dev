.class final Lcom/google/a/c/do;
.super Lcom/google/a/c/ct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ct",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/a/c/dh;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/dh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/a/c/ct;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/a/c/do;->a:Lcom/google/a/c/dh;

    .line 37
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/a/c/lj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/a/c/do;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->b()Lcom/google/a/c/lj;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/hc;->a(Lcom/google/a/c/lj;)Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/a/c/do;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0, p1}, Lcom/google/a/c/dh;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method final f()Lcom/google/a/c/dc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/a/c/do;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->f()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->a()Lcom/google/a/c/dc;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/google/a/c/dp;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/dp;-><init>(Lcom/google/a/c/do;Lcom/google/a/c/dc;)V

    return-object v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/a/c/do;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/a/c/do;->a:Lcom/google/a/c/dh;

    invoke-virtual {v0}, Lcom/google/a/c/dh;->size()I

    move-result v0

    return v0
.end method
