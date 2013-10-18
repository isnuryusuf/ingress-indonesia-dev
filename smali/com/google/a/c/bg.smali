.class final Lcom/google/a/c/bg;
.super Lcom/google/a/c/ia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/ia",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/bf;


# direct methods
.method constructor <init>(Lcom/google/a/c/bf;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/a/c/bg;->a:Lcom/google/a/c/bf;

    invoke-direct {p0}, Lcom/google/a/c/ia;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/a/c/ht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ht",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/a/c/bg;->a:Lcom/google/a/c/bf;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/a/c/bg;->a:Lcom/google/a/c/bf;

    invoke-virtual {v0}, Lcom/google/a/c/bf;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/a/c/bg;->a:Lcom/google/a/c/bf;

    invoke-virtual {v0}, Lcom/google/a/c/bf;->b()Lcom/google/a/c/ka;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/c/ka;->e_()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
