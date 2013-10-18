.class public final Lcom/google/android/youtube/player/internal/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/f;


# instance fields
.field private a:Lcom/google/android/youtube/player/internal/e;

.field private b:Lcom/google/android/youtube/player/internal/i;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/player/internal/e;Lcom/google/android/youtube/player/internal/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "connectionClient cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/e;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->a:Lcom/google/android/youtube/player/internal/e;

    const-string/jumbo v0, "embeddedPlayer cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/i;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->s()Lcom/google/android/youtube/player/internal/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/be;->a(Lcom/google/android/youtube/player/internal/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/i;->a(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/youtube/player/i;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    new-instance v1, Lcom/google/android/youtube/player/internal/ax;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/player/internal/ax;-><init>(Lcom/google/android/youtube/player/internal/aw;Lcom/google/android/youtube/player/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/youtube/player/internal/i;->a(Lcom/google/android/youtube/player/internal/r;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/player/internal/i;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/i;->a(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->a:Lcom/google/android/youtube/player/internal/e;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/e;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->a:Lcom/google/android/youtube/player/internal/e;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/e;->d()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/i;->a(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/i;->a(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/i;->e(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(ILandroid/view/KeyEvent;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/i;->b(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->n()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->o()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->q()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->l()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final h()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/aw;->b:Lcom/google/android/youtube/player/internal/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/i;->r()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/youtube/player/internal/ao;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/player/internal/ao;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
