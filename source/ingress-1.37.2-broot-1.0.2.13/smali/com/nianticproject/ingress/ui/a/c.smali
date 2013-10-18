.class public final Lcom/nianticproject/ingress/ui/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/ui/a/b;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Handler;

.field private e:Lcom/nianticproject/ingress/ui/a/a;

.field private f:Lcom/nianticproject/ingress/ui/a/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/nianticproject/ingress/ui/a/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/ui/a/d;-><init>(Lcom/nianticproject/ingress/ui/a/c;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->a:Ljava/lang/Runnable;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->d:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/a/c;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 123
    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->f:Lcom/nianticproject/ingress/ui/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->f:Lcom/nianticproject/ingress/ui/a/b;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    invoke-interface {v0}, Lcom/nianticproject/ingress/ui/a/b;->G()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 130
    new-instance v2, Lcom/nianticproject/ingress/ui/a/a;

    invoke-direct {v2, v0, v1}, Lcom/nianticproject/ingress/ui/a/a;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/a/a;->a(Lcom/nianticproject/ingress/ui/a/b;)V

    goto :goto_0
.end method


# virtual methods
.method public final G()V
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/c;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    return-void
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 86
    const-string/jumbo v0, "completeImmediately"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/a;->a()V

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 95
    new-instance v2, Lcom/nianticproject/ingress/ui/a/a;

    invoke-direct {v2, v1, v0}, Lcom/nianticproject/ingress/ui/a/a;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/a;->a()V

    goto :goto_0

    .line 98
    :cond_1
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/ui/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/a/c;->f:Lcom/nianticproject/ingress/ui/a/b;

    .line 78
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/a/c;->c()V

    .line 79
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 65
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 66
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    .line 68
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 104
    const-string/jumbo v0, "pause"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/c;->e:Lcom/nianticproject/ingress/ui/a/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/a/a;->b()V

    .line 109
    :cond_0
    return-void
.end method
