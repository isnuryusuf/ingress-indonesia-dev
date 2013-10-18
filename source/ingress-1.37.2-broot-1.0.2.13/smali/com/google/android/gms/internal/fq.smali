.class public final Lcom/google/android/gms/internal/fq;
.super Lcom/google/android/gms/internal/fn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fl",
        "<TT;>.com/google/android/gms/internal/fn<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field public final c:Landroid/os/IBinder;

.field final synthetic e:Lcom/google/android/gms/internal/fl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fl;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/internal/fl;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/fq;->a:I

    iput-object p3, p0, Lcom/google/android/gms/internal/fq;->c:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/fq;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/fq;->a:I

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "pendingIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    new-instance v2, Lcom/google/android/gms/common/a;

    iget v3, p0, Lcom/google/android/gms/internal/fq;->a:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/a;)V

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->c:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fq;->c:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/fl;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/fl;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-static {v1}, Lcom/google/android/gms/internal/fl;->d(Lcom/google/android/gms/internal/fl;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fl;->i()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-static {v1}, Lcom/google/android/gms/internal/fl;->f(Lcom/google/android/gms/internal/fl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fr;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/fr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fl;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-static {v3}, Lcom/google/android/gms/internal/fl;->e(Lcom/google/android/gms/internal/fl;)Lcom/google/android/gms/internal/fp;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/fr;->b(Ljava/lang/String;Lcom/google/android/gms/internal/fp;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-static {v1}, Lcom/google/android/gms/internal/fl;->g(Lcom/google/android/gms/internal/fl;)Lcom/google/android/gms/internal/fp;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/fl;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->e:Lcom/google/android/gms/internal/fl;

    new-instance v2, Lcom/google/android/gms/common/a;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/a;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method
