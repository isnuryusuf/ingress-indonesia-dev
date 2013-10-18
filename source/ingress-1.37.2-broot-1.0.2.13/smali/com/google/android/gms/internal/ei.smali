.class final Lcom/google/android/gms/internal/ei;
.super Lcom/google/android/gms/internal/fn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fl",
        "<",
        "Lcom/google/android/gms/internal/ea;",
        ">.com/google/android/gms/internal/fn<",
        "Lcom/google/android/gms/plus/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/eg;

.field private final b:Lcom/google/android/gms/common/a;

.field private final c:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/plus/b;Lcom/google/android/gms/common/a;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ei;->a:Lcom/google/android/gms/internal/eg;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/internal/fl;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ei;->b:Lcom/google/android/gms/common/a;

    iput-object p4, p0, Lcom/google/android/gms/internal/ei;->c:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/fn;->a()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/plus/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->b:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->c:Landroid/os/ParcelFileDescriptor;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/plus/b;->a(Lcom/google/android/gms/common/a;Landroid/os/ParcelFileDescriptor;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->c:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PlusClientImpl"

    const-string/jumbo v2, "failed close"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
