.class final Lcom/nianticproject/ingress/common/c/k;
.super Lcom/google/a/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/b/k",
        "<",
        "Lcom/nianticproject/ingress/common/c/ba;",
        "Lcom/nianticproject/ingress/common/c/n",
        "<+",
        "Lcom/badlogic/gdx/utils/Disposable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/c/i;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/c/i;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/k;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-direct {p0}, Lcom/google/a/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 155
    check-cast p1, Lcom/nianticproject/ingress/common/c/ba;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/k;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/c/i;->a(Lcom/nianticproject/ingress/common/c/i;Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/k;->a:Lcom/nianticproject/ingress/common/c/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/k;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-static {p1}, Lcom/nianticproject/ingress/common/c/i;->f(Lcom/nianticproject/ingress/common/c/ba;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/common/c/i;->a(Lcom/nianticproject/ingress/common/c/i;J)J

    :cond_0
    return-object v0
.end method
