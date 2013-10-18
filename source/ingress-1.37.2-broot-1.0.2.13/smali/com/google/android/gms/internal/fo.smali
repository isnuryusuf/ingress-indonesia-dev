.class public final Lcom/google/android/gms/internal/fo;
.super Lcom/google/android/gms/internal/fw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fl;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/fl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fo;->a:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fo;->a:Lcom/google/android/gms/internal/fl;

    iget-object v0, v0, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/fo;->a:Lcom/google/android/gms/internal/fl;

    iget-object v1, v1, Lcom/google/android/gms/internal/fl;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/fq;

    iget-object v4, p0, Lcom/google/android/gms/internal/fo;->a:Lcom/google/android/gms/internal/fl;

    invoke-direct {v3, v4, p1, p2, p3}, Lcom/google/android/gms/internal/fq;-><init>(Lcom/google/android/gms/internal/fl;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
