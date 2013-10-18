.class final Lcom/nianticproject/ingress/service/core/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/service/core/c;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/service/core/c;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/service/core/d;->a:Lcom/nianticproject/ingress/service/core/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/d;->a:Lcom/nianticproject/ingress/service/core/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/core/c;->b(Lcom/nianticproject/ingress/service/core/c;)Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/service/core/d;->a:Lcom/nianticproject/ingress/service/core/c;

    invoke-static {v2}, Lcom/nianticproject/ingress/service/core/c;->a(Lcom/nianticproject/ingress/service/core/c;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/d;->a:Lcom/nianticproject/ingress/service/core/c;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/core/c;->a(Lcom/nianticproject/ingress/service/core/c;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/d;->a:Lcom/nianticproject/ingress/service/core/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/service/core/c;->c(Lcom/nianticproject/ingress/service/core/c;)Lcom/nianticproject/ingress/service/core/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/service/core/h;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/d;->a:Lcom/nianticproject/ingress/service/core/c;

    invoke-static {v1}, Lcom/nianticproject/ingress/service/core/c;->b(Lcom/nianticproject/ingress/service/core/c;)Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "Unexpected Exception while processing Intent"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    :cond_0
    return-void
.end method
