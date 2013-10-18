.class final Lcom/nianticproject/ingress/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/a/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/nianticproject/ingress/a/f;->a:Lcom/nianticproject/ingress/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 469
    sparse-switch p2, :sswitch_data_0

    .line 479
    const-string/jumbo v0, "UNKNOWN(%d)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_0
    const-string/jumbo v1, "#%d ??? onError: clip=%s what=%s extra=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/a/f;->a:Lcom/nianticproject/ingress/a/d;

    invoke-static {v3}, Lcom/nianticproject/ingress/a/d;->c(Lcom/nianticproject/ingress/a/d;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nianticproject/ingress/a/f;->a:Lcom/nianticproject/ingress/a/d;

    invoke-static {v3}, Lcom/nianticproject/ingress/a/d;->d(Lcom/nianticproject/ingress/a/d;)Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {}, Lcom/nianticproject/ingress/a/d;->f()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/nianticproject/ingress/a/f;->a:Lcom/nianticproject/ingress/a/d;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/a/d;->d()V

    .line 489
    iget-object v1, p0, Lcom/nianticproject/ingress/a/f;->a:Lcom/nianticproject/ingress/a/d;

    invoke-static {v1}, Lcom/nianticproject/ingress/a/d;->b(Lcom/nianticproject/ingress/a/d;)Lcom/nianticproject/ingress/common/c/bk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/nianticproject/ingress/a/f;->a:Lcom/nianticproject/ingress/a/d;

    invoke-static {v1}, Lcom/nianticproject/ingress/a/d;->b(Lcom/nianticproject/ingress/a/d;)Lcom/nianticproject/ingress/common/c/bk;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/common/c/bl;

    invoke-direct {v2, v0}, Lcom/nianticproject/ingress/common/c/bl;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/common/c/bk;->a(Lcom/nianticproject/ingress/common/c/bl;)V

    .line 492
    :cond_0
    return v4

    .line 471
    :sswitch_0
    const-string/jumbo v0, "MEDIA_ERROR_UNKNOWN"

    goto :goto_0

    .line 475
    :sswitch_1
    const-string/jumbo v0, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    .line 469
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
