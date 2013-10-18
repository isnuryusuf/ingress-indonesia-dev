.class final Lcom/nianticproject/ingress/shared/rpc/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/shared/rpc/g;

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/shared/rpc/g;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/i;->a:Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method final declared-synchronized a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/i;->a:Lcom/nianticproject/ingress/shared/rpc/g;

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/g;->b(Lcom/nianticproject/ingress/shared/rpc/g;)V

    .line 333
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/i;->c:Z

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This field has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/i;->c:Z

    .line 338
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/i;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    monitor-exit p0

    return-void
.end method
