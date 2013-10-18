.class public abstract Lcom/nianticproject/ingress/common/ui/b/k;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field protected a:I

.field private final b:Lcom/nianticproject/ingress/common/ui/b/c;

.field private final c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/c;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/ui/b/c;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->a:I

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 36
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/a;->c:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/c;->a(Lcom/nianticproject/ingress/common/w/f;)V

    .line 61
    return-void
.end method

.method public final a(F)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/b/k;->J()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->b()Lcom/nianticproject/ingress/common/ui/m;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method protected final a(ILcom/nianticproject/ingress/common/ui/b/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/k;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/l;-><init>(Lcom/nianticproject/ingress/common/ui/b/c;)V

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/b/k;->a:I

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/l;->a(I)Lcom/nianticproject/ingress/common/ui/b/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/b/l;->a(ILcom/nianticproject/ingress/common/ui/b/b;)Lcom/nianticproject/ingress/common/ui/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/b/l;->a()V

    .line 81
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/b/k;->a:I

    .line 82
    return-void
.end method

.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/a;->b:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/c;->a(Lcom/nianticproject/ingress/common/w/f;)V

    .line 45
    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/a;->d:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/c;->a(Lcom/nianticproject/ingress/common/w/f;)V

    .line 56
    return-void
.end method

.method protected final j()V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/nianticproject/ingress/common/ui/b/l;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/b/k;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/l;-><init>(Lcom/nianticproject/ingress/common/ui/b/c;)V

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/b/k;->a:I

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/l;->a(I)Lcom/nianticproject/ingress/common/ui/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/b/l;->a()V

    .line 91
    return-void
.end method

.method public final p_()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/k;->b:Lcom/nianticproject/ingress/common/ui/b/c;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/b/a;->e:Lcom/nianticproject/ingress/common/w/f;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/b/c;->a(Lcom/nianticproject/ingress/common/w/f;)V

    .line 50
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/a;->p_()V

    .line 51
    return-void
.end method
