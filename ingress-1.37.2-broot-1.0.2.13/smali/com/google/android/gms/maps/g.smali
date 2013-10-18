.class final Lcom/google/android/gms/maps/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/a/a;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Lcom/google/android/gms/maps/a/j;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/a/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/j;

    iput-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-static {p1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/google/android/gms/maps/g;->a:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-static {p1}, Lcom/google/android/gms/internal/al;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/af;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/internal/al;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/af;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/maps/a/j;->a(Lcom/google/android/gms/internal/af;Lcom/google/android/gms/internal/af;Landroid/os/Bundle;)Lcom/google/android/gms/internal/af;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/al;->a(Lcom/google/android/gms/internal/af;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "MapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-static {p1}, Lcom/google/android/gms/internal/al;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/af;

    move-result-object v2

    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/maps/a/j;->a(Lcom/google/android/gms/internal/af;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->h()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "MapOptions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MapOptions"

    const-string/jumbo v2, "MapOptions"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/cu;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/j;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/j;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/j;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f()Lcom/google/android/gms/maps/a/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/g;->b:Lcom/google/android/gms/maps/a/j;

    return-object v0
.end method
