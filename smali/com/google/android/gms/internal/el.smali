.class final Lcom/google/android/gms/internal/el;
.super Lcom/google/android/gms/internal/fn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fl",
        "<",
        "Lcom/google/android/gms/internal/ea;",
        ">.com/google/android/gms/internal/fn<",
        "Lcom/google/android/gms/plus/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/a;

.field public final b:Lcom/google/android/gms/internal/du;

.field final synthetic c:Lcom/google/android/gms/internal/eg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/eg;Lcom/google/android/gms/plus/c;Lcom/google/android/gms/common/a;Lcom/google/android/gms/internal/du;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/el;->c:Lcom/google/android/gms/internal/eg;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fn;-><init>(Lcom/google/android/gms/internal/fl;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/el;->a:Lcom/google/android/gms/common/a;

    iput-object p4, p0, Lcom/google/android/gms/internal/el;->b:Lcom/google/android/gms/internal/du;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/plus/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->a:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->b:Lcom/google/android/gms/internal/du;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/plus/c;->a(Lcom/google/android/gms/common/a;Lcom/google/android/gms/internal/du;)V

    :cond_0
    return-void
.end method
