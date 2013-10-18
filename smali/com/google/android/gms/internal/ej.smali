.class public final Lcom/google/android/gms/internal/ej;
.super Lcom/google/android/gms/internal/fw;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/eg;

.field private b:Lcom/google/android/gms/internal/fo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/internal/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ej;->a:Lcom/google/android/gms/internal/eg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ej;->b:Lcom/google/android/gms/internal/fo;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ej;->a:Lcom/google/android/gms/internal/eg;

    const-string/jumbo v1, "loaded_person"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/eq;->a([B)Lcom/google/android/gms/internal/eq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/plus/a/b/a;)Lcom/google/android/gms/plus/a/b/a;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ej;->b:Lcom/google/android/gms/internal/fo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/fo;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
