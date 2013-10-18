.class final Lcom/nianticproject/ingress/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/a/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nianticproject/ingress/a/m;->a:Lcom/nianticproject/ingress/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nianticproject/ingress/a/m;->a:Lcom/nianticproject/ingress/a/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/a/l;->a(Lcom/nianticproject/ingress/a/l;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/a/m;->a:Lcom/nianticproject/ingress/a/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/a/l;->b(Lcom/nianticproject/ingress/a/l;)Lcom/nianticproject/ingress/common/c/bk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/bk;->a(Lcom/nianticproject/ingress/common/c/bl;)V

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/a/m;->a:Lcom/nianticproject/ingress/a/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/a/l;->c(Lcom/nianticproject/ingress/a/l;)Lcom/nianticproject/ingress/common/c/bk;

    .line 155
    :cond_0
    return-void
.end method
