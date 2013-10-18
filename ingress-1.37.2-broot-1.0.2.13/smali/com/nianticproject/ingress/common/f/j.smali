.class public abstract Lcom/nianticproject/ingress/common/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Success:",
        "Ljava/lang/Object;",
        "Error:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/u/q;

.field private c:Lcom/nianticproject/ingress/common/u/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/u/t",
            "<TSuccess;TError;>;"
        }
    .end annotation
.end field

.field private d:Lcom/nianticproject/ingress/common/f/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/f/j",
            "<TSuccess;TError;>.com/nianticproject/ingress/common/f/k;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/f/j;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/f/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/u/q;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/f/j;->e:Z

    .line 49
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/u/q;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->b:Lcom/nianticproject/ingress/common/u/q;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/f/j;Lcom/nianticproject/ingress/common/u/t;)Lcom/nianticproject/ingress/common/u/t;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/j;->c:Lcom/nianticproject/ingress/common/u/t;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/f/j;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/f/j;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/f/j;)Lcom/nianticproject/ingress/common/u/t;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->c:Lcom/nianticproject/ingress/common/u/t;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/f/j;)Lcom/nianticproject/ingress/common/u/q;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->b:Lcom/nianticproject/ingress/common/u/q;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TSuccess;TError;>;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Attempt to execute task twice."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/f/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/common/f/k;-><init>(Lcom/nianticproject/ingress/common/f/j;Lcom/google/a/a/ba;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    .line 55
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 56
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/x/g;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/common/x/g",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TSuccess;TError;>;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Attempt to execute task twice."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/nianticproject/ingress/common/f/k;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/f/k;-><init>(Lcom/nianticproject/ingress/common/f/j;Lcom/google/a/a/ba;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    .line 61
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 62
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/nianticproject/ingress/shared/rpc/RpcResult;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nianticproject/ingress/shared/rpc/RpcResult",
            "<TSuccess;TError;>;)",
            "Lcom/nianticproject/ingress/common/x/f;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    const-string/jumbo v1, "Attempt to cancel a task not in progress."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/f/j;->e:Z

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/j;->d:Lcom/nianticproject/ingress/common/f/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/f/k;->b(Z)Z

    .line 68
    return-void
.end method

.method protected abstract c()Lcom/nianticproject/ingress/shared/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nianticproject/ingress/shared/Result",
            "<",
            "Lcom/nianticproject/ingress/common/u/t",
            "<TSuccess;TError;>;TError;>;"
        }
    .end annotation
.end method

.method protected abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TError;"
        }
    .end annotation
.end method

.method protected e()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    sget-object v0, Lcom/nianticproject/ingress/common/f/j;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "onCancelled not overridden: If your task is cancellable, you must override onCancelled! Do not forget to dispose of any held resources to prevent leaks!"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 111
    return-void
.end method
