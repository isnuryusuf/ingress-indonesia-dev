.class final Lcom/google/android/gms/internal/eo;
.super Landroid/widget/CompoundButton;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dz;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/internal/dz;

    invoke-direct {p0, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final toggle()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/internal/dz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/dz;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/internal/dz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/dz;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dz;->e()V

    goto :goto_0
.end method
