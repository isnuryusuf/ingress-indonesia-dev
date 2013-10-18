.class final Lcom/google/android/gms/internal/bd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/bh",
        "<",
        "Lcom/google/android/gms/internal/aw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bd;->a:Lcom/google/android/gms/internal/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/bc;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bd;-><init>(Lcom/google/android/gms/internal/bc;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->a:Lcom/google/android/gms/internal/bc;

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/internal/bc;)V

    return-void
.end method

.method public final synthetic b()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->a:Lcom/google/android/gms/internal/bc;

    invoke-static {v0}, Lcom/google/android/gms/internal/bc;->b(Lcom/google/android/gms/internal/bc;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aw;

    return-object v0
.end method
