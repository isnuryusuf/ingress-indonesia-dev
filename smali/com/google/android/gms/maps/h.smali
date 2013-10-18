.class final Lcom/google/android/gms/maps/h;
.super Lcom/google/android/gms/internal/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/v",
        "<",
        "Lcom/google/android/gms/maps/g;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/am",
            "<",
            "Lcom/google/android/gms/maps/g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/h;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/maps/h;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/h;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/h;->g()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/am;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/am",
            "<",
            "Lcom/google/android/gms/maps/g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/internal/am;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/h;->g()V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/maps/h;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/internal/am;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/h;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/h;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bm;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/bm;->a()Lcom/google/android/gms/maps/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/a/a;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/bm;->b()Lcom/google/android/gms/internal/cx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/internal/cx;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/e; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/maps/h;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/internal/cv;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/h;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/internal/al;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bm;->b(Lcom/google/android/gms/internal/af;)Lcom/google/android/gms/maps/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/h;->a:Lcom/google/android/gms/internal/am;

    new-instance v2, Lcom/google/android/gms/maps/g;

    iget-object v3, p0, Lcom/google/android/gms/maps/h;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/g;-><init>(Landroid/support/v4/app/Fragment;Lcom/google/android/gms/maps/a/j;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/am;->a(Lcom/google/android/gms/a/a;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/common/e; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/m;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
