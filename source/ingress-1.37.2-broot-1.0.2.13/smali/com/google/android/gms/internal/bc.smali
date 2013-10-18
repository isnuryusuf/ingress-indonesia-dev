.class public final Lcom/google/android/gms/internal/bc;
.super Lcom/google/android/gms/internal/fl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fl",
        "<",
        "Lcom/google/android/gms/internal/aw;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/gms/internal/bh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/bh",
            "<",
            "Lcom/google/android/gms/internal/aw;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/az;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/fl;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/bd;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/bd;-><init>(Lcom/google/android/gms/internal/bc;B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bc;->f:Lcom/google/android/gms/internal/bh;

    new-instance v0, Lcom/google/android/gms/internal/az;

    iget-object v1, p0, Lcom/google/android/gms/internal/bc;->f:Lcom/google/android/gms/internal/bh;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/az;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/bh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bc;->g:Lcom/google/android/gms/internal/az;

    iput-object p4, p0, Lcom/google/android/gms/internal/bc;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bc;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bc;->l()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bc;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bc;->m()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ax;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/aw;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bc;->g:Lcom/google/android/gms/internal/az;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bc;->g:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/az;->b()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/fl;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(Lcom/google/android/gms/internal/fy;Lcom/google/android/gms/internal/fo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fy;",
            "Lcom/google/android/gms/internal/fl",
            "<",
            "Lcom/google/android/gms/internal/aw;",
            ">.com/google/android/gms/internal/fo;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/bc;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x2fda64

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bc;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/fy;->e(Lcom/google/android/gms/internal/fv;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bc;->g:Lcom/google/android/gms/internal/az;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bc;->g:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/az;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bc;->g:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/az;->a(Lcom/google/android/gms/location/d;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bc;->g:Lcom/google/android/gms/internal/az;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/az;->a()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
