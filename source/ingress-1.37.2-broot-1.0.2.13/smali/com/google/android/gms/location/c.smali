.class public final Lcom/google/android/gms/location/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bc;

    const-string/jumbo v1, "location"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/bc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/c;->a:Lcom/google/android/gms/internal/bc;

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/c;->a:Lcom/google/android/gms/internal/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bc;->d()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/c;->a:Lcom/google/android/gms/internal/bc;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/d;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/location/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/c;->a:Lcom/google/android/gms/internal/bc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bc;->a(Lcom/google/android/gms/location/d;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/c;->a:Lcom/google/android/gms/internal/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bc;->e()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/c;->a:Lcom/google/android/gms/internal/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bc;->a()V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/c;->a:Lcom/google/android/gms/internal/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bc;->f()Z

    move-result v0

    return v0
.end method
