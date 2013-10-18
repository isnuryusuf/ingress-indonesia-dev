.class final Lcom/google/android/youtube/player/internal/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/internal/ap;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/av;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/av;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-virtual {v0, p2}, Lcom/google/android/youtube/player/internal/ap;->b(Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/av;->a:Lcom/google/android/youtube/player/internal/ap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/internal/ap;->a(Lcom/google/android/youtube/player/internal/ap;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/av;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/ap;->h()V

    return-void
.end method
