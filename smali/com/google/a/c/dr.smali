.class final Lcom/google/a/c/dr;
.super Lcom/google/a/c/lj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/lj",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/a/c/dq;


# direct methods
.method constructor <init>(Lcom/google/a/c/dq;Ljava/util/Iterator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/a/c/dr;->d:Lcom/google/a/c/dq;

    iput-object p2, p0, Lcom/google/a/c/dr;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/a/c/lj;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/google/a/c/dr;->a:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/a/c/dr;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 251
    iget v0, p0, Lcom/google/a/c/dr;->a:I

    if-gtz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/google/a/c/dr;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    .line 253
    invoke-interface {v0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/a/c/dr;->b:Ljava/lang/Object;

    .line 254
    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v0

    iput v0, p0, Lcom/google/a/c/dr;->a:I

    .line 256
    :cond_0
    iget v0, p0, Lcom/google/a/c/dr;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/c/dr;->a:I

    .line 257
    iget-object v0, p0, Lcom/google/a/c/dr;->b:Ljava/lang/Object;

    return-object v0
.end method
