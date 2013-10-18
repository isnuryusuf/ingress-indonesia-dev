.class public final Lcom/nianticproject/ingress/common/x/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nianticproject/ingress/common/x/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/nianticproject/ingress/common/x/i;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/x/i;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/a/c/eq;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x/d;->a:Ljava/util/LinkedList;

    .line 44
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/x/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/x/d;->b:Lcom/nianticproject/ingress/common/x/i;

    .line 45
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 46
    iput v1, p0, Lcom/nianticproject/ingress/common/x/d;->c:I

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/x/d;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/d;->a:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/f;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    iget-object v1, p0, Lcom/nianticproject/ingress/common/x/d;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 57
    iget v2, p0, Lcom/nianticproject/ingress/common/x/d;->c:I

    if-lt v0, v2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/x/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/x/e;

    iput-object p1, v0, Lcom/nianticproject/ingress/common/x/e;->a:Lcom/nianticproject/ingress/common/x/f;

    .line 59
    monitor-exit v1

    .line 68
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/x/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/nianticproject/ingress/common/x/e;-><init>(Lcom/nianticproject/ingress/common/x/d;B)V

    .line 62
    iput-object p1, v0, Lcom/nianticproject/ingress/common/x/e;->a:Lcom/nianticproject/ingress/common/x/f;

    .line 63
    iget-object v2, p0, Lcom/nianticproject/ingress/common/x/d;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v1, p0, Lcom/nianticproject/ingress/common/x/d;->b:Lcom/nianticproject/ingress/common/x/i;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
