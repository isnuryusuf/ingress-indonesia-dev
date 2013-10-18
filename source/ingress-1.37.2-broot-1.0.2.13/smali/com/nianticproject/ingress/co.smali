.class final Lcom/nianticproject/ingress/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/nianticproject/ingress/common/j/av;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/FutureTask;

.field final synthetic b:Lcom/nianticproject/ingress/NemesisApplication;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/NemesisApplication;Ljava/util/concurrent/FutureTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/nianticproject/ingress/co;->b:Lcom/nianticproject/ingress/NemesisApplication;

    iput-object p2, p0, Lcom/nianticproject/ingress/co;->a:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/nianticproject/ingress/common/j/av;
    .locals 3

    .prologue
    .line 502
    :try_start_0
    const-string/jumbo v0, "NemesisApplication.initUrlImageCache.call"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 503
    new-instance v1, Lcom/nianticproject/ingress/common/j/av;

    iget-object v0, p0, Lcom/nianticproject/ingress/co;->a:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/n/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/co;->b:Lcom/nianticproject/ingress/NemesisApplication;

    invoke-static {v2}, Lcom/nianticproject/ingress/NemesisApplication;->c(Lcom/nianticproject/ingress/NemesisApplication;)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/nianticproject/ingress/common/j/av;-><init>(Lcom/nianticproject/ingress/common/n/a;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/nianticproject/ingress/co;->a()Lcom/nianticproject/ingress/common/j/av;

    move-result-object v0

    return-object v0
.end method
