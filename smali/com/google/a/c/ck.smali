.class final Lcom/google/a/c/ck;
.super Lcom/google/a/c/hl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hl",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/by;


# direct methods
.method constructor <init>(Lcom/google/a/c/by;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/a/c/ck;->a:Lcom/google/a/c/by;

    .line 394
    invoke-direct {p0, p1}, Lcom/google/a/c/hl;-><init>(Ljava/util/Map;)V

    .line 395
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 399
    new-instance v0, Lcom/google/a/c/cl;

    invoke-direct {v0, p0}, Lcom/google/a/c/cl;-><init>(Lcom/google/a/c/ck;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/a/c/ck;->a:Lcom/google/a/c/by;

    invoke-static {p1}, Lcom/google/a/c/by;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;Ljava/lang/Object;I)Lcom/google/a/c/bz;

    move-result-object v0

    .line 410
    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/google/a/c/ck;->a:Lcom/google/a/c/by;

    invoke-static {v1, v0}, Lcom/google/a/c/by;->a(Lcom/google/a/c/by;Lcom/google/a/c/bz;)V

    .line 414
    const/4 v0, 0x1

    goto :goto_0
.end method
