.class final Lcom/nianticproject/ingress/l/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Lcom/nianticproject/ingress/l/f;


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/l/f;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object p1, p0, Lcom/nianticproject/ingress/l/p;->c:Lcom/nianticproject/ingress/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/p;->a:Z

    .line 152
    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/p;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/l/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/l/p;-><init>(Lcom/nianticproject/ingress/l/f;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/l/p;->a:Z

    if-eqz v0, :cond_0

    .line 157
    monitor-exit p0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/l/p;->b:Z

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/nianticproject/ingress/l/p;->c:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->a(Lcom/nianticproject/ingress/l/f;)V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
