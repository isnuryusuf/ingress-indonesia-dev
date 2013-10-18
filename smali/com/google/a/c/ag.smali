.class final Lcom/google/a/c/ag;
.super Lcom/google/a/c/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/bf",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/af;


# direct methods
.method constructor <init>(Lcom/google/a/c/af;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/a/c/ag;->a:Lcom/google/a/c/af;

    invoke-direct {p0}, Lcom/google/a/c/bf;-><init>()V

    return-void
.end method


# virtual methods
.method final b()Lcom/google/a/c/ka;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ka",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/a/c/ag;->a:Lcom/google/a/c/af;

    return-object v0
.end method

.method final c()Ljava/util/Iterator;
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
    .line 133
    iget-object v0, p0, Lcom/google/a/c/ag;->a:Lcom/google/a/c/af;

    invoke-virtual {v0}, Lcom/google/a/c/af;->k()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/a/c/ag;->a:Lcom/google/a/c/af;

    invoke-virtual {v0}, Lcom/google/a/c/af;->l()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
