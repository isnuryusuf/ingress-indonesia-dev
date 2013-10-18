.class public final Lcom/google/android/youtube/player/internal/an;
.super Lcom/google/android/youtube/player/internal/ap;

# interfaces
.implements Lcom/google/android/youtube/player/internal/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/player/internal/ap",
        "<",
        "Lcom/google/android/youtube/player/internal/ai;",
        ">;",
        "Lcom/google/android/youtube/player/internal/e;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/player/internal/az;Lcom/google/android/youtube/player/internal/ba;)V
    .locals 1

    invoke-direct {p0, p1, p5, p6}, Lcom/google/android/youtube/player/internal/ap;-><init>(Landroid/content/Context;Lcom/google/android/youtube/player/internal/az;Lcom/google/android/youtube/player/internal/ba;)V

    const-string/jumbo v0, "developerKey cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/an;->b:Ljava/lang/String;

    const-string/jumbo v0, "callingPackage cannot be null or empty"

    invoke-static {p3, v0}, Lcom/google/android/youtube/player/internal/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/an;->c:Ljava/lang/String;

    const-string/jumbo v0, "callingAppVersion cannot be null or empty"

    invoke-static {p4, v0}, Lcom/google/android/youtube/player/internal/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/an;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/an;->i()V

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/an;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connection client has been released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/an;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/ai;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/ai;->a()Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/youtube/player/internal/aj;->a(Landroid/os/IBinder;)Lcom/google/android/youtube/player/internal/ai;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/youtube/player/internal/x;Lcom/google/android/youtube/player/internal/au;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/player/internal/x;",
            "Lcom/google/android/youtube/player/internal/ap",
            "<",
            "Lcom/google/android/youtube/player/internal/ai;",
            ">.com/google/android/youtube/player/internal/au;)V"
        }
    .end annotation

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/google/android/youtube/player/internal/an;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/player/internal/an;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/youtube/player/internal/an;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/youtube/player/internal/x;->a(Lcom/google/android/youtube/player/internal/f;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/an;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/an;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/ai;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/ai;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/an;->e:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.youtube.player.internal.IYouTubeService"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.youtube.api.service.START"

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/an;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/an;->a(Z)V

    :cond_0
    invoke-super {p0}, Lcom/google/android/youtube/player/internal/ap;->d()V

    return-void
.end method
