.class final Lcom/google/android/youtube/player/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/internal/az;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    iput-object p2, p0, Lcom/google/android/youtube/player/l;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    iget-object v1, p0, Lcom/google/android/youtube/player/l;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Lcom/google/android/youtube/player/YouTubePlayerView;Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/e;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->c(Lcom/google/android/youtube/player/YouTubePlayerView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/aw;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->e(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/am;->a()V

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    iget-object v1, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->e(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    iget-object v1, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->e(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    iget-object v1, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->f(Lcom/google/android/youtube/player/YouTubePlayerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->g(Lcom/google/android/youtube/player/YouTubePlayerView;)Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->h(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/aw;

    iget-object v0, p0, Lcom/google/android/youtube/player/l;->b:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/internal/e;

    return-void
.end method
