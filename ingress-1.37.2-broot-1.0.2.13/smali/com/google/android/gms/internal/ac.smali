.class final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ad;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->a:Lcom/google/android/gms/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->b(Lcom/google/android/gms/internal/v;)Lcom/google/android/gms/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/a/a;->a()V

    return-void
.end method
