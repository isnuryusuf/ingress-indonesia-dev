.class final Lcom/nianticproject/ingress/common/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/b/cd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/a/b/cd",
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
    .line 170
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/l;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/b/ce;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ce",
            "<",
            "Lcom/nianticproject/ingress/common/c/ba;",
            "Lcom/nianticproject/ingress/common/c/n",
            "<+",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/google/a/b/ce;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/ba;

    .line 174
    invoke-virtual {p1}, Lcom/google/a/b/ce;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/c/n;

    .line 176
    if-eqz v1, :cond_0

    .line 177
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/l;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/c/i;->f(Lcom/nianticproject/ingress/common/c/ba;)I

    move-result v0

    .line 178
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/l;->a:Lcom/nianticproject/ingress/common/c/i;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Lcom/nianticproject/ingress/common/c/i;->b(Lcom/nianticproject/ingress/common/c/i;J)J

    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/l;->a:Lcom/nianticproject/ingress/common/c/i;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/c/i;->a(Lcom/nianticproject/ingress/common/c/i;)Lcom/nianticproject/ingress/common/c/m;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/m;->a(Lcom/nianticproject/ingress/common/c/n;)V

    .line 186
    :cond_0
    return-void
.end method
