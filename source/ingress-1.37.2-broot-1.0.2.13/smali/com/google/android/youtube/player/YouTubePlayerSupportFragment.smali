.class public Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/google/android/youtube/player/j;


# instance fields
.field private final a:Lcom/google/android/youtube/player/k;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/google/android/youtube/player/YouTubePlayerView;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/youtube/player/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/youtube/player/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/player/k;-><init>(Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;B)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->a:Lcom/google/android/youtube/player/k;

    return-void
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/h;

    iget-object v5, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/app/Activity;Lcom/google/android/youtube/player/j;Ljava/lang/String;Lcom/google/android/youtube/player/h;Landroid/os/Bundle;)V

    iput-object v6, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    iput-object v6, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/h;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->a:Lcom/google/android/youtube/player/k;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/youtube/player/o;)V

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/youtube/player/h;)V
    .locals 1

    const-string/jumbo v0, "Developer key cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->e:Lcom/google/android/youtube/player/h;

    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->c()V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->e()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "YouTubePlayerSupportFragment.KEY_PLAYER_VIEW_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->b:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    return-void
.end method

.method public final q()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->q()V

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->c()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r()V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerSupportFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Z)V

    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
