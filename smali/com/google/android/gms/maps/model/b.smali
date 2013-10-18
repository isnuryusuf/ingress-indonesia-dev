.class public final Lcom/google/android/gms/maps/model/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/internal/cx;


# direct methods
.method public static a()Lcom/google/android/gms/maps/model/a;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/google/android/gms/maps/model/a;

    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/internal/cx;

    const-string/jumbo v2, "IBitmapDescriptorFactory is not initialized"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cx;

    const v2, 0x7f020032

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cx;->a(I)Lcom/google/android/gms/internal/af;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/a;-><init>(Lcom/google/android/gms/internal/af;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public static a(Lcom/google/android/gms/internal/cx;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/internal/cx;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cx;

    sput-object v0, Lcom/google/android/gms/maps/model/b;->a:Lcom/google/android/gms/internal/cx;

    goto :goto_0
.end method
