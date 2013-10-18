.class final Lcom/nianticproject/ingress/common/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/f/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/f/a;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/f/a;->a(Lcom/nianticproject/ingress/common/f/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 301
    :try_start_0
    const-string/jumbo v0, "AbstractBackgroundTask."

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/f/a;->b(Lcom/nianticproject/ingress/common/f/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->g()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 304
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->h()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/f/a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/f/a;->a(Lcom/nianticproject/ingress/common/f/a;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 309
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->h()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 309
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->h()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/f/c;->a:Lcom/nianticproject/ingress/common/f/a;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    throw v0
.end method
