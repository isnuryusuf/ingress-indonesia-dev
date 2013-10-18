.class public final Lcom/nianticproject/ingress/multiphotos/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/multiphotos/f;


# instance fields
.field private final a:Landroid/support/v4/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/c",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x400

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "maxSizeButes should be at least 1024 bytes"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 38
    div-long v0, p1, v2

    long-to-int v0, v0

    .line 39
    new-instance v1, Lcom/nianticproject/ingress/multiphotos/e;

    invoke-direct {v1, p0, v0}, Lcom/nianticproject/ingress/multiphotos/e;-><init>(Lcom/nianticproject/ingress/multiphotos/d;I)V

    iput-object v1, p0, Lcom/nianticproject/ingress/multiphotos/d;->a:Landroid/support/v4/c/c;

    .line 45
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Key must never be empty or null!"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/d;->a:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/d;->a:Landroid/support/v4/c/c;

    invoke-virtual {v0}, Landroid/support/v4/c/c;->a()V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Key must never be empty or null!"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 50
    const-string/jumbo v0, "Bitmap must never be null!"

    invoke-static {p2, v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/d;->a:Landroid/support/v4/c/c;

    monitor-enter v1

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/multiphotos/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/d;->a:Landroid/support/v4/c/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/c/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
