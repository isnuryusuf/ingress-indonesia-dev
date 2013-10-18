.class final Lcom/google/android/youtube/player/internal/ax;
.super Lcom/google/android/youtube/player/internal/s;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/player/i;

.field final synthetic b:Lcom/google/android/youtube/player/internal/aw;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/player/internal/aw;Lcom/google/android/youtube/player/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/ax;->b:Lcom/google/android/youtube/player/internal/aw;

    iput-object p2, p0, Lcom/google/android/youtube/player/internal/ax;->a:Lcom/google/android/youtube/player/i;

    invoke-direct {p0}, Lcom/google/android/youtube/player/internal/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ax;->a:Lcom/google/android/youtube/player/i;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ax;->a:Lcom/google/android/youtube/player/i;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ax;->a:Lcom/google/android/youtube/player/i;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/google/android/youtube/player/g;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/g;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ax;->a:Lcom/google/android/youtube/player/i;

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/g;->m:Lcom/google/android/youtube/player/g;

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/g;->m:Lcom/google/android/youtube/player/g;

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ax;->a:Lcom/google/android/youtube/player/i;

    invoke-interface {v0}, Lcom/google/android/youtube/player/i;->a()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/ax;->a:Lcom/google/android/youtube/player/i;

    return-void
.end method
