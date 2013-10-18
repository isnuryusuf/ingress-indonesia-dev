.class final Lcom/nianticproject/ingress/service/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/service/core/CoreService;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/service/core/CoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    iget-object v0, v0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    invoke-static {v0}, Lcom/nianticproject/ingress/service/core/CoreService;->a(Lcom/nianticproject/ingress/service/core/CoreService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    iget-object v0, v0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/service/core/CoreService;->stopSelf()V

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    iget-object v0, v0, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    invoke-static {v2}, Lcom/nianticproject/ingress/service/core/CoreService;->a(Lcom/nianticproject/ingress/service/core/CoreService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/nianticproject/ingress/service/core/a;->a:Lcom/nianticproject/ingress/service/core/CoreService;

    iget-object v1, v1, Lcom/nianticproject/ingress/service/core/CoreService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Unexpected Exception while stopping the service"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
