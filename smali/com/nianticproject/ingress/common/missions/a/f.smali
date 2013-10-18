.class final Lcom/nianticproject/ingress/common/missions/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/cr;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

.field private b:Lcom/nianticproject/ingress/common/c/bs;

.field private c:Z

.field private d:Z

.field private e:Lcom/nianticproject/ingress/common/c/bn;

.field private f:Lcom/nianticproject/ingress/common/c/e;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->b:Lcom/nianticproject/ingress/common/c/bs;

    .line 20
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->c:Z

    .line 21
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->d:Z

    .line 22
    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    .line 23
    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->f:Lcom/nianticproject/ingress/common/c/e;

    .line 29
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    .line 30
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/c/e;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->c:Z

    .line 94
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->p()V

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->c()V

    .line 108
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a()V

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->b:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {p1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->c:Z

    .line 36
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->d:Z

    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->n()V

    .line 40
    :cond_0
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/c/bs;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/f;->a()V

    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->f:Lcom/nianticproject/ingress/common/c/e;

    .line 52
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/f;->b:Lcom/nianticproject/ingress/common/c/bs;

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->b:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/bs;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a(Ljava/util/List;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/missions/a/f;->a(Lcom/nianticproject/ingress/common/c/e;)V

    .line 55
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/missions/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->c:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->a:Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/Spectrograph;->a(Z)V

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->e:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->o()V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->f:Lcom/nianticproject/ingress/common/c/e;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/a/f;->a(Lcom/nianticproject/ingress/common/c/e;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/f;->f:Lcom/nianticproject/ingress/common/c/e;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nianticproject/ingress/common/missions/a/f;->d:Z

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/missions/a/f;->a(Lcom/nianticproject/ingress/common/c/e;)V

    .line 85
    return-void
.end method
