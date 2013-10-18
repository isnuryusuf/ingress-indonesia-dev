.class final Lcom/nianticproject/ingress/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/a/a;

.field private final b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/a/a;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nianticproject/ingress/a/c;->a:Lcom/nianticproject/ingress/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/nianticproject/ingress/a/a;->a(Lcom/nianticproject/ingress/a/a;)Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 81
    invoke-static {p1}, Lcom/nianticproject/ingress/a/a;->b(Lcom/nianticproject/ingress/a/a;)Landroid/media/SoundPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/a/c;->b:I

    .line 82
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 83
    invoke-static {p1}, Lcom/nianticproject/ingress/a/a;->c(Lcom/nianticproject/ingress/a/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/a/c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    return-void

    .line 85
    :catch_0
    move-exception v0

    new-instance v0, Lcom/nianticproject/ingress/common/b/b;

    invoke-direct {v0, p2}, Lcom/nianticproject/ingress/common/b/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/a/c;->c:Z

    .line 91
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/nianticproject/ingress/a/c;->c:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nianticproject/ingress/a/c;->b:I

    return v0
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/a/c;->c:Z

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/a/c;->a:Lcom/nianticproject/ingress/a/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/a/a;->b(Lcom/nianticproject/ingress/a/a;)Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/a/c;->b:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/a/c;->a:Lcom/nianticproject/ingress/a/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/a/a;->c(Lcom/nianticproject/ingress/a/a;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/a/c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method
