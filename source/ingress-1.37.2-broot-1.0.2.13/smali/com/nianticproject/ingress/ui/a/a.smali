.class public final Lcom/nianticproject/ingress/ui/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/nianticproject/ingress/common/c/bn;

.field private e:Lcom/nianticproject/ingress/ui/a/b;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/a/a;->a:Landroid/widget/TextView;

    .line 53
    iput-object p2, p0, Lcom/nianticproject/ingress/ui/a/a;->b:Ljava/lang/CharSequence;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->c:Landroid/os/Handler;

    .line 55
    iput v2, p0, Lcom/nianticproject/ingress/ui/a/a;->f:I

    .line 56
    iput-boolean v2, p0, Lcom/nianticproject/ingress/ui/a/a;->g:Z

    .line 57
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->aT:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->d:Lcom/nianticproject/ingress/common/c/bn;

    .line 58
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/a;->d:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->e(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 59
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->d:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 78
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/a/a;->g:Z

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/a/a;->g:Z

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->d:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 83
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/a/a;->c()V

    .line 143
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->e:Lcom/nianticproject/ingress/ui/a/b;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->e:Lcom/nianticproject/ingress/ui/a/b;

    invoke-interface {v0}, Lcom/nianticproject/ingress/ui/a/b;->G()V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "completeImmediately"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/a/a;->f:I

    .line 104
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/a/a;->d()V

    .line 105
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/ui/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/ui/a/a;->f:I

    .line 92
    const-string/jumbo v0, "resume"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nianticproject/ingress/ui/a/a;->e:Lcom/nianticproject/ingress/ui/a/b;

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->d:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/a/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/a/a;->g:Z

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/a;->d:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 112
    const-string/jumbo v0, "pause"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/a/a;->c()V

    .line 115
    return-void
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/nianticproject/ingress/ui/a/a;->f:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/a/a;->f:I

    .line 132
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/a;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/ui/a/a;->f:I

    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget v0, p0, Lcom/nianticproject/ingress/ui/a/a;->f:I

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/a/a;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/a/a;->c:Landroid/os/Handler;

    const-wide/16 v1, 0x19

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/a/a;->d()V

    goto :goto_0
.end method
