.class final Lcom/google/a/c/kz;
.super Lcom/google/a/c/hx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/c/hx",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/a/c/lg;

.field final synthetic b:Lcom/google/a/c/ky;


# direct methods
.method constructor <init>(Lcom/google/a/c/ky;Lcom/google/a/c/lg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/a/c/kz;->b:Lcom/google/a/c/ky;

    iput-object p2, p0, Lcom/google/a/c/kz;->a:Lcom/google/a/c/lg;

    invoke-direct {p0}, Lcom/google/a/c/hx;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/a/c/kz;->a:Lcom/google/a/c/lg;

    invoke-virtual {v0}, Lcom/google/a/c/lg;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/a/c/kz;->a:Lcom/google/a/c/lg;

    invoke-virtual {v0}, Lcom/google/a/c/lg;->b()I

    move-result v0

    .line 342
    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/a/c/kz;->b:Lcom/google/a/c/ky;

    iget-object v1, p0, Lcom/google/a/c/kz;->a:Lcom/google/a/c/lg;

    invoke-virtual {v1}, Lcom/google/a/c/lg;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/ky;->a(Ljava/lang/Object;)I

    move-result v0

    .line 345
    :cond_0
    return v0
.end method
