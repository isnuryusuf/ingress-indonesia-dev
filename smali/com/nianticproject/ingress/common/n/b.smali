.class final Lcom/nianticproject/ingress/common/n/b;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/n/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/n/a;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nianticproject/ingress/common/n/b;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v1, p0, Lcom/nianticproject/ingress/common/n/b;->a:Lcom/nianticproject/ingress/common/n/a;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/b;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->a(Lcom/nianticproject/ingress/common/n/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    monitor-exit v1

    .line 174
    :goto_0
    return-object v2

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/b;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->b(Lcom/nianticproject/ingress/common/n/a;)V

    .line 169
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/b;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->c(Lcom/nianticproject/ingress/common/n/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/b;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->d(Lcom/nianticproject/ingress/common/n/a;)V

    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/common/n/b;->a:Lcom/nianticproject/ingress/common/n/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/n/a;->e(Lcom/nianticproject/ingress/common/n/a;)I

    .line 173
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/n/b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
