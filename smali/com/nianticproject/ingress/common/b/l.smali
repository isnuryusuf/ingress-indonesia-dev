.class final Lcom/nianticproject/ingress/common/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/nianticproject/ingress/common/b/j;

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/b/j;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object p1, p0, Lcom/nianticproject/ingress/common/b/l;->b:Lcom/nianticproject/ingress/common/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/b/l;->c:Z

    .line 93
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/b/l;->d:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/b/l;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/b/j;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/b/l;-><init>(Lcom/nianticproject/ingress/common/b/j;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lcom/nianticproject/ingress/common/b/k;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/common/b/k",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/b/l;->d:Z

    if-nez v2, :cond_1

    :goto_0
    const-string/jumbo v1, "Recursive loading of asset %s detected."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/b/l;->d:Z

    .line 109
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/b/l;->c:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/b/l;->c:Z

    .line 111
    invoke-interface {p2}, Lcom/nianticproject/ingress/common/b/k;->a()V

    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/l;->b:Lcom/nianticproject/ingress/common/b/j;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/b/j;->a:Lcom/nianticproject/ingress/common/x/i;

    new-instance v1, Lcom/nianticproject/ingress/common/b/m;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Load_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/nianticproject/ingress/common/b/m;-><init>(Lcom/nianticproject/ingress/common/b/l;Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/common/b/k;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 123
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/b/l;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 105
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
