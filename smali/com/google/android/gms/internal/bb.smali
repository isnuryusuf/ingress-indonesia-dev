.class final Lcom/google/android/gms/internal/bb;
.super Lcom/google/android/gms/internal/ap;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ap;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ba;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ba;-><init>(Lcom/google/android/gms/location/d;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bb;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/bb;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
