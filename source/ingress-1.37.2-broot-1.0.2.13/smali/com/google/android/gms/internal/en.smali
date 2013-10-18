.class public final Lcom/google/android/gms/internal/en;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/c;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dz;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/dz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/internal/du;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/dz;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/dz;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    iget-object v0, v0, Lcom/google/android/gms/internal/dz;->e:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    iput-object p2, v0, Lcom/google/android/gms/internal/dz;->j:Lcom/google/android/gms/internal/du;

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->d()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/en;->a:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->f()V

    goto :goto_0
.end method
