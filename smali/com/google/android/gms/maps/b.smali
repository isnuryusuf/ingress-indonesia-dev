.class public final Lcom/google/android/gms/maps/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/gms/maps/a/a;


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/google/android/gms/maps/a;

    sget-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/a/a;

    const-string/jumbo v2, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/a;

    const/high16 v2, 0x4188

    invoke-interface {v0, p0, v2}, Lcom/google/android/gms/maps/a/a;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/internal/af;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/internal/af;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method static a(Lcom/google/android/gms/maps/a/a;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/a/a;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/a;

    sput-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/a/a;

    goto :goto_0
.end method
