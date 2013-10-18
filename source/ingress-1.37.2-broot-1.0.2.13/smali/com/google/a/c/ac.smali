.class final Lcom/google/a/c/ac;
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
.field final synthetic a:Lcom/google/a/c/aa;


# direct methods
.method constructor <init>(Lcom/google/a/c/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/a/c/ac;->a:Lcom/google/a/c/aa;

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
    .line 173
    iget-object v0, p0, Lcom/google/a/c/ac;->a:Lcom/google/a/c/aa;

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
    .line 177
    iget-object v0, p0, Lcom/google/a/c/ac;->a:Lcom/google/a/c/aa;

    invoke-virtual {v0}, Lcom/google/a/c/aa;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/a/c/ac;->a:Lcom/google/a/c/aa;

    invoke-virtual {v0}, Lcom/google/a/c/aa;->c()I

    move-result v0

    return v0
.end method
