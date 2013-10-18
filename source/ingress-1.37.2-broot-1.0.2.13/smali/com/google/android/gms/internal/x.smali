.class final Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ad;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/google/android/gms/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/v;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/x;->d:Lcom/google/android/gms/internal/v;

    iput-object p2, p0, Lcom/google/android/gms/internal/x;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/x;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/x;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/x;->d:Lcom/google/android/gms/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->b(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/x;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/x;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/x;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/a/a;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
