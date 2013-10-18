.class public final Lcom/google/android/gms/internal/eg;
.super Lcom/google/android/gms/internal/fl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fl",
        "<",
        "Lcom/google/android/gms/internal/ea;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Lcom/google/android/gms/plus/a/b/a;

.field private final j:[Ljava/lang/String;

.field private final k:[Ljava/lang/String;


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/plus/a/b/a;)Lcom/google/android/gms/plus/a/b/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eg;->i:Lcom/google/android/gms/plus/a/b/a;

    return-object p1
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ec;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ea;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/fo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fy;",
            "Lcom/google/android/gms/internal/fl",
            "<",
            "Lcom/google/android/gms/internal/ea;",
            ">.com/google/android/gms/internal/fo;)V"
        }
    .end annotation

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "skip_oob"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "request_visible_actions"

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->j:[Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eg;->k:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "required_features"

    iget-object v1, p0, Lcom/google/android/gms/internal/eg;->k:[Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ej;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ej;-><init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/internal/fo;)V

    const v2, 0x2fda64

    iget-object v3, p0, Lcom/google/android/gms/internal/eg;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/eg;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eg;->h()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/eg;->h:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/fy;->a(Lcom/google/android/gms/internal/fv;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/plus/b;Landroid/net/Uri;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eg;->l()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "bounding_box"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/gms/internal/eh;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/eh;-><init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/plus/b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/eg;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ea;

    invoke-interface {v0, v2, p2, v1}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/dw;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v2, v0, v3, v3}, Lcom/google/android/gms/internal/eh;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/plus/c;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eg;->l()V

    new-instance v1, Lcom/google/android/gms/internal/ek;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ek;-><init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/plus/c;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/eg;->m()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ea;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ea;->a(Lcom/google/android/gms/internal/dw;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0, v2, v2}, Lcom/google/android/gms/internal/ek;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method
