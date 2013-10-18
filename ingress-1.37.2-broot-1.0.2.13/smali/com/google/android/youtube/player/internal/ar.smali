.class final Lcom/google/android/youtube/player/internal/ar;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/internal/ap;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/ar;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/ar;->a:Lcom/google/android/youtube/player/internal/ap;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/player/c;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/player/internal/ap;->a(Lcom/google/android/youtube/player/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ar;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/ap;->a(Lcom/google/android/youtube/player/internal/ap;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ar;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/ap;->b(Lcom/google/android/youtube/player/internal/ap;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ar;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ar;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-static {v0}, Lcom/google/android/youtube/player/internal/ap;->a(Lcom/google/android/youtube/player/internal/ap;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/player/internal/az;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/az;->a()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ar;->a:Lcom/google/android/youtube/player/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/ap;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/youtube/player/internal/as;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/as;->a()V

    goto :goto_0
.end method
