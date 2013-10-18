.class final Lcom/google/android/gms/internal/fp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fp;->a:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->a:Lcom/google/android/gms/internal/fl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fl;->b(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->a:Lcom/google/android/gms/internal/fl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/fl;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->a:Lcom/google/android/gms/internal/fl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->k()V

    return-void
.end method
